using Datos;
using System.Data;

namespace Negocio
{
    public class Ntransbank
    {
        private readonly Transbank infoTbk = new Transbank();

        public DataTable Buscar(string token)
        {
            return infoTbk.BuscarInfoTbk(token);
        }

        public string GrabarVoucher(string token, string accountingDate, string buyOrder, string cardDetailcardNumber, string cardDetailcardExpirationDate,
           string detailOutputAuthorizationCode, string detailOutputPaymentTypeCode, string detailOutputResponseCode, string detailOutputSharesNumber, string detailOutputAmount,
           string detailOutputcommerceCode, string detailOutputBuyOrder, string sessionId, string transactionDate, string VCI)
        {
            return infoTbk.GrabarVoucher(token, accountingDate, buyOrder, cardDetailcardNumber, cardDetailcardExpirationDate, detailOutputAuthorizationCode,
                detailOutputPaymentTypeCode, detailOutputResponseCode, detailOutputSharesNumber, detailOutputAmount, detailOutputcommerceCode, detailOutputBuyOrder,
                sessionId, transactionDate, VCI);
        }
    }
}
