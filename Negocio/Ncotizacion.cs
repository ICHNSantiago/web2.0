using Datos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class Ncotizacion
    {
        readonly Cotizacion GetCotizacion = new Cotizacion();

        public string Crear(string apoderado, string vendedor, int idSoliciutdDescto, int descuento, int tipoDescuento, string fecha, int alumnos, int curso, int monto, string validez)
        {
            return GetCotizacion.Ingresar(apoderado, vendedor, idSoliciutdDescto, descuento, tipoDescuento, fecha, alumnos, curso, monto, validez);
        }

        public string CrearMasLead(string apoderado, string vendedor, int idSoliciutdDescto, int descuento, int tipoDescuento, string fecha, int alumnos, int curso, int monto, string validez, int lead)
        {
            return GetCotizacion.IngresarLead(apoderado, vendedor, idSoliciutdDescto, descuento, tipoDescuento, fecha, alumnos, curso, monto, validez, lead);

        }

        public string IngresarDetalle(int cotizacion, string curso, string modalidad, string sede, int cantidad, int tarifa, int idDescto, int totalPago, string alumID, int alumEdad, string apoID, int tarifaID)
        {
            return GetCotizacion.IngresarDetalle(cotizacion, curso, modalidad, sede, cantidad, tarifa, idDescto, totalPago, alumID, alumEdad, apoID, tarifaID);
        }

        public string IngresarDetalleV2(int cotizacion, string curso, string modalidad, string sede, int cantidad, int tarifa, int idDescto, int totalPago,
          string alumID, int alumEdad, string apoID, int tarifaID, int sedeID, int programID)
        {
            return GetCotizacion.IngresarDetalleV2(cotizacion, curso, modalidad, sede, cantidad, tarifa, idDescto, totalPago, alumID, alumEdad, apoID, tarifaID, sedeID, programID);
        }

        public string IngresarAlumno(string idAlumno, string paterno, string materno, string nombre, string comunaID, string direccion, DateTime nace, int fono, string mail)
        {
            return GetCotizacion.IngresarAlumno(idAlumno, paterno, materno, nombre, comunaID, direccion, nace, fono, mail);
        }

        public string IngresarApoderado(string idAlumno, string idApoderado, string paterno, string materno, string nombre, string comunaID, string direccion, int fono, string mail)
        {
            return GetCotizacion.IngresarApoderado(idAlumno, idApoderado, paterno, materno, nombre, comunaID, direccion, fono, mail);
        }


        public DataTable BuscarAlumno(string alumID)
        {
            return GetCotizacion.BuscarAlumno(alumID);
        }

        public DataTable BuscarApoderado(string apoderadoID)
        {
            return GetCotizacion.BuscarApoderado(apoderadoID);
        }

        public DataTable RecuperarCotizacion(int coti)
        {
            return GetCotizacion.RecuperarCotizacion(coti);
        }

        public string IngresarInscripcion(int cotizacion, string idAlumno, int codigoCurso, int tarifa)
        {
            return GetCotizacion.IngresarInscripcion(cotizacion, idAlumno, codigoCurso, 1, tarifa);
        }


        public string GrabaCliente(string clienteID, string nombre, string paterno, string materno, string direccion, string ciudad, string comuna, string fono, string mail)
        {
            return GetCotizacion.GrabaCliente(clienteID, nombre, paterno, materno, direccion, ciudad, comuna, fono, mail);
        }

        public string GrabaVenta(string clienteID, int cotizacionID, DateTime fechaEmite, int neto, int total, int descto)
        {
            return GetCotizacion.GrabaVenta(clienteID, cotizacionID, fechaEmite, neto, total, descto);
        }

        public string GrabaPago(int boletaID, int montoPago, int cuotaPago, int tipoTarjeta, int codAutoriza, string apoderadoID)
        {
            return GetCotizacion.GrabaPago(boletaID, montoPago, cuotaPago, tipoTarjeta, codAutoriza, apoderadoID);
        }

        public DataTable CotizacionPago(string cotizacion)
        {
            return GetCotizacion.CotizacionInfo("PAGOCOTIZACION", cotizacion);
        }

        public DataTable Detalle(int cotizacion)
        {
            return GetCotizacion.Detalle(cotizacion);
        }


        public string ActualizaCorrelativoBoleta()
        {
            return GetCotizacion.ActualizaCorrelativoBoleta();
        }

        public string EliminaDatosCoti(int coti)
        {
            return GetCotizacion.EliminaDatosCoti(coti);
        }
    }
}
