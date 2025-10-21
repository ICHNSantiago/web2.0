using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Http.Headers;
using System.Runtime.Remoting;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Cotizacion
    {
        private readonly Conexion Conexion = new Conexion();
        private MySqlCommand Comando;
        private MySqlDataAdapter Adaptador;
        private MySqlDataReader Leer;

        public string Ingresar(string apoderado, string vendedor, int idSoliciutdDescto, int descuento, int tipoDescuento, string fecha, int alumnos, int curso,
           int monto, string validez)
        {
            string resultado = string.Empty;
            try
            {
                Comando = new MySqlCommand("sam.WEB_IngresarCotizacion", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@apoderado", apoderado);
                Comando.Parameters.AddWithValue("@vendedor", vendedor);
                Comando.Parameters.AddWithValue("@solicitudDescuento", idSoliciutdDescto);
                Comando.Parameters.AddWithValue("@fecha", fecha);
                Comando.Parameters.AddWithValue("@alumno", alumnos);
                Comando.Parameters.AddWithValue("@cantidad", curso);
                Comando.Parameters.AddWithValue("@monto", monto);
                Comando.Parameters.AddWithValue("@validez", validez);
                Comando.Parameters.AddWithValue("@desctoID", descuento);
                Comando.Parameters.AddWithValue("@tipoDesctoID", tipoDescuento);
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


        public string IngresarLead(string apoderado, string vendedor, int idSoliciutdDescto, int descuento, int tipoDescuento, string fecha, int alumnos, int curso,
        int monto, string validez, int lead)
        {
            string resultado = string.Empty;
            try
            {
                Comando = new MySqlCommand("sam.WEB_IngresarCotizacionLead", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@apoderado", apoderado);
                Comando.Parameters.AddWithValue("@vendedor", vendedor);
                Comando.Parameters.AddWithValue("@solicitudDescuento", idSoliciutdDescto);
                Comando.Parameters.AddWithValue("@fecha", fecha);
                Comando.Parameters.AddWithValue("@alumno", alumnos);
                Comando.Parameters.AddWithValue("@cantidad", curso);
                Comando.Parameters.AddWithValue("@monto", monto);
                Comando.Parameters.AddWithValue("@validez", validez);
                Comando.Parameters.AddWithValue("@desctoID", descuento);
                Comando.Parameters.AddWithValue("@tipoDesctoID", tipoDescuento); 
                Comando.Parameters.AddWithValue("@leadID", lead);
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


        public string IngresarDetalle(int cotizacion, string curso, string modalidad, string sede, int cantidad, int tarifa, int idDescto, int totalPago, string alumID, int alumEdad,string apoID, int tarifaID)
        {
            try
            {
                Comando = new MySqlCommand("sam.WEB_ingresarCotizacionDetalleEcommerce", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@cotiID", cotizacion);
                Comando.Parameters.AddWithValue("@nomCurso", curso);
                Comando.Parameters.AddWithValue("@tipoCurso", modalidad);
                Comando.Parameters.AddWithValue("@sedeCurso", sede);
                Comando.Parameters.AddWithValue("@cantCurso", cantidad);
                Comando.Parameters.AddWithValue("@netoCurso", tarifa);
                Comando.Parameters.AddWithValue("@desctoID", idDescto);
                Comando.Parameters.AddWithValue("@totalCurso", totalPago);
                Comando.Parameters.AddWithValue("@alumno", alumID);
                Comando.Parameters.AddWithValue("@apoderado", apoID);
                Comando.Parameters.AddWithValue("@edadAlum", alumEdad);
                Comando.Parameters.AddWithValue("@tarifaCurso", tarifaID);

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

        public string IngresarDetalleV2(int cotizacion, string curso, string modalidad, string sede, int cantidad, int tarifa, int idDescto, int totalPago,
            string alumID, int alumEdad, string apoID, int tarifaID, int sedeID, int programID)
        {
            try
            {
                Comando = new MySqlCommand("sam.WEB_ingresarCotizacionDetalleEcommerceV2", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@cotiID", cotizacion);
                Comando.Parameters.AddWithValue("@nomCurso", curso);
                Comando.Parameters.AddWithValue("@tipoCurso", modalidad);
                Comando.Parameters.AddWithValue("@sedeCurso", sede);
                Comando.Parameters.AddWithValue("@cantCurso", cantidad);
                Comando.Parameters.AddWithValue("@netoCurso", tarifa);
                Comando.Parameters.AddWithValue("@desctoID", idDescto);
                Comando.Parameters.AddWithValue("@totalCurso", totalPago);
                Comando.Parameters.AddWithValue("@alumno", alumID);
                Comando.Parameters.AddWithValue("@apoderado", apoID);
                Comando.Parameters.AddWithValue("@edadAlum", alumEdad);
                Comando.Parameters.AddWithValue("@tarifaCurso", tarifaID);
                Comando.Parameters.AddWithValue("@idSede", sedeID);
                Comando.Parameters.AddWithValue("@programa", programID);

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


        public string IngresarAlumno(string idAlumno, string paterno, string materno, string nombre, string comunaID, string direccion, DateTime nace, int fono, string mail)
        {
            try
            {
                Comando = new MySqlCommand("sam.WEB_ingresarAlumno", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@alumnoID", idAlumno);
                Comando.Parameters.AddWithValue("@alumnoPaterno", paterno);
                Comando.Parameters.AddWithValue("@alumnoMaterno", materno);
                Comando.Parameters.AddWithValue("@alumnoNombre", nombre);
                Comando.Parameters.AddWithValue("@alumnoComuna", comunaID);
                Comando.Parameters.AddWithValue("@alumnoDireccion", direccion);
                Comando.Parameters.AddWithValue("@alumnoNace", nace);
                Comando.Parameters.AddWithValue("@alumnoFono", fono);
                Comando.Parameters.AddWithValue("@alumnoMail", mail);
                Comando.ExecuteReader();
                Conexion.CerrarConnectionMysql();
                return "ok";
            }
            catch (MySqlException ex)
            {
                if (ex.Number == 1062)
                {
                    return ActualizarAlumno(idAlumno, paterno, materno, nombre, comunaID, direccion, nace, fono, mail);
                }
                else
                {
                    Conexion.CerrarConnectionMysql();
                    return "Error: " + ex.Message;
                }
            }
        }

        public string ActualizarAlumno(string idAlumno, string paterno, string materno, string nombre, string comunaID, string direccion, DateTime nace, int fono, string mail)
        {
            try
            {
                Comando = new MySqlCommand("sam.WEB_actualizarAlumno", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@alumnoID", idAlumno);
                Comando.Parameters.AddWithValue("@alumnoPaterno", paterno);
                Comando.Parameters.AddWithValue("@alumnoMaterno", materno);
                Comando.Parameters.AddWithValue("@alumnoNombre", nombre);
                Comando.Parameters.AddWithValue("@alumnoComuna", comunaID);
                Comando.Parameters.AddWithValue("@alumnoDireccion", direccion);
                Comando.Parameters.AddWithValue("@alumnoNace", nace);
                Comando.Parameters.AddWithValue("@alumnoFono", fono);
                Comando.Parameters.AddWithValue("@alumnoMail", mail);
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

        public string IngresarApoderado(string idAlumno, string idApoderado, string paterno, string materno, string nombre, string comunaID, string direccion, int fono, string mail)
        {
            try
            {
                Comando = new MySqlCommand("sam.WEB_ingresarApoderado", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@apoderadoID", idApoderado);
                Comando.Parameters.AddWithValue("@alumnoID", idAlumno);
                Comando.Parameters.AddWithValue("@paterno", paterno);
                Comando.Parameters.AddWithValue("@materno", materno);
                Comando.Parameters.AddWithValue("@nombre", nombre);
                Comando.Parameters.AddWithValue("@comunaID", comunaID);
                Comando.Parameters.AddWithValue("@direccionApo", direccion);
                Comando.Parameters.AddWithValue("@fonoApo", fono);
                Comando.Parameters.AddWithValue("@mailApo", mail);
                Comando.ExecuteReader();
                Conexion.CerrarConnectionMysql();
                return "ok";
            }
            catch (MySqlException ex)
            {
                if (ex.Number == 1062)
                {
                    return ActualizarApoderado(idAlumno, idApoderado, paterno, materno, nombre, comunaID, direccion, fono, mail);
                }
                else
                {
                    Conexion.CerrarConnectionMysql();
                    return "Error: " + ex.Message;
                }
            }
        }

        public string ActualizarApoderado(string idAlumno, string idApoderado, string paterno, string materno, string nombre, string comunaID, string direccion, int fono, string mail)
        {
            try
            {
                Comando = new MySqlCommand("sam.WEB_ActualizarApoderado", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@apoderadoID", idApoderado);
                Comando.Parameters.AddWithValue("@alumnoID", idAlumno);
                Comando.Parameters.AddWithValue("@alumnoPaterno", paterno);
                Comando.Parameters.AddWithValue("@alumnoMaterno", materno);
                Comando.Parameters.AddWithValue("@alumnoNombre", nombre);
                Comando.Parameters.AddWithValue("@alumnoComuna", comunaID);
                Comando.Parameters.AddWithValue("@alumnoDireccion", direccion);
                Comando.Parameters.AddWithValue("@alumnoFono", fono);
                Comando.Parameters.AddWithValue("@alumnoMail", mail);
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

        public DataTable BuscarAlumno(string alumID)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam.BuscarAlumno", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@alumnoID", alumID);

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

        public DataTable BuscarApoderado(string apoderadoID)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam.Buscarpoderado", Conexion.AbrirConnectionMySql())
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

        public DataTable RecuperarCotizacion(int coti)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam.WEB_recuperarCotizacion", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@cotiID", coti);

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

        public string IngresarInscripcion(int cotizacion, string idAlumno, int codigoCurso, int cantidad, int tarifa)
        {
            try
            {
                Comando = new MySqlCommand("sige_sam_V3.IngresarCotizacionDetalle", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@cotizaion", cotizacion);
                Comando.Parameters.AddWithValue("@alumno", idAlumno);
                Comando.Parameters.AddWithValue("@codigoCurso", codigoCurso);
                Comando.Parameters.AddWithValue("@cantidad", cantidad);
                Comando.Parameters.AddWithValue("@tarifa", tarifa);

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

        public string GrabaCliente(string clienteID, string nombre, string paterno, string materno, string direccion, string ciudad, string comuna, string fono, string mail)
        {
            string resultado = string.Empty;
            try
            {
                Comando = new MySqlCommand("SIGECaja.GrabaCliente", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@cId", clienteID);
                Comando.Parameters.AddWithValue("@cTipo", 1);
                Comando.Parameters.AddWithValue("@boleta", 0);
                Comando.Parameters.AddWithValue("@cNombre", nombre);
                Comando.Parameters.AddWithValue("@cPaterno", paterno);
                Comando.Parameters.AddWithValue("@cMaterno", materno);
                Comando.Parameters.AddWithValue("@cDireccion", direccion);
                Comando.Parameters.AddWithValue("@cCiudad", ciudad);
                Comando.Parameters.AddWithValue("@cComuna", comuna);
                Comando.Parameters.AddWithValue("@cFono", fono);
                Comando.Parameters.AddWithValue("@cMail", mail);
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

        public string GrabaVenta(string clienteID, int cotizacionID, DateTime fechaEmite, int neto, int total, int descto)
        {
            string resultado = string.Empty;
            try
            {
                Comando = new MySqlCommand("SIGECaja.GrabaVenta", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@VCiD", clienteID);
                Comando.Parameters.AddWithValue("@vMatricula", cotizacionID);
                Comando.Parameters.AddWithValue("@vTipoVenta", 41010000);
                Comando.Parameters.AddWithValue("@vFecha", fechaEmite);
                Comando.Parameters.AddWithValue("@vSede", 130);
                Comando.Parameters.AddWithValue("@vCurso", "CURSO WEB ICHN");
                Comando.Parameters.AddWithValue("@vValor", neto);
                Comando.Parameters.AddWithValue("@vCantidad", 1);
                Comando.Parameters.AddWithValue("@vTotal", total);
                Comando.Parameters.AddWithValue("@vGlosa", "VENTA CURSO POR WEB");
                Comando.Parameters.AddWithValue("@vDescuento", descto);
                Comando.Parameters.AddWithValue("@vGlosaDescto", string.Empty);
                Comando.Parameters.AddWithValue("@vRecargo", 0);
                Comando.Parameters.AddWithValue("@vGlosaRecargo", string.Empty);
                Comando.Parameters.AddWithValue("@vTipoDocumento", "BX");
                Comando.Parameters.AddWithValue("@vInicioCurso", DateTime.Now);
                Comando.Parameters.AddWithValue("@vTerminoCurso", DateTime.Now);
                Comando.Parameters.AddWithValue("@nContrato", 0);
                Comando.Parameters.AddWithValue("@Vendedor", 1);

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

        public string GrabaPago(int boletaID, int montoPago, int cuotaPago, int tipoTarjeta, int codAutoriza, string apoderadoID)
        {
            try
            {
                Comando = new MySqlCommand("SIGECaja.GrabaPago", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@boleta", boletaID);
                Comando.Parameters.AddWithValue("@monto", montoPago);
                Comando.Parameters.AddWithValue("@cuota", cuotaPago);
                Comando.Parameters.AddWithValue("@fechaCuota", DateTime.Now);
                Comando.Parameters.AddWithValue("@recargo", 0);
                Comando.Parameters.AddWithValue("@glosaRecargo", string.Empty);
                Comando.Parameters.AddWithValue("@tipoDocumento", tipoTarjeta);
                Comando.Parameters.AddWithValue("@ordenCompra", 0);
                Comando.Parameters.AddWithValue("@codigoAutorizacion", codAutoriza);
                Comando.Parameters.AddWithValue("@idDeudor", apoderadoID);
                Comando.Parameters.AddWithValue("@cajero", 1);

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

        public DataTable CotizacionInfo(string tipoBusqueda, string nombre)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sam.BuscarCotizaciones", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@tipoBusqueda", tipoBusqueda);
                Comando.Parameters.AddWithValue("@nombre", nombre);
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

        public DataTable Detalle(int cotizacion)
        {
            DataTable tabla = new DataTable();

            try
            {
                Comando = new MySqlCommand("sige_sam_V3.BuscarCotizacionDetalle", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@cotizacion", cotizacion);
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

        public string ActualizaCorrelativoBoleta()
        {
            try
            {
                Comando = new MySqlCommand("SIGECaja.ActualizaCorrelativoBoleta", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };              
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

        public string EliminaDatosCoti(int coti)
        {
            try
            {
                Comando = new MySqlCommand("sam.WEB_ElimnaDatosAnexoCoti", Conexion.AbrirConnectionMySql())
                {
                    CommandType = CommandType.StoredProcedure
                };
                Comando.Parameters.AddWithValue("@cotiID", coti);
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
