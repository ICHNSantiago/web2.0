using Datos;
using System;
using System.Data;

namespace Negocio
{
    public class Ncursos
    {
        private readonly Cursos GetCursos = new Cursos();

        public DataTable BuscarHorarioNivelSede(int sede, int curso)
        {
            return GetCursos.BuscarHorarioNivelSede(sede, curso);
        }       

        public DataTable BuscarHorarioAdultos()
        {
            return GetCursos.BuscarHorarioNivelTodasSedes("ADULTS");
        }

        public DataTable BuscarHorarioJovenes()
        {
            return GetCursos.BuscarHorarioNivelTodasSedes("TEENS");
        }

        public DataTable BuscarHorarioKid()
        {
            return GetCursos.BuscarHorarioNivelTodasSedes("KIDS");
        }

        public DataTable BuscarHorarioPreSchoolers()
        {
            return GetCursos.BuscarHorarioNivelTodasSedes("PRE");
        }

        public DataTable BuscarHorarioNivel(int curso)
        {
            return GetCursos.BuscarHorarioNivel(curso);
        }

        public DataTable BuscarTarifas(int programa)
        {
            return GetCursos.BuscarTarifas(programa);
        }

        public string BuscarTarifasV2(int programa)
        {
            return GetCursos.BuscarTarifasV2(programa);
        }

        public DataTable BuscarTarifasAdultos ()
        {
            return GetCursos.BuscarTarifasxPrograma("ADULTS");
        }

        public DataTable BuscarTarifasTeens()
        {
            return GetCursos.BuscarTarifasxPrograma("TEENS");
        }

        public DataTable BuscarTarifasKids()
        {
            return GetCursos.BuscarTarifasxPrograma("KIDS");
        }

        public DataTable BuscarTarifasPreescolares()
        {
            return GetCursos.BuscarTarifasxPrograma("PRE");
        }

        public DataTable BuscarPromoAdultos()
        {
            return GetCursos.BuscarDescuentos("ADULTS");
        }

        public DataTable BuscarPromoTeens()
        {
            return GetCursos.BuscarDescuentos("TEENS");
        }

        public DataTable BuscarPromoKids()
        {
            return GetCursos.BuscarDescuentos("KIDS");
        }

        public DataTable BuscarPromoPreescolares()
        {
            return GetCursos.BuscarDescuentos("PRE");
        }

        public DataTable BuscarHorario(int sede, int curso)
        {
            return GetCursos.BuscarHorario(sede, curso);
        }


        public string MostrarSummer()
        {
            DateTime date = DateTime.Now;

            int year = date.Year;
            int month = date.Month;

            if (month > 2) 
            {
                year++;
            }

            return GetCursos.BuscarCalendarioAcademico(year, 3);

        }
    }
}
