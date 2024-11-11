using Datos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class Ndiagnostico
    {
        readonly Diagnostico alumno = new Diagnostico();

        public DataTable BuscarAdultos(string alumnoID)
        {
            return alumno.BuscarAdultos(alumnoID);
        }

        public DataTable BuscarTeens(string alumnoID)
        {
            return alumno.BuscarTeens(alumnoID);
        }

        public DataTable BuscarKids(string alumnoID)
        {
            return alumno.BuscarKids(alumnoID);
        }



        public DataTable PruebaAdultos(int nivel, int test)
        {
            return alumno.PruebaAdultos(nivel, test);
        }

        public DataTable PruebaTeens(int nivel, int test)
        {
            return alumno.PruebaTeens(nivel, test);
        }

        public DataTable PruebaKids(int nivel, int test)
        {
            return alumno.PruebaKids(nivel, test); 
        }


        public DataTable PruebaRespuestaAdultos(int nivel, int test)
        {
            return alumno.PruebaRespuestaAdultos(nivel, test);
        }

        public DataTable PruebaRespuestaTeens(int nivel, int test)
        {
            return alumno.PruebaRespuestaTeens(nivel, test);
        }

        public DataTable PruebaRespuestaKids(int nivel, int test)
        {
            return alumno.PruebaRespuestaKids(nivel, test);
        }

        public string IngresarRespuestasAdultos(int diagnosticoID, int testID, int cursoID, int preguntaID, string respuesta, DateTime fecha)
        {
            return alumno.IngresarRespuestasAdultos(diagnosticoID, testID, cursoID, preguntaID, respuesta, fecha);
        }

        public string IngresarRespuestasTeens(int diagnosticoID, int testID, int cursoID, int preguntaID, string respuesta, DateTime fecha)
        {
            return alumno.IngresarRespuestasTeens(diagnosticoID, testID, cursoID, preguntaID, respuesta, fecha);
        }

        public string IngresarRespuestasKids(int diagnosticoID, int testID, int cursoID, int preguntaID, string respuesta, DateTime fecha)
        {
            return alumno.IngresarRespuestasKids(diagnosticoID, testID, cursoID, preguntaID, respuesta, fecha);
        }

        public string NivelNombre(int idCurso)
        {
            DataTable data = alumno.NivelNombre(idCurso);
            string var = data.Rows[0]["NombreCurso"].ToString().ToLower().Replace("-", string.Empty);
            string[] nombres = var.Split(' ');
            return nombres[0];
        }

        public string NivelNombreTeens(int idCurso)
        {
            DataTable data = alumno.NivelNombre(idCurso);
            string var = data.Rows[0]["NombreCurso"].ToString().ToLower().Replace("-", string.Empty);
            string[] nombres = var.Split(' ');
            return nombres[1];
        }

        public string NivelNombreKids(int idCurso)
        {
            DataTable data = alumno.NivelNombre(idCurso);
            string var = data.Rows[0]["NombreCurso"].ToString().ToLower().Replace("-", string.Empty);
            string[] nombres = var.Split(' ');
            return nombres[1];
        }

        public string ActualizarEstadoNivel(int diagnosticoID, int nivelID, string estado)
        {
            return alumno.ActualizarEstado(diagnosticoID, nivelID, estado, "Nivel");
        }

        public string ActualizarEstadoFin(int diagnosticoID, int nivelID, string estado)
        {
            return alumno.ActualizarEstado(diagnosticoID, nivelID, estado, "fin");
        }

        public DataTable ValidarAlumno(string alumnoID)
        {
            return alumno.ValidarAlumno(alumnoID);
        }

        public string Ingreso(string rut, int nivel, string usuario)
        {
            return alumno.Ingresar(rut, nivel, usuario, 14);
        }
    }
}
