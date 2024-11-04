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

        public string IngresarDetalle(int cotizacion, string curso, string modalidad, string sede, int cantidad, int tarifa, int idDescto, int totalPago, string alumID, int alumEdad, string apoID)
        {
            return GetCotizacion.IngresarDetalle(cotizacion, curso, modalidad, sede, cantidad, tarifa, idDescto, totalPago, alumID, alumEdad, apoID); 
        }

        public string IngresarAlumno(string idAlumno, string paterno, string materno, string nombre, int comunaID, string direccion, DateTime nace, int fono, string mail)
        {
            return GetCotizacion.IngresarAlumno(idAlumno, paterno, materno, nombre, comunaID, direccion, nace, fono, mail);
        }

        public string IngresarApoderado(string idAlumno, string idApoderado, string paterno, string materno, string nombre, int comunaID, string direccion, int fono, string mail)
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
    }
}
