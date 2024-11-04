using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web.Inscripcion;

namespace Web.Diagnostico.Adults
{
    public partial class Resultado : System.Web.UI.Page
    {
        public void CargaResultado(string alumnoID)
        {
            Ndiagnostico ndiagnostico = new Ndiagnostico();
            DataTable data = ndiagnostico.BuscarAdultos(alumnoID);
            LabelUsuario.Text = data.Rows[0]["Nombres"].ToString() + " " + data.Rows[0]["AP_Paterno"].ToString() + " " + data.Rows[0]["AP_Materno"].ToString();
            int nivel = int.Parse(data.Rows[0]["idcursos"].ToString());
            LabelNivelID.Text = nivel.ToString();
            LabelIntentos.Text = data.Rows[0]["intentos"].ToString();

            
            switch (nivel)
            {
                case 39:
                    LabelNivel.Text = "BEGINNER 1";
                    LabelCEFR.Text = "< A1";
                    break;
                case 40:
                    LabelNivel.Text = "BEGINNER 2";
                    LabelCEFR.Text = "A1";
                    break;
                case 41:
                    LabelNivel.Text = "ELEMENTARY 1";
                    LabelCEFR.Text = "A2";
                    break;
                case 42:
                    LabelNivel.Text = "ELEMENTARY 2";
                    LabelCEFR.Text = "A2";
                    break;
                case 43:
                    LabelNivel.Text = "PRE INTERMEDIATE 1";
                    LabelCEFR.Text = "A2+";
                    break;
                case 44:
                    LabelNivel.Text = "PRE INTERMEDIATE 2";
                    LabelCEFR.Text = "A2+";
                    break;
                case 45:
                    LabelNivel.Text = "LOW INTERMEDIATE 1";
                    LabelCEFR.Text = "B1";
                    break;
                case 46:
                    LabelNivel.Text = "LOW INTERMEDIATE 2";
                    LabelCEFR.Text = "B1+";
                    break;
                case 47:
                    LabelNivel.Text = "UPPER INTERMEDIATE 1";
                    LabelCEFR.Text = "B2";
                    break;
                case 48:
                    LabelNivel.Text = "UPPER INTERMEDIATE 2";
                    LabelCEFR.Text = "B2";
                    break;
                case 90:
                    LabelNivel.Text = "PRE ADVANCED 1";
                    LabelCEFR.Text = "B2+";
                    break;
                case 144:
                    LabelNivel.Text = "PRE ADVANCED 2";
                    LabelCEFR.Text = "B2+";
                    break;
                case 145:
                    LabelNivel.Text = "ADVANCED 1";
                    LabelCEFR.Text = "C1";
                    break;
                case 146:
                    LabelNivel.Text = "ADVANCED 2";
                    LabelCEFR.Text = "C1";
                    break;
                default:
                    break;
            }

            FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, "sam_login_id", DateTime.Now, DateTime.Now.AddMinutes(30), true, nivel.ToString());
            string encrypt = FormsAuthentication.Encrypt(ticket);
            HttpCookie cookie = new HttpCookie("SAM_RESULTADO_NIVEL", encrypt);
            Response.Cookies.Add(cookie);

            ticket = new FormsAuthenticationTicket(1, "sam_login_id", DateTime.Now, DateTime.Now.AddMinutes(30), true, alumnoID.ToString());
            encrypt = FormsAuthentication.Encrypt(ticket);
            cookie = new HttpCookie("SAM_USUARIO_ID", encrypt);
            Response.Cookies.Add(cookie);

            //HttpCookie cookie = Request.Cookies["SAM_VENDEDOR_LEAD"];
            //FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(cookie.Value);
            //int leadID = int.Parse(ticket.UserData.ToString());
            //if (leadID > 14)
            //{
            //    Nlead nlead = new Nlead();
            //    nlead.IngresarActividad(leadID, "SAM", "Alumno termina su evaluación resultado: " + LabelNivel.Text, "2");
            //}
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string token = Convert.ToString(Request["alumno"]);
                CargaResultado(token);
            }
        }

        protected void LinkButtonInscripcion_Click(object sender, EventArgs e)
        {
            string token = Convert.ToString(Request["alumno"]);
            
            byte[] encryted = System.Text.Encoding.Unicode.GetBytes(LabelNivel.Text);
            string resultado2 = Convert.ToBase64String(encryted);

            encryted = System.Text.Encoding.Unicode.GetBytes(LabelNivelID.Text);
            string resultado = Convert.ToBase64String(encryted);

            string link = "~/Inscripcion/Alumno.aspx?alum=" + token +"&diagnostico=" + resultado + "&resultado=" + resultado2;
            Response.Redirect(link);
        }

        protected void LinkButtonRepetir_Click(object sender, EventArgs e)
        {
            int.TryParse(LabelIntentos.Text, out int intentos);

            if (intentos > 8)
            {
                LinkButtonRepetir.Visible = false;
                error_intentos.Visible = true;
            }
            else
            {
                HttpCookie cookie = Request.Cookies["SAM_DIAGNOSTICO_ID"];
                FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(cookie.Value);
                int diagnosticoID = int.Parse(ticket.UserData.ToString());

                Ndiagnostico ndiagnostico = new Ndiagnostico();
                ndiagnostico.ActualizarEstado(diagnosticoID, 39, "PENDIENTE");

                string token = Convert.ToString(Request["alumno"]);
                Response.Redirect("Index.aspx?alum=" + token);
            }
        }
    }
}