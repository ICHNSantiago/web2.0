using Datos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class NBanner
    {
        private readonly Banner GetBanner = new Banner();

        public DataTable Buscar()
        {
            return GetBanner.Buscar();
        }

        public DataTable BuscarAS()
        {
            return GetBanner.BuscarAS();    
        }

        public string Actualizar(int banner, string tipo, string imagen, string link, int visible)
        {
            return GetBanner.Actualizar(banner, tipo, imagen, link, visible);   
        }

        public string ActualizarAS(int banner, string tipo, string imagen, string link, int visible)
        {
            return GetBanner.ActualizarAS(banner, tipo, imagen, link, visible);
        }
    }
}
