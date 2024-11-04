using Datos;
using System;
using System.Data;

namespace Negocio
{
    public class Nlead
    {
        private Lead GetLead = new Lead();

        public string Ingresar(string nombre, string mail, string fono, string producto, int contacto, int usuario)
        {
            return GetLead.Ingresar(nombre, mail, fono, producto, contacto, usuario);
        }

        public bool BuscarMail(string mailLead)
        {
            DataTable dt = GetLead.BuscarMail(mailLead);
            DateTime hoy = DateTime.Now;
            bool var = true;

            if (dt.Rows.Count > 0)
            {
                DateTime date;

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    date = DateTime.Parse(dt.Rows[i]["fecha"].ToString());

                    if (date.ToString("yyyy-MM-dd") == hoy.ToString("yyyy-MM-dd"))
                    {
                        var = false;
                    }
                }

                return var;
            }
            else
            {
                return true;
            }
        }

        public DataTable Ejecutivos()
        {
            return GetLead.BuscarEjecutivos();
                    
        }

        public string ActulizarAtencion(int id)
        {
            return GetLead.ActulizarAtencion(id);
        }

    }
}
