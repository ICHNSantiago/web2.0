using Negocio;
using System;
using System.Collections.Generic;
using Transbank.Common;
using Transbank.Webpay.Common;
using Transbank.Webpay.WebpayPlus;

namespace Web.cursos
{
    public partial class Tbk : System.Web.UI.Page
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


        public string[] Transbank(string token)
        {
            var tx = new Transaction(new Options("597032360084", "1947052d36f3ef833095e4bbb714f60f", WebpayIntegrationType.Live));
            var response = tx.Commit(token);

            //var tx = new Transaction(new Options(IntegrationCommerceCodes.WEBPAY_PLUS, IntegrationApiKeys.WEBPAY, WebpayIntegrationType.Test));
            //var response = tx.Commit(token);

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

            int.TryParse(response.ResponseCode.ToString(), out int varResponseCode);
            //string varEstado = codes[varResponseCode.ToString()];

            // int.TryParse(response.InstallmentsAmount.ToString(), out int varInstallmentsAmount);
            string varInstallmentsNumber = response.InstallmentsNumber.ToString();
            // string varBalance = response.Balance.ToString();

            Ntransbank tbkIchn = new Ntransbank();
            tbkIchn.GrabarVoucher(token, varAccountingDate, varBuyOrder, varCardNumber, string.Empty, varAuthorizationCode, varPaymentTypeCode,
                varResponseCode.ToString(), varInstallmentsNumber, varAmount, string.Empty, varBuyOrder, varSessionId, varTransactionDate.ToString(), varVci);

            string[] respuestas = new string[10];
            respuestas[0] = varResponseCode.ToString();
            respuestas[1] = varBuyOrder;
            respuestas[2] = varInstallmentsNumber;
            respuestas[3] = varTransactionDate.ToString();
            respuestas[4] = "0";
            respuestas[5] = varAmount.ToString();
            respuestas[6] = "WEBPAY - Tarjeta " + varCardNumber;
            respuestas[7] = varAuthorizationCode;
            respuestas[8] = descripcionPaymentTypeCode;
            return respuestas;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Redirect("Finalizar.aspx");

            string token = Convert.ToString(Request["token_ws"]);

            if (!string.IsNullOrEmpty(token))
            {
                Transbank(token);
                Response.Redirect("Finalizar.aspx?token_ws=" + token);
            }
            else
            {
                Response.Redirect("Finalizar.aspx?token_ws=error");
            }
        }
    }
}