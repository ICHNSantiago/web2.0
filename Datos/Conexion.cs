using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Conexion
    {
        private MySqlConnection ConnectionMySql = new MySqlConnection();

        public MySqlConnection AbrirConnectionMySql()
        {
            try
            {
                if (ConnectionMySql.State == System.Data.ConnectionState.Closed)
                {
                    MySqlConnection.ClearAllPools();
                     ConnectionMySql = new MySqlConnection("server=ec2-18-223-30-246.us-east-2.compute.amazonaws.com; database=sam; Uid=root; pwd=Smith3976!; SslMode=none; Pooling=false;");
                    ConnectionMySql.Open();
                    return ConnectionMySql;
                }
                else
                {
                    CerrarConnectionMysql();

                    MySqlConnection.ClearAllPools();
                    ConnectionMySql = new MySqlConnection("server=ec2-18-223-30-246.us-east-2.compute.amazonaws.com; database=sam; Uid=root; pwd=Smith3976!; SslMode=none; Pooling=false;");
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
            try
            {
                if (ConnectionMySql.State == System.Data.ConnectionState.Closed)
                {
                    MySqlConnection.ClearAllPools();
                    //ConnectionMySql = new MySqlConnection("server=192.168.0.7; database=caja_tbk; Uid=root; pwd=apoca11; SslMode=none; Pooling=false;");
                    ConnectionMySql = new MySqlConnection("server=ec2-18-223-30-246.us-east-2.compute.amazonaws.com; database=caja_tbk; Uid=root; pwd=Smith3976!; SslMode=none; Pooling=false;");
                    ConnectionMySql.Open();
                    return ConnectionMySql;
                }
                else
                {
                    CerrarConnectionMysql();

                    MySqlConnection.ClearAllPools();
                    //ConnectionMySql = new MySqlConnection("server=192.168.0.7; database=caja_tbk; Uid=root; pwd=apoca11; SslMode=none; Pooling=false;");
                    ConnectionMySql = new MySqlConnection("server=ec2-18-223-30-246.us-east-2.compute.amazonaws.com; database=caja_tbk; Uid=root; pwd=Smith3976!; SslMode=none; Pooling=false;");
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
            try
            {
                if (ConnectionMySql.State == System.Data.ConnectionState.Open)
                {
                    CerrarConnectionMysql();
                }

                MySqlConnection.ClearAllPools();
                //ConnectionMySql = new MySqlConnection("server=192.168.0.7; database=sige_sam_V3; Uid=root; pwd=apoca11; SslMode=none; Pooling=false;");
                ConnectionMySql = new MySqlConnection("server=ec2-18-223-30-246.us-east-2.compute.amazonaws.com; database=sam_diagnostico; Uid=root; pwd=Smith3976!; SslMode=none; Pooling=false;");
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
