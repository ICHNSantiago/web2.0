using Datos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class NCompra
    {
        Compra GetCompra = new Compra();

        public DataTable Buscar(string alumID)
        {
            return GetCompra.Buscar(alumID);
        }

        public DataTable BuscarApo(string apoderadoID)
        {
            return GetCompra.BuscarApo(apoderadoID);
        }

        public DataTable BuscarContratos(string id)
        {
            return GetCompra.BuscarContratos(id);
        }

        public DataTable BuscarSiguienteNivelPrograma(int programaID)
        {
            return GetCompra.BuscarSiguienteNivel("PROGRAMA", programaID);
        }
    }
}
