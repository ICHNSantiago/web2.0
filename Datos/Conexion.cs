using MySql.Data.MySqlClient;
using System;
using System.IO;


namespace Datos
{
    public class Conexion
    {
        private MySqlConnection ConnectionMySql = new MySqlConnection();


        public void FFFF()
        {
            string envFilePath = @"C:\inetpub\wwwroot\webichn\.env"; // Asegúrate que esté en la raíz
            if (File.Exists(envFilePath))
            {
                string[] lines = File.ReadAllLines(envFilePath);
                foreach (string line in lines)
                {
                    if (!string.IsNullOrWhiteSpace(line) && !line.StartsWith("#"))
                    {
                        string[] parts = line.Split('=', (char)2); // Divide solo en el primer '='
                        if (parts.Length == 2)
                        {
                            string key = parts[0].Trim();
                            string value = parts[1].Trim();
                            // Opcional: setearlo como variable de entorno del proceso
                            Environment.SetEnvironmentVariable(key, value);
                            
                        }
                    }
                }
            }

            // Ahora puedes leerlas
           
           
        }

        public MySqlConnection AbrirConnectionMySql()
        {
            FFFF();
            string apiKey = Environment.GetEnvironmentVariable("API_KEY");
            string bbdd = Environment.GetEnvironmentVariable("BBDD");
            string AWS = Environment.GetEnvironmentVariable("AWS");
            string url = "server=" + AWS + "; database=" + bbdd + "; Uid=root; pwd="+ apiKey + "; SslMode=none; Pooling=false;";

            try
            {
                if (ConnectionMySql.State == System.Data.ConnectionState.Closed)
                {
                    MySqlConnection.ClearAllPools();
                     ConnectionMySql = new MySqlConnection(url);
                    ConnectionMySql.Open();
                    return ConnectionMySql;
                }
                else
                {
                    CerrarConnectionMysql();

                    MySqlConnection.ClearAllPools();
                    ConnectionMySql = new MySqlConnection(url);
                    ConnectionMySql.Open();
                    return ConnectionMySql;
                }
            }
            catch (MySqlException)
            {
                return ConnectionMySql;
            }
        }

        public MySqlConnection AbrirConnectionTBK()
        {
            string apiKey = Environment.GetEnvironmentVariable("API_KEY");
            string bbdd = Environment.GetEnvironmentVariable("BBDDTBK");
            string AWS = Environment.GetEnvironmentVariable("AWS");
            string url = "server=" + AWS + "; database=" + bbdd + "; Uid=root; pwd=" + apiKey + "; SslMode=none; Pooling=false;";

            try
            {
                if (ConnectionMySql.State == System.Data.ConnectionState.Closed)
                {
                    MySqlConnection.ClearAllPools();
                   ConnectionMySql = new MySqlConnection(url);
                    ConnectionMySql.Open();
                    return ConnectionMySql;
                }
                else
                {
                    CerrarConnectionMysql();

                    MySqlConnection.ClearAllPools();
                    ConnectionMySql = new MySqlConnection(url);
                    ConnectionMySql.Open();
                    return ConnectionMySql;
                }
            }
            catch (MySqlException)
            {
                return ConnectionMySql;
            }
        }

        public MySqlConnection AbrirConnectionMySqlSam()
        {
            string apiKey = Environment.GetEnvironmentVariable("API_KEY");
            string bbdd = Environment.GetEnvironmentVariable("BBDDDIAG");
            string AWS = Environment.GetEnvironmentVariable("AWS");
            string url = "server=" + AWS + "; database=" + bbdd + "; Uid=root; pwd=" + apiKey + "; SslMode=none; Pooling=false;";

            try
            {
                if (ConnectionMySql.State == System.Data.ConnectionState.Open)
                {
                    CerrarConnectionMysql();
                }

                MySqlConnection.ClearAllPools();
                ConnectionMySql = new MySqlConnection(url);
                ConnectionMySql.Open();
                return ConnectionMySql;
            }
            catch (MySqlException)
            {
                return ConnectionMySql;
            }
        }

        public MySqlConnection CerrarConnectionMysql()
        {
            if (ConnectionMySql.State == System.Data.ConnectionState.Open)
            {
                MySqlConnection.ClearAllPools();
                ConnectionMySql.Close();
                ConnectionMySql.Dispose();
                MySqlConnection.ClearPool(ConnectionMySql);
                ConnectionMySql.ClearAllPoolsAsync();
            }
            else
            {
                MySqlConnection.ClearAllPools();
                ConnectionMySql.Dispose();
                MySqlConnection.ClearPool(ConnectionMySql);
                ConnectionMySql.ClearAllPoolsAsync();
            }

            return ConnectionMySql;
        }
    }
}
