using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.Security;
using Transbank.Common;
using Transbank.Webpay.Common;
using Transbank.Webpay.WebpayPlus;

namespace Web.cursos
{
    public partial class Finalizar : System.Web.UI.Page
    {
        private readonly Dictionary<string, string> description = new Dictionary<string, string>
            {
                { "VD", "Débito" },
                { "VN", "Crédito" },
                { "VC", "Crédito" },
                { "SI", "Crédito" },
                { "S2", "Crédito" },
                { "NC", "Crédito" },
            };


        public void Reintento()
        {
            HttpCookie cookie = Request.Cookies["SAM_BUY_ORDER"];
            FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(cookie.Value);
            int nivel = int.Parse(ticket.UserData.ToString());

            Ncotizacion ncotizacion = new Ncotizacion();
            DataTable data = ncotizacion.RecuperarCotizacion(nivel);
            string link = string.Empty;

            if (data.Rows.Count > 0)
            {
                string curso = data.Rows[0]["curso"].ToString();
                string modalidad = data.Rows[0]["cursoTipo"].ToString().ToLower();
                string sede = data.Rows[0]["sede"].ToString();
                string cantidad = data.Rows[0]["cantidad"].ToString().ToLower();
                string alumno = data.Rows[0]["alumnoID"].ToString().ToLower();
                string apoderado = data.Rows[0]["apoderadoID"].ToString().ToLower();

                if(modalidad == "Summer School")
                {
                    modalidad = "summer";
                }


                switch (curso)
                {
                    case "adultos":
                        link = "/cursos/adults/ShopCart.aspx?tipo=" + modalidad + "&sede=" + sede + "&cantidad=" + cantidad + "&alum=" + alumno + "&coti=" + nivel.ToString();
                        break;
                    case "adolescentes":
                        link = "/cursos/teen/ShopCart.aspx?tipo=" + modalidad + "&sede=" + sede + "&cantidad=" + cantidad + "&alum=" + alumno + "&coti=" + nivel.ToString();
                        break;
                    default:
                        break;
                }
            }

            Response.Redirect(link);
        }


        public void InfoCompra()
        {
            int coti = int.Parse(LabelBuyOrder.Text);
            Ncotizacion ncotizacion = new Ncotizacion();
            DataTable data = ncotizacion.RecuperarCotizacion(coti);
            string link = string.Empty;

            if (data.Rows.Count > 0)
            {
                LabelCurso.Text = data.Rows[0]["curso"].ToString();
                LabelTipo.Text = data.Rows[0]["cursoTipo"].ToString().ToLower();
                LabelSede.Text = data.Rows[0]["sede"].ToString();
                LabelCantidad.Text = data.Rows[0]["cantidad"].ToString().ToLower();
                LabelRun.Text = data.Rows[0]["alumnoID"].ToString().ToLower();
                LabelMail.Text = data.Rows[0]["Email"].ToString().ToLower();

                int leadID = int.Parse(data.Rows[0]["idLead"].ToString().ToLower());

                if (leadID > 14)
                {
                    Nlead nlead = new Nlead();
                    nlead.EstadoUpdate(leadID, 6);
                }
            }
        }

        public void TransbankInfo(string token)
        {
            if (!token.Equals("error"))
            {
                var tx = new Transaction(new Options("597032360084", "1947052d36f3ef833095e4bbb714f60f", WebpayIntegrationType.Live));
                var response = tx.Commit(token);

                //var tx = new Transaction(new Options(IntegrationCommerceCodes.WEBPAY_PLUS, IntegrationApiKeys.WEBPAY, WebpayIntegrationType.Test));
                //var response = tx.Commit(token);

                int.TryParse(response.ResponseCode.ToString(), out int varResponseCode);

                if (varResponseCode == 0)
                {
                    div_ok.Visible = true;
                    div_error.Visible = false;

                    string varVci = response.Vci;
                    string varAmount = response.Amount.ToString();
                    // string varStatus = response.Status;
                    string varBuyOrder = response.BuyOrder;
                    string varSessionId = response.SessionId;
                    CardDetail varCardDetail = response.CardDetail;
                    string varCardNumber = varCardDetail.CardNumber;
                    string varAccountingDate = response.AccountingDate;
                    DateTime.TryParse(response.TransactionDate.ToString(), out DateTime varTransactionDate);
                    string varAuthorizationCode = response.AuthorizationCode;
                    string varPaymentTypeCode = response.PaymentTypeCode;
                    string descripcionPaymentTypeCode = description[varPaymentTypeCode];
                    // string tipoCuota = description2[varPaymentTypeCode];
                    //string varEstado = codes[varResponseCode.ToString()];
                    // int.TryParse(response.InstallmentsAmount.ToString(), out int varInstallmentsAmount);
                    string varInstallmentsNumber = response.InstallmentsNumber.ToString();
                    string varDate = response.TransactionDate.ToString();
                    DateTime fechaPago = DateTime.Parse(varDate);

                    LabelBuyOrder.Text = varBuyOrder;
                    LabeldescripcionPaymentTypeCode.Text = descripcionPaymentTypeCode;
                    LabelAuthorizationCode.Text = varAuthorizationCode;
                    LabelAmount.Text = int.Parse(varAmount).ToString("n0");
                    LabelInstallmentsNumber.Text = varInstallmentsNumber;

                    InfoCompra();

                    Mails mails = new Mails();
                    mails.SendEmailPago(LabelMail.Text, varBuyOrder, fechaPago.ToString("dd-MM-yyyy"), descripcionPaymentTypeCode, varAuthorizationCode, int.Parse(varAmount).ToString("n0").ToString(), varCardNumber);

                }
                else
                {
                    div_ok.Visible = false;
                    div_error.Visible = true;
                }
            }
            else
            {
                div_ok.Visible = false;
                div_error.Visible = true;
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string token = Convert.ToString(Request["token_ws"]);
                TransbankInfo(token);
            }
        }

        protected void LinkButtonVolverIntentar_Click(object sender, EventArgs e)
        {
            Reintento();
        }

        protected void LinkButtonContinuar_Click(object sender, EventArgs e)
        {         
            string link = "https://alumnos.sam.norteamericano.cl/";          
            Response.Redirect(link);
        }
    }
}