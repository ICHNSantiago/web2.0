using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Lead
    {
        private readonly Conexion conexion = new Conexion();
        private MySqlCommand comando;
        private MySqlDataAdapter adaptador;

        public string Ingresar(string nombre, string mail, string fono, string producto, int contacto, int usuarioID)
        {
            try
            {
                comando = new MySqlCommand("sige_sam_V3.GrabaLead", conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure,
                };
                comando.Parameters.AddWithValue("@NombreLead", nombre);
                comando.Parameters.AddWithValue("@mailLead", mail);
                comando.Parameters.AddWithValue("@telefonoLead", fono);
                comando.Parameters.AddWithValue("@productoLead", producto);
                comando.Parameters.AddWithValue("@contactoLead", contacto);
                comando.Parameters.AddWithValue("@ejecutivoID", usuarioID);
                comando.ExecuteReader();
                conexion.CerrarConnectionMysql();
                return "ok";
            }
            catch (MySqlException ex)
            {
                conexion.CerrarConnectionMysql();
                return "Error: " + ex.Message;
            }

        }

        public DataTable BuscarMail(string mailLead)
        {
            DataTable tabla = new DataTable();

            try
            {
                comando = new MySqlCommand("sige_sam_V3.LeadBuscarMail", conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure,
                };
                comando.Parameters.AddWithValue("@varMail", mailLead);
                adaptador = new MySqlDataAdapter(comando);
                adaptador.Fill(tabla);
                conexion.CerrarConnectionMysql();
                return tabla;
            }
            catch (Exception)
            {
                conexion.CerrarConnectionMysql();
                return tabla;
                throw;
            }
        }

        public DataTable BuscarEjecutivos()
        {
            DataTable tabla = new DataTable();

            try
            {
                comando = new MySqlCommand("sam.WEB_ejecutivosLead", conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure,
                };
                adaptador = new MySqlDataAdapter(comando);
                adaptador.Fill(tabla);
                conexion.CerrarConnectionMysql();
                return tabla;
            }
            catch (Exception)
            {
                conexion.CerrarConnectionMysql();
                return tabla;
                throw;
            }
        }


        public string ActulizarAtencion(int id)
        {
            try
            {
                comando = new MySqlCommand("sam.WEB_actualizaAtencion", conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure,
                };
                comando.Parameters.AddWithValue("@ejeID", id);
                comando.ExecuteReader();
                conexion.CerrarConnectionMysql();
                return "ok";
            }
            catch (MySqlException ex)
            {
                conexion.CerrarConnectionMysql();
                return "Error: " + ex.Message;
            }

        }

    }

}
