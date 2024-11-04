using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web.Diagnostico.Adults
{
    public partial class Validador : System.Web.UI.Page
    {
        public string ValidarNivel(int nivel, int tipo, string respuestas)
        {
            string[] opciones = respuestas.Split('/');

            Ndiagnostico ndiagnostico = new Ndiagnostico();
            DataTable data = ndiagnostico.PruebaRespuestaAdultos(nivel, tipo);
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
                case 45:
                    for (int i = 0; i < data.Rows.Count; i++)
                    {
                        int x = i;

                        varRespuestas = data.Rows[i]["respuestaNombre"].ToString().ToLower();
                        tipoPregunta = data.Rows[i]["tipoPregunta"].ToString();

                        string varOpcion = opciones[i].ToLower();
                        if (varRespuestas.Contains(varOpcion))
                        {
                            if (tipoPregunta.Equals("opcion"))
                            {
                                nota += 5;
                            }

                            if (tipoPregunta.Equals("audio"))
                            {
                                nota += 13;
                            }
                        }
                        else
                        {
                            nota += 0;
                        }

                        preguntaID = int.Parse(data.Rows[i]["idPregunta"].ToString());
                        ndiagnostico.IngresarRespuestasAdultos(diagnosticoID, tipo, nivel, preguntaID, opciones[i], date);
                    }
                    break;
                case 47:
                    for (int i = 0; i < data.Rows.Count; i++)
                    {
                        varRespuestas = data.Rows[i]["respuestaNombre"].ToString().ToLower();
                        tipoPregunta = data.Rows[i]["tipoPregunta"].ToString();
                        string pregunta = data.Rows[i]["idPregunta"].ToString();
                        if (pregunta == "5")
                        {
                            // nota += 40;

                            string[] var1 = opciones[i].ToLower().Split(' ');
                            string[] var2 = varRespuestas.ToLower().Split(' ');

                            if (var1[0] == var2[0])
                            {
                                nota += 13;
                            }

                            if (var1[1] == var2[1])
                            {
                                nota += 13;
                            }

                            if (var1[2] == var2[2])
                            {
                                nota += 13;
                            }

                        }
                        else
                        {
                            if (varRespuestas.Contains(opciones[i]))
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

                        preguntaID = int.Parse(data.Rows[i]["idPregunta"].ToString());
                        ndiagnostico.IngresarRespuestasAdultos(diagnosticoID, tipo, nivel, preguntaID, opciones[i], date);
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
                        ndiagnostico.IngresarRespuestasAdultos(diagnosticoID, tipo, nivel, preguntaID, opciones[i], date);
                    }


                    break;
            }



            bool finalizar = false;

            string link;

            Random myObject = new Random();
            int ranNum = myObject.Next(1, 3);
            byte[] encryted = System.Text.Encoding.Unicode.GetBytes(ranNum.ToString());
            string test = Convert.ToBase64String(encryted);

            bool aprueba;
            if (nota >= 98)
            {
                aprueba = true;

                if (nivel < 47)
                {
                    nivel += 2;
                }
                else
                {
                    switch (nivel)
                    {
                        case 47:
                            nivel = 90;
                            break;
                        case 48:
                            nivel = 144;
                            break;
                        case 90:
                            nivel = 145;
                            break;
                        case 144:
                            nivel = 146;
                            break;
                        case 145:
                            nivel = 146;
                            break;
                        case 146:
                            finalizar = true;
                            break;
                        default:
                            break;
                    }
                }

            }
            else if (nota >= 79)
            {
                aprueba = true;

                if (nivel < 48)
                {
                    nivel++;
                }
                else
                {
                    switch (nivel)
                    {
                        case 48:
                            nivel = 90;
                            break;
                        case 90:
                            nivel = 144;
                            break;
                        case 144:
                            nivel = 145;
                            break;
                        case 145:
                            nivel = 146;
                            break;
                        case 146:
                            finalizar = true;
                            break;
                        default:
                            break;
                    }
                }

            }
            else
            {
                aprueba = false;
            }

            encryted = System.Text.Encoding.Unicode.GetBytes(nivel.ToString());
            string nivelTest = Convert.ToBase64String(encryted);


            string estadoDiagnostico;
            string nivelNombre = ndiagnostico.NivelNombre(nivel);

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
               // lead ???????????
            }

            ndiagnostico.ActualizarEstado(diagnosticoID, nivel, estadoDiagnostico);
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