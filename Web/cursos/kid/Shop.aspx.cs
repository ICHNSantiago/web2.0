using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web.cursos.kid
{
    public partial class Shop : System.Web.UI.Page
    {
        public bool HorarioSedes()
        {
            Ncursos ncursos = new Ncursos();
            DataTable data = ncursos.BuscarHorarioKid();

            if (data.Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public void CargaTarifas()
        {
            Ncursos ncursos = new Ncursos();
            DataTable tarifa = ncursos.BuscarTarifasKids();

            int programa = 0;
            for (int i = 0; i < tarifa.Rows.Count; i++)
            {
                programa = int.Parse(tarifa.Rows[i]["programa"].ToString());

                switch (programa)
                {
                    case 2:
                        LabelTarifaRegular.Text = int.Parse(tarifa.Rows[i]["TarifaIndividual"].ToString()).ToString("n0");
                        LabelTarifaRegularOld.Text = LabelTarifaRegular.Text;
                      
                        LabelTarifaSummer.Text = int.Parse(tarifa.Rows[i]["TarifaIndividual"].ToString()).ToString("n0");
                        LabelTarifaSummerOld.Text = LabelTarifaSummer.Text;
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

            LabelYearSummer.Text = year.ToString();

            DateTime termino = new DateTime(year, 2, 10);

            //if (date < termino)
            //{
            //    div_summer.Visible = true;
            //}
            //else
            //{
            //    div_summer.Visible = false;
            //}
        }

        public void CargaPromos()
        {
            row_con_promo_summer.Visible = false;
            row_con_promo_regular.Visible = false;

            Ncursos ncursos = new Ncursos();
            DataTable data = ncursos.BuscarPromoKids();

            int programa = 0;
            for (int i = 0; i < data.Rows.Count; i++)
            {
                programa = int.Parse(data.Rows[i]["Programa"].ToString());

                switch (programa)
                {
                    case 2:
                        div_descto_regular.Visible = true;
                        LabelDesctoRegular.Text = int.Parse(data.Rows[i]["Valor"].ToString()).ToString("n0");
                        decimal promo = decimal.Parse(LabelDesctoRegular.Text);
                        decimal tarifa = decimal.Parse(LabelTarifaRegular.Text.Replace(".", string.Empty));
                        decimal valor = tarifa - ((promo / 100) * tarifa);
                        LabelTarifaRegularDescto.Text = valor.ToString("n0");
                        row_con_promo_regular.Visible = true;
                        row_sin_promo_regular.Visible = false;
                        break;
                    case 31:
                        div_descto_summer.Visible = true;
                        LabelDesctoSummer.Text = int.Parse(data.Rows[i]["Valor"].ToString()).ToString("n0");
                        promo = decimal.Parse(LabelDesctoSummer.Text);
                        tarifa = decimal.Parse(LabelTarifaSummer.Text.Replace(".", string.Empty));
                        valor = tarifa - ((promo / 100) * tarifa);
                        LabelTarifaSummerDescto.Text = valor.ToString("n0");
                        row_con_promo_summer.Visible = true;
                        row_sin_promo_summer.Visible = false;
                        break;
                    default:
                        break;
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (HorarioSedes())
                {
                    CargaTarifas();
                    CargaPromos();
                }
                else
                {
                    Response.Redirect("index.aspx");
                }
            }
        }
    }
}