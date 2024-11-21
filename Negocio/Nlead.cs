using Datos;
using System;
using System.Data;
using System.Web.Security;
using System.Web;

namespace Negocio
{
    public class Nlead
    {
        private readonly Lead GetLead = new Lead();

        public string IngresarOK(string nombre, string mail, string fono, string producto, int contacto, int usuario)
        {
            string var = GetLead.Ingresar(nombre, mail, fono, producto, contacto, usuario);

            if(int.TryParse(var, out int id))
            {
                return "ok";
            }
            else
            {
                return var;
            }           
        }

        public int IngresarNum(string nombre, string mail, string fono, string producto, int contacto, int usuario)
        {
            string var = GetLead.Ingresar(nombre, mail, fono, producto, contacto, usuario);

            if (int.TryParse(var, out int id))
            {
                return id;
            }
            else
            {
                return 0;
            }
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

        public string EstadoUpdate(int leadID, int estadoID)
        {
            return GetLead.EstadoUpdate(leadID, estadoID);
        }

        public int CrearLead(string nombre, string correo, string fono, string programa)
        {
            string programaSelect = string.Empty;
            switch (programa)
            {
                case "A":
                    programaSelect = "ADULTS REGULAR";
                    break;
                case "T":
                    programaSelect = "TEENS";
                    break;
                case "K":
                    programaSelect = "KIDS";
                    break;              
            }

          
            int id = IngresarNum(nombre, correo, fono, programaSelect, 5, 1);         
            return id;
        }
    }
}
