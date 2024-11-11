using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web.Diagnostico.Kid
{
    public partial class Index : System.Web.UI.Page
    {
        public void Diagnostico(string alumnoID)
        {
            Ndiagnostico ndiagnostico = new Ndiagnostico();
            DataTable data = ndiagnostico.BuscarKids(alumnoID);

            if (data.Rows.Count == 0)
            {
                DataTable alumno = ndiagnostico.ValidarAlumno(alumnoID);
                LabelAlumno.Text = alumno.Rows[0]["Nombres"].ToString() + " " + alumno.Rows[0]["AP_Paterno"].ToString();
                string idDiagnostico = ndiagnostico.Ingreso(alumnoID, 30, "1", 14);

                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, "sam_login_id", DateTime.Now, DateTime.Now.AddMinutes(30), true, idDiagnostico);
                string encrypt = FormsAuthentication.Encrypt(ticket);
                HttpCookie cookie = new HttpCookie("SAM_DIAGNOSTICO_ID", encrypt);
                Response.Cookies.Add(cookie);

                byte[] encryted = System.Text.Encoding.Unicode.GetBytes("39");
                string result = Convert.ToBase64String(encryted);

                Random myObject = new Random();
                int ranNum = myObject.Next(1, 3);

                encryted = System.Text.Encoding.Unicode.GetBytes(ranNum.ToString());
                string result2 = Convert.ToBase64String(encryted);

                LinkButtonIniciar.Text = "Iniciar Diagnóstico";
                LinkButtonIniciar.PostBackUrl = "Beginner.aspx?nivel=" + result + "&test=" + result2;

            }
            else
            {
                LabelAlumno.Text = data.Rows[0]["Nombres"].ToString() + " " + data.Rows[0]["AP_Paterno"].ToString();
                string estado = data.Rows[0]["estado"].ToString();
                int nivel = int.Parse(data.Rows[0]["idcursos"].ToString());
                string idDiagnostico = data.Rows[0]["id"].ToString();

                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, "sam_login_id", DateTime.Now, DateTime.Now.AddMinutes(30), true, idDiagnostico);
                string encrypt = FormsAuthentication.Encrypt(ticket);
                HttpCookie cookie = new HttpCookie("SAM_DIAGNOSTICO_ID", encrypt);
                Response.Cookies.Add(cookie);

                if (estado.Equals("FINALIZADO"))
                {
                    Response.Redirect("Resultado.aspx?alumno=" + alumnoID);
                }
                else
                {
                    byte[] encryted = System.Text.Encoding.Unicode.GetBytes(nivel.ToString());
                    string result = Convert.ToBase64String(encryted);

                    int ranNum = 1;

                    encryted = System.Text.Encoding.Unicode.GetBytes(ranNum.ToString());
                    string result2 = Convert.ToBase64String(encryted);

                    switch (nivel)
                    {
                        case 14:
                            LinkButtonIniciar.PostBackUrl = "Beginner.aspx?nivel=" + result + "&test=" + result2;
                            break;
                        case 15:
                            LinkButtonIniciar.PostBackUrl = "Beginner.aspx?nivel=" + result + "&test=" + result2;
                            break;
                        case 16:
                            LinkButtonIniciar.PostBackUrl = "Elementary.aspx?nivel=" + result + "&test=" + result2;
                            break;
                        case 17:
                            LinkButtonIniciar.PostBackUrl = "Elementary.aspx?nivel=" + result + "&test=" + result2;
                            break;
                        case 18:
                            LinkButtonIniciar.PostBackUrl = "PreIntermediate.aspx?nivel=" + result + "&test=" + result2;
                            break;
                        case 19:
                            LinkButtonIniciar.PostBackUrl = "LowIntermediate.aspx?nivel=" + result + "&test=" + result2;
                            break;
                        case 20:
                            LinkButtonIniciar.PostBackUrl = "LowIntermediate.aspx?nivel=" + result + "&test=" + result2;
                            break;
                        case 21:
                            LinkButtonIniciar.PostBackUrl = "PreAdvanced.aspx?nivel=" + result + "&test=" + result2;
                            break;                       
                        default:
                            break;
                    }

                    LinkButtonIniciar.Text = "Continuar Diagnóstico";
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    string token = Convert.ToString(Request["alum"]);

                    FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, "sam_login_id", DateTime.Now, DateTime.Now.AddMinutes(30), true, token);
                    string encrypt = FormsAuthentication.Encrypt(ticket);
                    HttpCookie cookie = new HttpCookie("SAM_TEST_ALUMNO_ID", encrypt);
                    Response.Cookies.Add(cookie);
                    Diagnostico(token);
                }
                catch (Exception)
                {

                }
            }
        }
    }
}