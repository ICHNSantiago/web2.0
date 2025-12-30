using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Banner
    {
        private readonly Conexion Conexion = new Conexion();
        private MySqlCommand Comando;
        private MySqlDataAdapter Adaptador;     


        public DataTable Buscar()
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam.WEB_banner", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };             

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

        public DataTable BuscarAS()
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam.WEB_banner_American", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };

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

        public string Actualizar(int banner, string tipo , string imagen, string link, int visible )
        {
            try
            {
                Comando = new MySqlCommand("sam.WEB_actualizarBanner", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure,
                };
                Comando.Parameters.AddWithValue("@bannerNum", banner);
                Comando.Parameters.AddWithValue("@bannerTipo", tipo);
                Comando.Parameters.AddWithValue("@bannerImg", imagen);
                Comando.Parameters.AddWithValue("@bannerLink", link);
                Comando.Parameters.AddWithValue("@bannerVisible", visible);
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

        public string ActualizarAS(int banner, string tipo, string imagen, string link, int visible)
        {
            try
            {
                Comando = new MySqlCommand("sam.WEB_actualizarBannerAmerican", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure,
                };
                Comando.Parameters.AddWithValue("@bannerNum", banner);
                Comando.Parameters.AddWithValue("@bannerTipo", tipo);
                Comando.Parameters.AddWithValue("@bannerImg", imagen);
                Comando.Parameters.AddWithValue("@bannerLink", link);
                Comando.Parameters.AddWithValue("@bannerVisible", visible);
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
    }
}
