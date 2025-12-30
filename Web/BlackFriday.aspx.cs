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
                        div_descto_Adultos_regular.Visible = true;
                        LabelAdultosDesctoRegular.Text = int.Parse(data.Rows[i]["Valor"].ToString()).ToString("n0");
                        decimal promo = decimal.Parse(LabelAdultosDesctoRegular.Text);
                        decimal tarifa = decimal.Parse(LabelTarifaAdultosRegular.Text.Replace(".", string.Empty));
                        decimal valor = tarifa - ((promo / 100) * tarifa);
                        LabelTarifaAdultosRegularDescto.Text = valor.ToString("n0");                      
                        row_sin_promo_regular_Adultos.Visible = false;
                        break;
                    case 6:
                        div_descto_intensivo_Adultos.Visible = true;
                        LabelDesctoIntensivoAdultos.Text = int.Parse(data.Rows[i]["Valor"].ToString()).ToString("n0");
                        promo = decimal.Parse(LabelDesctoIntensivoAdultos.Text);
                        tarifa = decimal.Parse(LabelTarifaAdultosintensivo.Text.Replace(".", string.Empty));
                        valor = tarifa - ((promo / 100) * tarifa);
                        LabelTarifaAdultosintensivoDescto.Text = valor.ToString("n0");                       
                        row_sin_promo_intensivo_Adultos.Visible = false;
                        break;
                    case 30:
                        div_descto_summer_Adultos.Visible = true;
                        LabelDesctoSummerAdultos.Text = int.Parse(data.Rows[i]["Valor"].ToString()).ToString("n0");
                        promo = decimal.Parse(LabelDesctoSummerAdultos.Text);
                        tarifa = decimal.Parse(LabelTarifaAdultosSummer.Text.Replace(".", string.Empty));
                        valor = tarifa - ((promo / 100) * tarifa);
                        LabelTarifaAdultosSummerDescto.Text = valor.ToString("n0");                       
                        row_sin_promo_summer_Adultos.Visible = false;
                        break;
                    default:
                        break;
                }
            }
        }

        public void CargaTarifasTeens()
        {
            Ncursos ncursos = new Ncursos();
            DataTable tarifa = ncursos.BuscarTarifasTeens();

            int programa = 0;
            for (int i = 0; i < tarifa.Rows.Count; i++)
            {
                programa = int.Parse(tarifa.Rows[i]["programa"].ToString());

                switch (programa)
                {
                    case 3:
                        LabelTarifaTeensRegular.Text = int.Parse(tarifa.Rows[i]["TarifaIndividual"].ToString()).ToString("n0");
                        LabelTarifaTeensRegularOld.Text = LabelTarifaTeensRegular.Text;
                        break;                  
                    case 41:
                        LabelTarifaTeensSummer.Text = int.Parse(tarifa.Rows[i]["TarifaIndividual"].ToString()).ToString("n0");
                        LabelTarifaTeensSummerOld.Text = LabelTarifaTeensSummer.Text;
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
                div_summer_teens.Visible = true;
            }
            else
            {
                div_summer_teens.Visible = false;
            }
        }

        public void CargaPromosTeens()
        {
            Ncursos ncursos = new Ncursos();
            DataTable data = ncursos.BuscarPromoTeens();

            int programa = 0;
            for (int i = 0; i < data.Rows.Count; i++)
            {
                programa = int.Parse(data.Rows[i]["Programa"].ToString());

                switch (programa)
                {
                    case 3:
                        div_descto_Teens_regular.Visible = true;
                        LabelTeensDesctoRegular.Text = int.Parse(data.Rows[i]["Valor"].ToString()).ToString("n0");
                        decimal promo = decimal.Parse(LabelTeensDesctoRegular.Text);
                        decimal tarifa = decimal.Parse(LabelTarifaTeensRegular.Text.Replace(".", string.Empty));
                        decimal valor = tarifa - ((promo / 100) * tarifa);
                        LabelTarifaTeensRegularDescto.Text = valor.ToString("n0");
                        row_sin_promo_regular_Teens.Visible = false;
                        break;                 
                    case 41:
                        div_descto_summer_Teens.Visible = true;
                        LabelDesctoSummerTeens.Text = int.Parse(data.Rows[i]["Valor"].ToString()).ToString("n0");
                        promo = decimal.Parse(LabelDesctoSummerTeens.Text);
                        tarifa = decimal.Parse(LabelTarifaTeensSummer.Text.Replace(".", string.Empty));
                        valor = tarifa - ((promo / 100) * tarifa);
                        LabelTarifaTeensSummerDescto.Text = valor.ToString("n0");
                        row_sin_promo_summer_Teens.Visible = false;
                        break;
                    default:
                        break;
                }
            }
        }

        public void CargaPromosKids()
        {
            Ncursos ncursos = new Ncursos();
            DataTable data = ncursos.BuscarPromoKids();

            int programa = 0;
            for (int i = 0; i < data.Rows.Count; i++)
            {
                programa = int.Parse(data.Rows[i]["Programa"].ToString());

                switch (programa)
                {
                    case 2:
                        div_descto_Kids_regular.Visible = true;
                        LabelKidsDesctoRegular.Text = int.Parse(data.Rows[i]["Valor"].ToString()).ToString("n0");
                        decimal promo = decimal.Parse(LabelKidsDesctoRegular.Text);
                        decimal tarifa = decimal.Parse(LabelTarifaKidsRegular.Text.Replace(".", string.Empty));
                        decimal valor = tarifa - ((promo / 100) * tarifa);
                        LabelTarifaKidsRegularDescto.Text = valor.ToString("n0");
                        row_sin_promo_regular_Kids.Visible = false;
                        break;
                    case 31:
                        div_descto_summer_Kids.Visible = true;
                        LabelDesctoSummerKids.Text = int.Parse(data.Rows[i]["Valor"].ToString()).ToString("n0");
                        promo = decimal.Parse(LabelDesctoSummerKids.Text);
                        tarifa = decimal.Parse(LabelTarifaKidsSummer.Text.Replace(".", string.Empty));
                        valor = tarifa - ((promo / 100) * tarifa);
                        LabelTarifaKidsSummerDescto.Text = valor.ToString("n0");
                        row_sin_promo_summer_Kids.Visible = false;
                        break;
                    default:
                        break;
                }
            }
        }

        public void CargaTarifasKids()
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
                        LabelTarifaKidsRegular.Text = int.Parse(tarifa.Rows[i]["TarifaIndividual"].ToString()).ToString("n0");
                        LabelTarifaKidsRegularOld.Text = LabelTarifaKidsRegular.Text;
                        break;
                    case 31:
                        LabelTarifaKidsSummer.Text = int.Parse(tarifa.Rows[i]["TarifaIndividual"].ToString()).ToString("n0");
                        LabelTarifaKidsSummerOld.Text = LabelTarifaKidsSummer.Text;
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
                div_summer_Kids.Visible = true;
            }
            else
            {
                div_summer_Kids.Visible = false;
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {

            Response.Redirect("index.aspx");

            if (!IsPostBack)
            {

                //CargaTarifasAdultos();
                //CargaPromosAdultos();
                //CargaTarifasTeens();
                //CargaPromosTeens();
                //CargaTarifasKids();
                //CargaPromosKids();
            }
        }
    }
}