﻿using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Compra
    {
        private readonly Conexion Conexion = new Conexion();
        private MySqlCommand Comando;
        private MySqlDataAdapter Adaptador;

        public DataTable Buscar(string alumID)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam.WEB_validarCompra", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@alumno", alumID);

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

        public DataTable BuscarApo(string apoderadoID)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam.WEB_validarCompraApo", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@apoID", apoderadoID);

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
