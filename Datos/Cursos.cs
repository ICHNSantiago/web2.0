using MySql.Data.MySqlClient;
using System.Data;

namespace Datos
{
    public class Cursos
    {
        private readonly Conexion Conexion = new Conexion();
        private MySqlCommand Comando;
        private MySqlDataAdapter Adaptador;
        private MySqlDataReader Leer;

        public DataTable BuscarHorarioNivelSede(int sede, int curso)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam.WEB_horarioSedeNivel", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@nivelID", curso);
                Comando.Parameters.AddWithValue("@sedeID", sede);

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

        public DataTable BuscarHorarioNivelTodasSedes(string tipoPorgrama)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam.WEB_horarioNivel", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };                
                Comando.Parameters.AddWithValue("@programa", tipoPorgrama);

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

        public DataTable BuscarHorarioNivel(int curso)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam.WEB_horarioPrograma", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@nivelID", curso);

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

        public DataTable BuscarTarifas(int programa)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam.BuscarCursoTarifa", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@progranaID", programa);

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

        public string BuscarTarifasV2(int programa)
        {
            string resultado = string.Empty;
            try
            {
                Comando = new MySqlCommand("sam.BuscarCursoTarifa", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@progranaID", programa);
                Leer = Comando.ExecuteReader();
                if (Leer.Read())
                {
                    resultado = Leer[1].ToString() + ";"+ Leer[3].ToString();
                }

                Conexion.CerrarConnectionMysql();
                return resultado;
            }
            catch (MySqlException)
            {
                Conexion.CerrarConnectionMysql();
                return resultado;
            }
        }

        public DataTable BuscarTarifasxPrograma(string programa)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam.BuscarCursoTarifaxPrograma", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@tipoPrograma", programa);

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


        public DataTable BuscarDescuentos(string programa)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam.BuscarCursoDesctoPrograma", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@tipoPrograma", programa);

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

        public string BuscarCalendarioAcademico(int year, int tipoPeriodo)
        {
            string resultado = string.Empty;

            try
            {
                Comando = new MySqlCommand("sam.BuscarCalendarioAcademico", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@yearSelect", year);
                Comando.Parameters.AddWithValue("@periodoTipoID", tipoPeriodo);
                Leer = Comando.ExecuteReader();
                if (Leer.Read())
                {
                    resultado = Leer[4].ToString();
                }

                Conexion.CerrarConnectionMysql();
                return resultado;
            }
            catch (MySqlException)
            {
                Conexion.CerrarConnectionMysql();
                return resultado;
            }
        }

        public DataTable BuscarHorario(int sede, int curso)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam.WEB_Horarios_ecommerce", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@cursoID", curso);
                Comando.Parameters.AddWithValue("@sedeID", sede);

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
