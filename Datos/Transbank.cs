using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Transbank
    {
        private readonly Conexion Conexion = new Conexion();
        private MySqlCommand Comando;
        private MySqlDataAdapter Adaptador;

        public DataTable BuscarInfoTbk(string token)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("caja_tbk.BuscarInfoToken", Conexion.AbrirConnectionTBK())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@tokenId", token);
                Adaptador = new MySqlDataAdapter(Comando);
                Adaptador.Fill(tabla);
                Conexion.CerrarConnectionMysql();
                return tabla;

            }
            catch (Exception)
            {
                Conexion.CerrarConnectionMysql();
                return tabla;
                throw;
            }
        }

        public string GrabarVoucher(string token, string accountingDate, string buyOrder, string cardDetailcardNumber, string cardDetailcardExpirationDate,
            string detailOutputAuthorizationCode, string detailOutputPaymentTypeCode, string detailOutputResponseCode, string detailOutputSharesNumber, string detailOutputAmount,
            string detailOutputcommerceCode, string detailOutputBuyOrder, string sessionId, string transactionDate, string VCI)
        {

            try
            {
                Comando = new MySqlCommand("caja_tbk.GrabaVoucher", Conexion.AbrirConnectionTBK())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@token_id", token);
                Comando.Parameters.AddWithValue("@XaccountingDate", accountingDate);
                Comando.Parameters.AddWithValue("@XbuyOrder", buyOrder);
                Comando.Parameters.AddWithValue("@xcardDetailcardNumber", cardDetailcardNumber);
                Comando.Parameters.AddWithValue("@xcardDetailcardExpirationDate", cardDetailcardExpirationDate);
                Comando.Parameters.AddWithValue("@xdetailOutputAuthorizationCode", detailOutputAuthorizationCode);
                Comando.Parameters.AddWithValue("@xdetailOutputPaymentTypeCode", detailOutputPaymentTypeCode);
                Comando.Parameters.AddWithValue("@xdetailOutputResponseCode", detailOutputResponseCode);
                Comando.Parameters.AddWithValue("@xdetailOutputSharesNumber", detailOutputSharesNumber);
                Comando.Parameters.AddWithValue("@xdetailOutputAmount", detailOutputAmount);
                Comando.Parameters.AddWithValue("@xdetailOutputcommerceCode", detailOutputcommerceCode);
                Comando.Parameters.AddWithValue("@xdetailOutputBuyOrder", detailOutputBuyOrder);
                Comando.Parameters.AddWithValue("@xsessionId", sessionId);
                Comando.Parameters.AddWithValue("@xtransactionDate", transactionDate);
                Comando.Parameters.AddWithValue("@xVCI", VCI);
                Comando.ExecuteReader();
                Conexion.CerrarConnectionMysql();
                return "ok";


            }
            catch (Exception ex)
            {
                Conexion.CerrarConnectionMysql();
                return ex.Message;
            }
        }
    }
}
