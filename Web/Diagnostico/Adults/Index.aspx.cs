﻿using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Sockets;
using System.Net;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web.cursos;

namespace Web.Diagnostico.Adults
{
    public partial class Index : System.Web.UI.Page
    {
        public void DiagnosticoRepetir(string alumnoID)
        {
            Ndiagnostico ndiagnostico = new Ndiagnostico();
            DataTable data = ndiagnostico.BuscarAdultos(alumnoID);

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

                Random myObject = new Random();
                int ranNum = myObject.Next(1, 3);

                encryted = System.Text.Encoding.Unicode.GetBytes(ranNum.ToString());
                string result2 = Convert.ToBase64String(encryted);

                LinkButtonIniciar.PostBackUrl = "Beginner.aspx?nivel=" + result + "&test=" + result2;
                LinkButtonIniciar.Text = "Iniciar Diagnóstico";
            }
        }
        public void Diagnostico(string alumnoID)
        {
            Ndiagnostico ndiagnostico = new Ndiagnostico();
            DataTable data = ndiagnostico.BuscarAdultos(alumnoID);

            if (data.Rows.Count == 0)
            {
                DataTable alumno = ndiagnostico.ValidarAlumno(alumnoID);
                LabelAlumno.Text = alumno.Rows[0]["Nombres"].ToString() + " " + alumno.Rows[0]["AP_Paterno"].ToString();
                string idDiagnostico = ndiagnostico.Ingreso(alumnoID, 39, "1");

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

                    Random myObject = new Random();
                    int ranNum = myObject.Next(1, 3);

                    encryted = System.Text.Encoding.Unicode.GetBytes(ranNum.ToString());
                    string result2 = Convert.ToBase64String(encryted);

                    switch (nivel)
                    {
                        case 39:
                            LinkButtonIniciar.PostBackUrl = "Beginner.aspx?nivel=" + result + "&test=" + result2;
                            break;
                        case 40:
                            LinkButtonIniciar.PostBackUrl = "Beginner.aspx?nivel=" + result + "&test=" + result2;
                            break;
                        case 41:
                            LinkButtonIniciar.PostBackUrl = "Elementary.aspx?nivel=" + result + "&test=" + result2;
                            break;
                        case 42:
                            LinkButtonIniciar.PostBackUrl = "Elementary.aspx?nivel=" + result + "&test=" + result2;
                            break;
                        case 43:
                            LinkButtonIniciar.PostBackUrl = "PreIntermediate.aspx?nivel=" + result + "&test=" + result2;
                            break;
                        case 44:
                            LinkButtonIniciar.PostBackUrl = "PreIntermediate.aspx?nivel=" + result + "&test=" + result2;
                            break;
                        case 45:
                            LinkButtonIniciar.PostBackUrl = "LowIntermediate.aspx?nivel=" + result + "&test=" + result2;
                            break;
                        case 46:
                            LinkButtonIniciar.PostBackUrl = "LowIntermediate.aspx?nivel=" + result + "&test=" + result2;
                            break;
                        case 47:
                            LinkButtonIniciar.PostBackUrl = "UpperIntermediate.aspx?nivel=" + result + "&test=" + result2;
                            break;
                        case 48:
                            LinkButtonIniciar.PostBackUrl = "UpperIntermediate.aspx?nivel=" + result + "&test=" + result2;
                            break;
                        case 90:
                            LinkButtonIniciar.PostBackUrl = "PreAdvanced.aspx?nivel=" + result + "&test=" + result2;
                            break;
                        case 144:
                            LinkButtonIniciar.PostBackUrl = "PreAdvanced.aspx?nivel=" + result + "&test=" + result2;
                            break;
                        case 145:
                            LinkButtonIniciar.PostBackUrl = "Advanced.aspx?nivel=" + result + "&test=" + result2;
                            break;
                        case 146:
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