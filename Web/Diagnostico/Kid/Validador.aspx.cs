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
    public partial class Validador : System.Web.UI.Page
    {
        public string ValidarNivel(int nivel, int tipo, string respuestas)
        {
            string[] opciones = respuestas.Split('/');

            Ndiagnostico ndiagnostico = new Ndiagnostico();
            DataTable data = ndiagnostico.PruebaRespuestaKids(nivel, tipo);
            int nota = 0;
            string varRespuestas;
            string tipoPregunta;
            int preguntaID;

            HttpCookie cookie = Request.Cookies["SAM_DIAGNOSTICO_ID"];
            FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(cookie.Value);
            int diagnosticoID = int.Parse(ticket.UserData.ToString());
            DateTime date = DateTime.Now;

            string varPregunta = string.Empty;
            int count = 0;

            switch (nivel)
            {
                case 18:
                    for (int i = 0; i < data.Rows.Count; i++)
                    {
                        preguntaID = int.Parse(data.Rows[i]["idPregunta"].ToString());
                        varRespuestas = data.Rows[i]["respuestaNombre"].ToString().ToLower();

                        if (preguntaID == 3)
                        {
                            varPregunta += " " + varRespuestas;
                            count++;

                            if (count == 3)
                            {
                                if (varPregunta.Trim().Equals(opciones[2].ToLower().Trim()))
                                {
                                    nota += 25;
                                }
                                else
                                {
                                    nota += 0;
                                }
                                ndiagnostico.IngresarRespuestasKids(diagnosticoID, tipo, nivel, preguntaID, opciones[2], date);
                            }

                        }
                        else if (preguntaID == 4)
                        {
                            if (varRespuestas.Equals(opciones[3].ToLower()))
                            {
                                nota += 25;
                            }
                            else
                            {
                                nota += 0;
                            }
                            ndiagnostico.IngresarRespuestasKids(diagnosticoID, tipo, nivel, preguntaID, opciones[3], date);
                        }
                        else
                        {
                            tipoPregunta = data.Rows[i]["tipoPregunta"].ToString();

                            if (varRespuestas.Equals(opciones[i].ToLower()))
                            {
                                if (tipoPregunta.Equals("opcion"))
                                {
                                    nota += 25;
                                }
                            }
                            else
                            {
                                nota += 0;
                            }
                            ndiagnostico.IngresarRespuestasKids(diagnosticoID, tipo, nivel, preguntaID, opciones[i], date);
                        }
                    }

                    break;

                case 19:
                    for (int i = 0; i < data.Rows.Count; i++)
                    {
                        varRespuestas = data.Rows[i]["respuestaNombre"].ToString().ToLower();
                        tipoPregunta = data.Rows[i]["tipoPregunta"].ToString();
                        preguntaID = int.Parse(data.Rows[i]["idPregunta"].ToString());

                        if (preguntaID == 2)
                        {
                            varPregunta += " " + varRespuestas;
                            count++;

                            if (count == 3)
                            {
                                if (varPregunta.Trim().Equals(opciones[2].ToLower().Trim()))
                                {
                                    nota += 25;
                                }
                                else
                                {
                                    nota += 0;
                                }
                                ndiagnostico.IngresarRespuestasKids(diagnosticoID, tipo, nivel, preguntaID, opciones[2], date);
                            }

                        }
                        else
                        {
                            string varRes;
                            if (preguntaID > 2)
                            {
                                varRes = opciones[i - 2];
                            }
                            else
                            {
                                varRes = opciones[i];
                            }

                            if (varRespuestas.Equals(varRes.ToLower()))
                            {
                                switch (preguntaID)
                                {                                  
                                    case 4:
                                        nota += 6;
                                        break;
                                    default:
                                        nota += 12;
                                        break;
                                }
                            }
                            else
                            {
                                nota += 0;
                            }

                            ndiagnostico.IngresarRespuestasKids(diagnosticoID, tipo, nivel, preguntaID, varRes, date);
                        }
                    }
                    break;

                case 20:
                    for (int i = 0; i < data.Rows.Count; i++)
                    {
                        varRespuestas = data.Rows[i]["respuestaNombre"].ToString().ToLower();
                        tipoPregunta = data.Rows[i]["tipoPregunta"].ToString();
                        preguntaID = int.Parse(data.Rows[i]["idPregunta"].ToString());

                        if (varRespuestas.Equals(opciones[i].ToLower()))
                        {
                            if (preguntaID == 4)
                            {
                                nota += 12;
                            }
                            else
                            {
                                nota += 25;
                            }
                        }
                        else
                        {
                            nota += 0;
                        }

                        
                        ndiagnostico.IngresarRespuestasKids(diagnosticoID, tipo, nivel, preguntaID, opciones[i], date);
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
                                nota += 25;
                            }
                        }
                        else
                        {
                            nota += 0;
                        }

                        preguntaID = int.Parse(data.Rows[i]["idPregunta"].ToString());
                        ndiagnostico.IngresarRespuestasKids(diagnosticoID, tipo, nivel, preguntaID, opciones[i], date);
                    }

                    break;
            }



            bool finalizar = false;

            string link;

            Random myObject = new Random();
            int ranNum = 1;
            byte[] encryted = System.Text.Encoding.Unicode.GetBytes(ranNum.ToString());
            string test = Convert.ToBase64String(encryted);

            bool aprueba;
            if (nota > 50)
            {
                if (nivel == 21)
                {
                    finalizar = true;
                    aprueba = false;
                }
                else
                {
                    nivel++;
                    aprueba = true;
                    finalizar = false;
                }
            }
            else
            {
                aprueba = false;
                finalizar = true;
            }

            encryted = System.Text.Encoding.Unicode.GetBytes(nivel.ToString());
            string nivelTest = Convert.ToBase64String(encryted);

            string estadoDiagnostico;           

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
                    string nivelNombre = ndiagnostico.NivelNombreKids(nivel);
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