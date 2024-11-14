using Datos;
using System.Data;

namespace Negocio
{
    public class NRegionComuna
    {
        readonly RegionComuna getRegion = new RegionComuna();

        public DataTable ListarRegion()
        {
            return getRegion.ListarRegion();
        }

        public int RegionID(string region)
        {
            DataTable data = ListarRegion();
            string var;
            int id = 0;
            for (int i = 0; i < data.Rows.Count; i++)
            {
                var = data.Rows[i]["NombreRegion"].ToString();

                if (var.Equals(region))
                {
                    id = int.Parse(data.Rows[i]["idRegiones"].ToString());
                }
            }

            return id;
        }

        public DataTable ListarComunas(int  idRegion)
        {            
            return getRegion.ListarComunas(idRegion);
        }

        public string ComunaID(int region, string comuna)
        {
            DataTable data = ListarComunas(region);
            string var;
            string id = "1";
            for (int i = 0; i < data.Rows.Count; i++)
            {
                var = data.Rows[i]["NombreComuna"].ToString().Trim();

                if (var.Equals(comuna.Trim()))
                {
                    id = data.Rows[i]["idComunas"].ToString();
                }
            }
            return id;
        }
    }
}
