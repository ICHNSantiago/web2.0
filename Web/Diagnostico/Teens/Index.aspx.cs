using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web.Diagnostico.Teens
{
    public partial class Index : System.Web.UI.Page
    {
        public void DiagnosticoRepetir(string alumnoID)
        {
            Ndiagnostico ndiagnostico = new Ndiagnostico();
            DataTable data = ndiagnostico.BuscarKids(alumnoID);

            if (data.Rows.Count > 0)
            {
                LabelAlumno.Text = data.Rows[0]["Nombres"].ToString() + " " + data.Rows[0]["AP_Paterno"].ToString();
                int nivel = int.Parse(data.Rows[0]["idCursos"].ToString());
                string idDiagnostico = data.Rows[0]["id"].ToString();

                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, "sam_login_id", DateTime.Now, DateTime.Now.AddMinutes(30), true, idDiagnostico);
                string encrypt = FormsAuthentication.Encrypt(ticket);
                HttpCookie cookie = new HttpCookie("SAM_DIAGNOSTICO_ID", encrypt);
                Response.Cookies.Add(cookie);

                byte[] encryted = System.Text.Encoding.Unicode.GetBytes(nivel.ToString());
                string result = Convert.ToBase64String(encryted);

                int ranNum = 1;

                encryted = System.Text.Encoding.Unicode.GetBytes(ranNum.ToString());
                string result2 = Convert.ToBase64String(encryted);

                LinkButtonIniciar.PostBackUrl = "Beginner.aspx?nivel=" + result + "&test=" + result2;
                LinkButtonIniciar.Text = "Iniciar Diagnóstico";
            }
        }
        public void Diagnostico(string alumnoID)
        {
            Ndiagnostico ndiagnostico = new Ndiagnostico();
            DataTable data = ndiagnostico.BuscarTeens(alumnoID);

            if (data.Rows.Count == 0)
            {
                DataTable alumno = ndiagnostico.ValidarAlumno(alumnoID);
                LabelAlumno.Text = alumno.Rows[0]["Nombres"].ToString() + " " + alumno.Rows[0]["AP_Paterno"].ToString();
                string idDiagnostico = ndiagnostico.Ingreso(alumnoID, 30, "1");

                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, "sam_login_id", DateTime.Now, DateTime.Now.AddMinutes(30), true, idDiagnostico);
                string encrypt = FormsAuthentication.Encrypt(ticket);
                HttpCookie cookie = new HttpCookie("SAM_DIAGNOSTICO_ID", encrypt);
                Response.Cookies.Add(cookie);

                byte[] encryted = System.Text.Encoding.Unicode.GetBytes("30");
                string result = Convert.ToBase64String(encryted);
                               
                int ranNum = 1;

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
                        case 30:
                            LinkButtonIniciar.PostBackUrl = "Beginner.aspx?nivel=" + result + "&test=" + result2;
                            break;                     
                        case 31:
                            LinkButtonIniciar.PostBackUrl = "Elementary.aspx?nivel=" + result + "&test=" + result2;
                            break;                      
                        case 32:
                            LinkButtonIniciar.PostBackUrl = "PreIntermediate.aspx?nivel=" + result + "&test=" + result2;
                            break;                      
                        case 33:
                            LinkButtonIniciar.PostBackUrl = "LowIntermediate.aspx?nivel=" + result + "&test=" + result2;
                            break;                      
                        case 34:
                            LinkButtonIniciar.PostBackUrl = "UpperIntermediate.aspx?nivel=" + result + "&test=" + result2;
                            break;                     
                        case 35:
                            LinkButtonIniciar.PostBackUrl = "PreAdvanced.aspx?nivel=" + result + "&test=" + result2;
                            break;
                        case 36:
                            LinkButtonIniciar.PostBackUrl = "PreAdvanced.aspx?nivel=" + result + "&test=" + result2;
                            break;
                        case 37:
                            LinkButtonIniciar.PostBackUrl = "Advanced.aspx?nivel=" + result + "&test=" + result2;
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
                    string repetir = Convert.ToString(Request["repertir"]);
                    string result;
                    if (string.IsNullOrEmpty(repetir))
                    {
                        result = "no";
                    }
                    else
                    {
                        byte[] decryted = Convert.FromBase64String(repetir);
                        result = System.Text.Encoding.Unicode.GetString(decryted);
                    }

                    if (result == "si")
                    {
                        DiagnosticoRepetir(token);
                    }
                    else
                    {
                        Diagnostico(token);
                    }
                }
                catch (Exception)
                {

                }
            }
        }
    }
}