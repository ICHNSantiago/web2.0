using Datos;
using System.Data;

namespace Negocio
{
    public class Nalumnos
    {
        readonly Alumnos GetAlumnos = new Alumnos();

        public bool Bloqueo(string idAlumno)
        {
            DataTable data = GetAlumnos.BuscarBloqueo(idAlumno);

            if (data.Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public DataTable Antiguedadv2(string idAlumno)
        {
            return GetAlumnos.BuscarAntiguedadv2(idAlumno);
        }

    }
}
