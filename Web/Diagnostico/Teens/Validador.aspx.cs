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
    public partial class Validador : System.Web.UI.Page
    {
        public string ValidarNivel(int nivel, int tipo, string respuestas)
        {
            string[] opciones = respuestas.Split('/');

            Ndiagnostico ndiagnostico = new Ndiagnostico();
            DataTable data = ndiagnostico.PruebaRespuestaTeens(nivel, tipo);
            int nota = 0;
            string varRespuestas;
            string tipoPregunta;
            int preguntaID;

            HttpCookie cookie = Request.Cookies["SAM_DIAGNOSTICO_ID"];
            FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(cookie.Value);
            int diagnosticoID = int.Parse(ticket.UserData.ToString());
            DateTime date = DateTime.Now;

            switch (nivel)
            {
                case 32:
                    for (int i = 0; i < data.Rows.Count; i++)
                    {
                        varRespuestas = data.Rows[i]["respuestaNombre"].ToString().ToLower();
                        tipoPregunta = data.Rows[i]["tipoPregunta"].ToString();
                        preguntaID = int.Parse(data.Rows[i]["idPregunta"].ToString());

                        if (varRespuestas.Equals(opciones[i].ToLower().Trim()))
                        {
                            if (tipoPregunta.Equals("opcion"))
                            {
                                if (preguntaID == 3)
                                {
                                    nota += 10;
                                }
                                else
                                {
                                    nota += 5;
                                }
                            }

                            if (tipoPregunta.Equals("audio"))
                            {
                                nota += 20;
                            }
                        }
                        else
                        {
                            nota += 0;
                        }

                       
                        ndiagnostico.IngresarRespuestasTeens(diagnosticoID, tipo, nivel, preguntaID, opciones[i], date);
                    }
                    break;
                case 33:
                    for (int i = 0; i < data.Rows.Count; i++)
                    {
                        varRespuestas = data.Rows[i]["respuestaNombre"].ToString().ToLower();
                        tipoPregunta = data.Rows[i]["tipoPregunta"].ToString();

                        if (varRespuestas.Equals(opciones[i].ToLower()))
                        {
                            if (tipoPregunta.Equals("opcion"))
                            {
                                nota += 5;
                            }

                            if (tipoPregunta.Equals("audio"))
                            {
                                nota += 26;
                            }
                        }
                        else
                        {
                            nota += 0;
                        }

                        preguntaID = int.Parse(data.Rows[i]["idPregunta"].ToString());
                        ndiagnostico.IngresarRespuestasTeens(diagnosticoID, tipo, nivel, preguntaID, opciones[i], date);
                    }
                    break;
                case 35:
                    for (int i = 0; i < data.Rows.Count; i++)
                    {
                        varRespuestas = data.Rows[i]["respuestaNombre"].ToString().ToLower();
                        tipoPregunta = data.Rows[i]["tipoPregunta"].ToString();
                        preguntaID = int.Parse(data.Rows[i]["idPregunta"].ToString());

                        if (preguntaID == 7)
                        {
                            if (varRespuestas.Contains(opciones[i].ToLower()))
                            {
                                nota += 20;
                            }
                            else
                            {
                                nota += 0;
                            }
                        }
                        else
                        {
                            if (varRespuestas.Equals(opciones[i].ToLower()))
                            {
                                if (tipoPregunta.Equals("opcion"))
                                {
                                    nota += 5;
                                }

                                if (tipoPregunta.Equals("audio"))
                                {
                                    nota += 20;
                                }
                            }
                            else
                            {
                                nota += 0;
                            }
                        }
                        
                        ndiagnostico.IngresarRespuestasTeens(diagnosticoID, tipo, nivel, preguntaID, opciones[i], date);
                    }
                    break;
                default:
                    for (int i = 0; i < data.Rows.Count; i++)
                    {
                        varRespuestas = data.Rows[i]["respuestaNombre"].ToString().ToLower();
                        tipoPregunta = data.Rows[i]["tipoPregunta"].ToString();

                        if (varRespuestas.Equals(opciones[i].ToLower()))
                        {
                            if (tipoPregunta.Equals("opcion"))
                            {
                                nota += 5;
                            }

                            if (tipoPregunta.Equals("audio"))
                            {
                                nota += 20;
                            }
                        }
                        else
                        {
                            nota += 0;
                        }

                        preguntaID = int.Parse(data.Rows[i]["idPregunta"].ToString());
                        ndiagnostico.IngresarRespuestasTeens(diagnosticoID, tipo, nivel, preguntaID, opciones[i], date);
                    }
                    break;
            }

            bool finalizar = false;

            string link;

            int ranNum = 1;
            byte[] encryted = System.Text.Encoding.Unicode.GetBytes(ranNum.ToString());
            string test = Convert.ToBase64String(encryted);

            bool aprueba;
            if (nota >= 90)
            {
                aprueba = true;

                if (nivel < 37)
                {
                    nivel += 2;
                }
                else
                {
                    finalizar = true;
                }

            }
            else if (nota >= 79)
            {
                aprueba = true;

                if (nivel < 37)
                {
                    nivel++;
                }
                else
                {
                    finalizar = true;
                }

            }
            else
            {
                aprueba = false;
            }

            encryted = System.Text.Encoding.Unicode.GetBytes(nivel.ToString());
            string nivelTest = Convert.ToBase64String(encryted);


            string estadoDiagnostico;
            string nivelNombre = ndiagnostico.NivelNombreTeens(nivel);

            if (finalizar)
            {
                cookie = Request.Cookies["SAM_TEST_ALUMNO_ID"];
                ticket = FormsAuthentication.Decrypt(cookie.Value);
                string alumnoID = ticket.UserData.ToString();
                link = "Resultado.aspx?alumno=" + alumnoID;
                estadoDiagnostico = "FINALIZADO";
            }
            else
            {
                if (aprueba)
                {
                    link = nivelNombre + ".aspx?nivel=" + nivelTest + "&test=" + test;
                    estadoDiagnostico = "PENDIENTE";
                }
                else
                {
                    cookie = Request.Cookies["SAM_TEST_ALUMNO_ID"];
                    ticket = FormsAuthentication.Decrypt(cookie.Value);
                    string alumnoID = ticket.UserData.ToString();
                    link = "Resultado.aspx?alumno=" + alumnoID;
                    estadoDiagnostico = "FINALIZADO";
                }
            }

            if (estadoDiagnostico.Equals("FINALIZADO"))
            {
                ndiagnostico.ActualizarEstadoFin(diagnosticoID, nivel, estadoDiagnostico);
            }
            else
            {
                ndiagnostico.ActualizarEstadoNivel(diagnosticoID, nivel, estadoDiagnostico);
            }
            return link;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    string token = Convert.ToString(Request["nivel"]);
                    byte[] decryted = Convert.FromBase64String(token);
                    string nivel = System.Text.Encoding.Unicode.GetString(decryted);

                    token = Convert.ToString(Request["test"]);
                    decryted = Convert.FromBase64String(token);
                    string tipo = System.Text.Encoding.Unicode.GetString(decryted);

                    token = Convert.ToString(Request["validar"]);
                    decryted = Convert.FromBase64String(token);
                    string respuestas = System.Text.Encoding.Unicode.GetString(decryted);

                    if (int.TryParse(nivel, out int nivelID))
                    {
                        if (int.TryParse(tipo, out int tipoID))
                        {
                            string url = ValidarNivel(nivelID, tipoID, respuestas);
                            Response.Redirect(url);
                        }
                        else
                        {

                        }
                    }
                    else
                    {

                    }

                }
                catch (Exception)
                {

                }
            }
        }
    }
}