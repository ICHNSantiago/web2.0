using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class BlackFriday : System.Web.UI.Page
    {

        public void CargaTarifasAdultos()
        {
            Ncursos ncursos = new Ncursos();
            DataTable tarifa = ncursos.BuscarTarifasAdultos();

            int programa = 0;
            for (int i = 0; i < tarifa.Rows.Count; i++)
            {
                programa = int.Parse(tarifa.Rows[i]["programa"].ToString());

                switch (programa)
                {
                    case 5:
                        LabelTarifaAdultosRegular.Text = int.Parse(tarifa.Rows[i]["TarifaIndividual"].ToString()).ToString("n0");
                        LabelTarifaAdultosRegularOld.Text = LabelTarifaAdultosRegular.Text;
                        break;
                    case 6:
                        LabelTarifaAdultosintensivo.Text = int.Parse(tarifa.Rows[i]["TarifaIndividual"].ToString()).ToString("n0");
                        LabelTarifaAdultosintensivoOld.Text = LabelTarifaAdultosintensivo.Text;
                        break;
                    case 30:
                        LabelTarifaAdultosSummer.Text = int.Parse(tarifa.Rows[i]["TarifaIndividual"].ToString()).ToString("n0");
                        LabelTarifaAdultosSummerOld.Text = LabelTarifaAdultosSummer.Text;
                        break;
                    default:
                        break;
                }
            }

            DateTime date = DateTime.Now;

            int year = date.Year;
            int month = date.Month;

            if (month > 2)
            {
                year++;
            }

           
            DateTime termino = new DateTime(year, 2, 10);

            if (date < termino)
            {
                div_summer.Visible = true;
            }
            else
            {
                div_summer.Visible = false;
            }
        }

        public void CargaPromosAdultos()
        {
           

            Ncursos ncursos = new Ncursos();
            DataTable data = ncursos.BuscarPromoAdultos();

            int programa = 0;
            for (int i = 0; i < data.Rows.Count; i++)
            {
                programa = int.Parse(data.Rows[i]["Programa"].ToString());

                switch (programa)
                {
                    case 5:
                        div_descto_regular.Visible = true;
                        LabelDesctoRegular.Text = int.Parse(data.Rows[i]["Valor"].ToString()).ToString("n0");
                        decimal promo = decimal.Parse(LabelDesctoRegular.Text);
                        decimal tarifa = decimal.Parse(LabelTarifaAdultosRegular.Text.Replace(".", string.Empty));
                        decimal valor = tarifa - ((promo / 100) * tarifa);
                        LabelTarifaAdultosRegularDescto.Text = valor.ToString("n0");                      
                        row_sin_promo_regular.Visible = false;
                        break;
                    case 6:
                        div_descto_intensivo.Visible = true;
                        LabelDesctoIntensivo.Text = int.Parse(data.Rows[i]["Valor"].ToString()).ToString("n0");
                        promo = decimal.Parse(LabelDesctoIntensivo.Text);
                        tarifa = decimal.Parse(LabelTarifaAdultosintensivo.Text.Replace(".", string.Empty));
                        valor = tarifa - ((promo / 100) * tarifa);
                        LabelTarifaAdultosintensivoDescto.Text = valor.ToString("n0");
                       
                        row_sin_promo_intensivo.Visible = false;
                        break;
                    case 30:
                        div_descto_summer.Visible = true;
                        LabelDesctoSummer.Text = int.Parse(data.Rows[i]["Valor"].ToString()).ToString("n0");
                        promo = decimal.Parse(LabelDesctoSummer.Text);
                        tarifa = decimal.Parse(LabelTarifaAdultosSummer.Text.Replace(".", string.Empty));
                        valor = tarifa - ((promo / 100) * tarifa);
                        LabelTarifaAdultosSummerDescto.Text = valor.ToString("n0");
                       
                        row_sin_promo_summer.Visible = false;
                        break;
                    default:
                        break;
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                CargaTarifasAdultos();
                CargaPromosAdultos();
            }
        }
    }
}