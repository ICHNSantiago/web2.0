using MySql.Data.MySqlClient;
using System.Data;


namespace Datos
{
    public class Alumnos
    {
        private readonly Conexion Conexion = new Conexion();
        private MySqlCommand Comando;
        private MySqlDataAdapter Adaptador;
        
        public DataTable BuscarBloqueo(string idAlumno)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sige_sam_V3.BuscarBloqueoFinazas", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@idCliente", idAlumno);
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

        public DataTable BuscarAntiguedadv2(string idAlumno)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam.BuscarAlumnoAntiguedad", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@alumnoId", idAlumno);
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
