using MySql.Data.MySqlClient;
using System.Data;


namespace Datos
{
    public class Contrato
    {
        private readonly Conexion Conexion = new Conexion();
        private MySqlCommand Comando;
        private MySqlDataAdapter Adaptador;
        private MySqlDataReader Leer;


        public string Ingresar(int cotizacionID, int boletaCKT, string fechaContrato, int boletaID, int vendedorID)
        {
            string resultado = string.Empty;
            try
            {
                Comando = new MySqlCommand("sige_sam_V3.IngresarContrato", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@cotizacion", cotizacionID);
                Comando.Parameters.AddWithValue("@boletaCKT", boletaCKT);
                Comando.Parameters.AddWithValue("@fecha", fechaContrato);
                Comando.Parameters.AddWithValue("@boleta", boletaID);
                Comando.Parameters.AddWithValue("@vendedor", vendedorID);
                Leer = Comando.ExecuteReader();
                if (Leer.Read())
                {
                    resultado = Leer[0].ToString();
                }

                Conexion.CerrarConnectionMysql();
                return resultado;
            }
            catch (MySqlException ex)
            {
                Conexion.CerrarConnectionMysql();
                return "Error: " + ex.Message;
            }

        }

        public string IngresarDetalle(int contratoID, int empresaID, string alumnoID, int codCurso, string userID, int tipoRegistro, int tipoAlumno, string logMensaje)
        {
            string resultado;

            try
            {
                Comando = new MySqlCommand("sam.IngresarContratoAnexo", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@contrato", contratoID);
                Comando.Parameters.AddWithValue("@contratoEmpresa", empresaID);
                Comando.Parameters.AddWithValue("@alumnoID", alumnoID);
                Comando.Parameters.AddWithValue("@cursoID", codCurso);
                Comando.Parameters.AddWithValue("@vendedorID", userID);
                Comando.Parameters.AddWithValue("@tipoRegistro", tipoRegistro);
                Comando.Parameters.AddWithValue("@tipoAlumno", tipoAlumno);
                Comando.Parameters.AddWithValue("@mensajeLog", logMensaje);
                Leer = Comando.ExecuteReader();
                if (Leer.Read())
                {
                    resultado = Leer[0].ToString();
                }
                else
                {
                    resultado = "Sin Anexo";
                }
            }
            catch (MySqlException ex)
            {
                Conexion.CerrarConnectionMysql();
                resultado = ex.Message;
            }

            return resultado;
        }

        public string IngresarDetalleSinLog(int idContrato, int idEmpresa, string idAlumno, string idCurso, string fecha, int vendedor, int registroAcademico, int alumnoTipo)
        {
            string resultado = string.Empty;
            try
            {
                Comando = new MySqlCommand("sige_sam_V3.IngresarContratoDetalle", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@contrato", idContrato);
                Comando.Parameters.AddWithValue("@contratoEmpresa", idEmpresa);
                Comando.Parameters.AddWithValue("@alumnoID", idAlumno);
                Comando.Parameters.AddWithValue("@cursoID", idCurso);
                Comando.Parameters.AddWithValue("@fecha", fecha);
                Comando.Parameters.AddWithValue("@vendedorID", vendedor);
                Comando.Parameters.AddWithValue("@tipoRegistro", registroAcademico);
                Comando.Parameters.AddWithValue("@tipoAlumno", alumnoTipo);
                Leer = Comando.ExecuteReader();
                if (Leer.Read())
                {
                    resultado = Leer[0].ToString();
                }

                Conexion.CerrarConnectionMysql();
                return resultado;
            }
            catch (MySqlException ex)
            {
                Conexion.CerrarConnectionMysql();
                return "Error: " + ex.Message;
            }

        }


        public DataTable PdfContratoDetalle(int contrato, int detalle)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sige_sam_V3.PDFContratoDetalle", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@contrato", contrato);
                Comando.Parameters.AddWithValue("@detalle", detalle);

                Adaptador = new MySqlDataAdapter(Comando);
                Adaptador.Fill(tabla);
                Conexion.CerrarConnectionMysql();
                return tabla;

            }
            catch (MySqlException)
            {
                Conexion.CerrarConnectionMysql();
                return tabla;
            }
        }

        public DataTable PdfContrato(int contrato)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sige_sam_V3.PDFContrato", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@contrato", contrato);

                Adaptador = new MySqlDataAdapter(Comando);
                Adaptador.Fill(tabla);
                Conexion.CerrarConnectionMysql();
                return tabla;

            }
            catch (MySqlException)
            {
                Conexion.CerrarConnectionMysql();
                return tabla;
            }
        }

        public DataTable PdfContratoJornadas(int contrato)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sige_sam_V3.PDFContratoJornadas", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@contrato", contrato);

                Adaptador = new MySqlDataAdapter(Comando);
                Adaptador.Fill(tabla);
                Conexion.CerrarConnectionMysql();
                return tabla;

            }
            catch (MySqlException)
            {
                Conexion.CerrarConnectionMysql();
                return tabla;
            }
        }

        public DataTable PdfContratoProgramasCursos(int contrato)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sige_sam_V3.PDFContratoProgramasCursos", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@contrato", contrato);

                Adaptador = new MySqlDataAdapter(Comando);
                Adaptador.Fill(tabla);
                Conexion.CerrarConnectionMysql();
                return tabla;

            }
            catch (MySqlException)
            {
                Conexion.CerrarConnectionMysql();
                return tabla;
            }
        }

        public DataTable PdfContratoSedes(int contrato)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sige_sam_V3.PDFContratoSedes", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@contrato", contrato);

                Adaptador = new MySqlDataAdapter(Comando);
                Adaptador.Fill(tabla);
                Conexion.CerrarConnectionMysql();
                return tabla;

            }
            catch (MySqlException)
            {
                Conexion.CerrarConnectionMysql();
                return tabla;
            }
        }

        public DataTable InfoBienvenida(int contrato)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sige_sam_V3.BuscarInfoContrato", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@contratoID", contrato);

                Adaptador = new MySqlDataAdapter(Comando);
                Adaptador.Fill(tabla);
                Conexion.CerrarConnectionMysql();
                return tabla;

            }
            catch (MySqlException)
            {
                Conexion.CerrarConnectionMysql();
                return tabla;
            }
        }

        public DataTable BuscarAnexosContrato( string contratoid)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam.BuscarCursosxContrato", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };          
                Comando.Parameters.AddWithValue("@contratoID", contratoid);
                Adaptador = new MySqlDataAdapter(Comando);
                Adaptador.Fill(tabla);
                Conexion.CerrarConnectionMysql();
                return tabla;

            }
            catch (MySqlException)
            {
                Conexion.CerrarConnectionMysql();
                return tabla;
            }
        }

    }
}
