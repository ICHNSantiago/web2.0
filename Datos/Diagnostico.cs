using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Diagnostico
    {
        private readonly Conexion Conexion = new Conexion();
        private MySqlCommand Comando;
        private MySqlDataAdapter Adaptador;
        private MySqlDataReader Leer;

        public DataTable BuscarAdultos(string alumnoID)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam_diagnostico.BuscarDiagnosticoAdultos", Conexion.AbrirConnectionMySqlSam())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@AlumnoID", alumnoID);
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

        public DataTable BuscarTeens(string alumnoID)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam_diagnostico.BuscarDiagnosticoTeens", Conexion.AbrirConnectionMySqlSam())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@AlumnoID", alumnoID);
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

        public DataTable BuscarKids(string alumnoID)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam_diagnostico.BuscarDiagnosticoKids", Conexion.AbrirConnectionMySqlSam())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@AlumnoID", alumnoID);
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

        public DataTable PruebaAdultos(int nivel, int test)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam_diagnostico.CargarTest", Conexion.AbrirConnectionMySqlSam())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@cursoNivel", nivel);
                Comando.Parameters.AddWithValue("@testNivel", test);
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

        public DataTable PruebaTeens(int nivel, int test)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam_diagnostico.CargarTestTeens", Conexion.AbrirConnectionMySqlSam())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@cursoNivel", nivel);
                Comando.Parameters.AddWithValue("@testNivel", test);
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

        public DataTable PruebaKids(int nivel, int test)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam_diagnostico.CargarTestKids", Conexion.AbrirConnectionMySqlSam())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@cursoNivel", nivel);
                Comando.Parameters.AddWithValue("@testNivel", test);
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

        public DataTable PruebaRespuestaAdultos(int nivel, int test)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam_diagnostico.CargarTestRespuestas", Conexion.AbrirConnectionMySqlSam())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@cursoNivel", nivel);
                Comando.Parameters.AddWithValue("@testNivel", test);
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

        public DataTable PruebaRespuestaTeens(int nivel, int test)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam_diagnostico.CargarTestRespuestasTeens", Conexion.AbrirConnectionMySqlSam())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@cursoNivel", nivel);
                Comando.Parameters.AddWithValue("@testNivel", test);
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

        public DataTable PruebaRespuestaKids(int nivel, int test)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam_diagnostico.CargarTestRespuestasKids", Conexion.AbrirConnectionMySqlSam())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@cursoNivel", nivel);
                Comando.Parameters.AddWithValue("@testNivel", test);
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

        public string IngresarRespuestasAdultos(int diagnosticoID, int testID, int cursoID, int preguntaID, string respuesta, DateTime fecha)
        {
            string resultado = string.Empty;
            try
            {
                Comando = new MySqlCommand("sam_diagnostico.GrabaRespuestaAdultos", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@idDiagnostico", diagnosticoID);
                Comando.Parameters.AddWithValue("@testTipo", testID);
                Comando.Parameters.AddWithValue("@idCurso", cursoID);
                Comando.Parameters.AddWithValue("@pregunta", preguntaID);
                Comando.Parameters.AddWithValue("@respuestaPregunta", respuesta);
                Comando.Parameters.AddWithValue("@fechaIngreso", fecha);
                Comando.ExecuteReader();
                Conexion.CerrarConnectionMysql();
                return "ok";
            }
            catch (MySqlException ex)
            {
                Conexion.CerrarConnectionMysql();
                return "Error: " + ex.Message;
            }
        }

        public string IngresarRespuestasTeens(int diagnosticoID, int testID, int cursoID, int preguntaID, string respuesta, DateTime fecha)
        {           
            try
            {
                Comando = new MySqlCommand("sam_diagnostico.GrabaRespuestaTeens", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@idDiagnostico", diagnosticoID);
                Comando.Parameters.AddWithValue("@testTipo", testID);
                Comando.Parameters.AddWithValue("@idCurso", cursoID);
                Comando.Parameters.AddWithValue("@pregunta", preguntaID);
                Comando.Parameters.AddWithValue("@respuestaPregunta", respuesta);
                Comando.Parameters.AddWithValue("@fechaIngreso", fecha);
                Comando.ExecuteReader();
                Conexion.CerrarConnectionMysql();
                return "ok";
            }
            catch (MySqlException ex)
            {
                Conexion.CerrarConnectionMysql();
                return "Error: " + ex.Message;
            }
        }

        public string IngresarRespuestasKids(int diagnosticoID, int testID, int cursoID, int preguntaID, string respuesta, DateTime fecha)
        {
            try
            {
                Comando = new MySqlCommand("sam_diagnostico.GrabaRespuestaKids", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@idDiagnostico", diagnosticoID);
                Comando.Parameters.AddWithValue("@testTipo", testID);
                Comando.Parameters.AddWithValue("@idCurso", cursoID);
                Comando.Parameters.AddWithValue("@pregunta", preguntaID);
                Comando.Parameters.AddWithValue("@respuestaPregunta", respuesta);
                Comando.Parameters.AddWithValue("@fechaIngreso", fecha);
                Comando.ExecuteReader();
                Conexion.CerrarConnectionMysql();
                return "ok";
            }
            catch (MySqlException ex)
            {
                Conexion.CerrarConnectionMysql();
                return "Error: " + ex.Message;
            }
        }

        public DataTable NivelNombre(int idCurso)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam_diagnostico.NivelTestNombre", Conexion.AbrirConnectionMySqlSam())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@cursoID", idCurso);
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

        public string ActualizarEstado(int diagnosticoID, int nivelID, string estado, string estadoTest)
        {
            try
            {
                Comando = new MySqlCommand("sam_diagnostico.ActualizarEstadoDiagnostico", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@idDiagnostico", diagnosticoID);
                Comando.Parameters.AddWithValue("@cursoID", nivelID);
                Comando.Parameters.AddWithValue("@estadoTest", estado);
                Comando.Parameters.AddWithValue("@tipo", estadoTest);

                Comando.ExecuteReader();
                Conexion.CerrarConnectionMysql();
                return "ok";
            }
            catch (MySqlException ex)
            {
                Conexion.CerrarConnectionMysql();
                return "Error: " + ex.Message;
            }
        }

        public DataTable ValidarAlumno(string alumnoID)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam.BuscarAlumno", Conexion.AbrirConnectionMySqlSam())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@alumnoID", alumnoID);
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


        public string Ingresar(string rut, int nivel, string usuario, int lead)
        {
            string resultado = string.Empty;
            try
            {
                Comando = new MySqlCommand("sige_sam_V3.CreaDiagnostico", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@alumnoID", rut);
                Comando.Parameters.AddWithValue("@cursoID", nivel);
                Comando.Parameters.AddWithValue("@usuarioID", usuario);
                Comando.Parameters.AddWithValue("@LeadID", lead);
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

    }
}
