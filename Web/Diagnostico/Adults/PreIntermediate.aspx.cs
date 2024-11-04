using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web.Diagnostico.Adults
{
    public partial class PreIntermediate : System.Web.UI.Page
    {
        public void ValidaTest()
        {
            int varNivel = int.Parse(LabelTestNivel.Text);

            if (varNivel == 43)
            {
                LabelPregunta05R.Text = Pregunta05op01_text.Text;
                LabelPregunta06R.Text = Pregunta06op01_text.Text;
                LabelPregunta07R.Text = Pregunta07op01_text.Text;
                LabelPregunta08R.Text = Pregunta08op01_text.Text;
            }

            string respuesta = LabelPregunta01R.Text + "/" + LabelPregunta02R.Text + "/" + LabelPregunta03R.Text + "/" + LabelPregunta04R.Text + "/" +
                LabelPregunta05R.Text + "/" + LabelPregunta06R.Text + "/" + LabelPregunta07R.Text + "/" + LabelPregunta08R.Text;


            byte[] encryted = System.Text.Encoding.Unicode.GetBytes(respuesta);
            respuesta = Convert.ToBase64String(encryted);

            encryted = System.Text.Encoding.Unicode.GetBytes(LabelTestNivel.Text);
            string nivel = Convert.ToBase64String(encryted);

            encryted = System.Text.Encoding.Unicode.GetBytes(LabelTestTipo.Text);
            string tipo = Convert.ToBase64String(encryted);

            Response.Redirect("Validador.aspx?nivel=" + nivel + "&test=" + tipo + "&validar=" + respuesta);
        }

        public void CargaTest(int nivel, int test)
        {
            Ndiagnostico ndiagnostico = new Ndiagnostico();
            DataTable data = ndiagnostico.PruebaAdultos(nivel, test);

            for (int i = 0; i < data.Rows.Count; i++)
            {
                int pregunta = int.Parse(data.Rows[i]["idPregunta"].ToString());
                int opcion;
                switch (pregunta)
                {
                    case 1:
                        LabelPregunta01.Text = data.Rows[i]["preguntaNombre"].ToString();
                        opcion = int.Parse(data.Rows[i]["idOpcion"].ToString());

                        switch (opcion)
                        {
                            case 1:
                                Pregunta01_01.Visible = true;
                                Pregunta01op01.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 2:
                                Pregunta01_02.Visible = true;
                                Pregunta01op02.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 3:
                                Pregunta01_03.Visible = true;
                                Pregunta01op03.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 4:
                                Pregunta01_04.Visible = true;
                                Pregunta01op04.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            default:
                                break;
                        }
                        break;
                    case 2:
                        LabelPregunta02.Text = data.Rows[i]["preguntaNombre"].ToString();
                        opcion = int.Parse(data.Rows[i]["idOpcion"].ToString());

                        switch (opcion)
                        {
                            case 1:
                                Pregunta02_01.Visible = true;
                                Pregunta02op01.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 2:
                                Pregunta02_02.Visible = true;
                                Pregunta02op02.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 3:
                                Pregunta02_03.Visible = true;
                                Pregunta02op03.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 4:
                                Pregunta02_04.Visible = true;
                                Pregunta02op04.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            default:
                                break;
                        }
                        break;
                    case 3:
                        LabelPregunta03.Text = data.Rows[i]["preguntaNombre"].ToString();
                        opcion = int.Parse(data.Rows[i]["idOpcion"].ToString());

                        switch (opcion)
                        {
                            case 1:
                                Pregunta03_01.Visible = true;
                                Pregunta03op01.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 2:
                                Pregunta03_02.Visible = true;
                                Pregunta03op02.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 3:
                                Pregunta03_03.Visible = true;
                                Pregunta03op03.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 4:
                                Pregunta03_04.Visible = true;
                                Pregunta03op04.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            default:
                                break;
                        }
                        break;
                    case 4:
                        LabelPregunta04.Text = data.Rows[i]["preguntaNombre"].ToString();
                        opcion = int.Parse(data.Rows[i]["idOpcion"].ToString());

                        switch (opcion)
                        {
                            case 1:
                                Pregunta04_01.Visible = true;
                                Pregunta04op01.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 2:
                                Pregunta04_02.Visible = true;
                                Pregunta04op02.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 3:
                                Pregunta04_03.Visible = true;
                                Pregunta04op03.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 4:
                                Pregunta04_04.Visible = true;
                                Pregunta04op04.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            default:
                                break;
                        }
                        break;
                    case 5:
                        LabelPregunta05.Text = data.Rows[i]["preguntaNombre"].ToString();
                        opcion = int.Parse(data.Rows[i]["idOpcion"].ToString());

                        switch (opcion)
                        {
                            case 1:
                                Pregunta05_01.Visible = true;
                                Pregunta05op01.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 2:
                                Pregunta05_02.Visible = true;
                                Pregunta05op02.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 3:
                                Pregunta05_03.Visible = true;
                                Pregunta05op03.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 4:
                                Pregunta05_04.Visible = true;
                                Pregunta05op04.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            default:
                                break;
                        }
                        break;
                    case 6:
                        LabelPregunta06.Text = data.Rows[i]["preguntaNombre"].ToString();
                        opcion = int.Parse(data.Rows[i]["idOpcion"].ToString());

                        switch (opcion)
                        {
                            case 1:
                                Pregunta06_01.Visible = true;
                                Pregunta06op01.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 2:
                                Pregunta06_02.Visible = true;
                                Pregunta06op02.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 3:
                                Pregunta06_03.Visible = true;
                                Pregunta06op03.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 4:
                                Pregunta06_04.Visible = true;
                                Pregunta06op04.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            default:
                                break;
                        }
                        break;
                    case 7:
                        LabelPregunta07.Text = data.Rows[i]["preguntaNombre"].ToString();
                        opcion = int.Parse(data.Rows[i]["idOpcion"].ToString());

                        switch (opcion)
                        {
                            case 1:
                                Pregunta07_01.Visible = true;
                                Pregunta07op01.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 2:
                                Pregunta07_02.Visible = true;
                                Pregunta07op02.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 3:
                                Pregunta07_03.Visible = true;
                                Pregunta07op03.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 4:
                                Pregunta07_04.Visible = true;
                                Pregunta07op04.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            default:
                                break;
                        }
                        break;
                    case 8:
                        LabelPregunta08.Text = data.Rows[i]["preguntaNombre"].ToString();
                        opcion = int.Parse(data.Rows[i]["idOpcion"].ToString());

                        switch (opcion)
                        {
                            case 1:
                                Pregunta08_01.Visible = true;
                                Pregunta08op01.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 2:
                                Pregunta08_02.Visible = true;
                                Pregunta08op02.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 3:
                                Pregunta08_03.Visible = true;
                                Pregunta08op03.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 4:
                                Pregunta08_04.Visible = true;
                                Pregunta08op04.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            default:
                                break;
                        }
                        break;
                    default:
                        break;
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    string token = Convert.ToString(Request["nivel"]);
                    byte[] decryted = Convert.FromBase64String(token);
                    string result = System.Text.Encoding.Unicode.GetString(decryted);

                    token = Convert.ToString(Request["test"]);
                    decryted = Convert.FromBase64String(token);
                    string result2 = System.Text.Encoding.Unicode.GetString(decryted);

                    if (int.TryParse(result, out int nivel))
                    {
                        if (int.TryParse(result2, out int test))
                        {
                            LabelTestNivel.Text = nivel.ToString();
                            LabelTestTipo.Text = test.ToString();
                            CargaTest(nivel, test);

                            if (nivel == 43)
                            {
                                LabelQuestion.Text = "Pre-Intermediate 1 | Question 01";
                            }

                            if (nivel == 44)
                            {
                                LabelQuestion.Text = "Pre-Intermediate 2 | Question 01";
                            }

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

        protected void LinkButtonNext_Click(object sender, EventArgs e)
        {
            int nivel = int.Parse(LabelTestNivel.Text);
            int tipo = int.Parse(LabelTestTipo.Text);
            string test = string.Empty;

            if (nivel == 43)
            {
                test = "Pre-Intermediate 1 |";
            }
            if (nivel == 44)
            {
                test = "Pre-Intermediate 2 |";
            }

            pregunta_01.Visible = false;
            pregunta_02.Visible = false;
            pregunta_03.Visible = false;
            pregunta_04.Visible = false;
            pregunta_05.Visible = false;
            pregunta_06.Visible = false;
            pregunta_07.Visible = false;
            pregunta_08.Visible = false;
            titulo_opcion.Visible = false;
            titulo_audio.Visible = false;
            div_audio.Visible = false;

            int pregunta = int.Parse(LabelPreguntaNumber.Text);
            pregunta++;

            switch (pregunta)
            {
                case 1:
                    titulo_opcion.Visible = true;
                    pregunta_01.Visible = true;
                    LabelQuestion.Text = test + " Question 01";
                    break;
                case 2:
                    titulo_opcion.Visible = true;
                    pregunta_02.Visible = true;
                    LabelQuestion.Text = test + " Question 02";
                    break;
                case 3:
                    titulo_opcion.Visible = true;
                    pregunta_03.Visible = true;
                    LabelQuestion.Text = test + " Question 03";
                    break;
                case 4:
                    titulo_opcion.Visible = true;
                    pregunta_04.Visible = true;
                    LabelQuestion.Text = test + " Question 04";
                    break;
                case 5:
                    titulo_audio.Visible = true;
                    div_audio.Visible = true;
                    pregunta_05.Visible = true;
                    LabelQuestion.Text = test + " Question 05";

                    if (nivel == 43)
                    {
                        Pregunta05_opciones.Visible = false;
                        Pregunta05_texto.Visible = true;
                        myaudio.Src = "Audios/preintermediate1.mp3";
                    }

                    if (nivel == 44)
                    {
                        Pregunta05_opciones.Visible = true;
                        Pregunta05_texto.Visible = false;
                        myaudio.Src = "Audios/preintermediate2.mp3";
                    }

                    break;
                case 6:
                    titulo_audio.Visible = true;
                    div_audio.Visible = true;
                    pregunta_06.Visible = true;

                    LabelQuestion.Text = test + " Question 06";

                    if (nivel == 43)
                    {
                        pregunta_06_opciones.Visible = false;
                        pregunta_06_texto.Visible = true;
                        myaudio.Src = "Audios/preintermediate1.mp3";
                    }

                    if (nivel == 44)
                    {
                        pregunta_06_opciones.Visible = true;
                        pregunta_06_texto.Visible = false;
                        myaudio.Src = "Audios/preintermediate2.mp3";
                    }
                    break;
                case 7:
                    titulo_audio.Visible = true;
                    div_audio.Visible = true;
                    pregunta_07.Visible = true;
                    LabelQuestion.Text = test + " Question 07";

                    if (nivel == 43)
                    {
                        pregunta_07_opciones.Visible = false;
                        pregunta_07_texto.Visible = true;
                        myaudio.Src = "Audios/preintermediate1.mp3";
                    }

                    if (nivel == 44)
                    {
                        pregunta_07_opciones.Visible = true;
                        pregunta_07_texto.Visible = false;
                        myaudio.Src = "Audios/preintermediate2.mp3";
                    }
                    break;
                case 8:
                    titulo_audio.Visible = true;
                    div_audio.Visible = true;
                    pregunta_08.Visible = true;
                    LabelQuestion.Text = test + " Question 08";

                    if (nivel == 43)
                    {
                        pregunta_08_opciones.Visible = false;
                        pregunta_08_texto.Visible = true;
                        myaudio.Src = "Audios/preintermediate1.mp3";
                    }

                    if (nivel == 44)
                    {
                        pregunta_08_opciones.Visible = true;
                        pregunta_08_texto.Visible = false;
                        myaudio.Src = "Audios/preintermediate2.mp3";
                    }
                    break;
                default:
                    ValidaTest();
                    break;
            }

            LabelPreguntaNumber.Text = pregunta.ToString();
        }

        protected void Pregunta01_CheckedChanged(object sender, EventArgs e)
        {
            if (Pregunta01op01.Checked)
            {
                LabelPregunta01R.Text = Pregunta01op01.Text;
            }

            if (Pregunta01op02.Checked)
            {
                LabelPregunta01R.Text = Pregunta01op02.Text;
            }

            if (Pregunta01op03.Checked)
            {
                LabelPregunta01R.Text = Pregunta01op03.Text;
            }

            if (Pregunta01op04.Checked)
            {
                LabelPregunta01R.Text = Pregunta01op04.Text;
            }
        }

        protected void Pregunta02_CheckedChanged(object sender, EventArgs e)
        {
            if (Pregunta02op01.Checked)
            {
                LabelPregunta02R.Text = Pregunta02op01.Text;
            }

            if (Pregunta02op02.Checked)
            {
                LabelPregunta02R.Text = Pregunta02op02.Text;
            }

            if (Pregunta02op03.Checked)
            {
                LabelPregunta02R.Text = Pregunta02op03.Text;
            }

            if (Pregunta02op04.Checked)
            {
                LabelPregunta02R.Text = Pregunta02op04.Text;
            }
        }

        protected void Pregunta03_CheckedChanged(object sender, EventArgs e)
        {
            if (Pregunta03op01.Checked)
            {
                LabelPregunta03R.Text = Pregunta03op01.Text;
            }

            if (Pregunta03op02.Checked)
            {
                LabelPregunta03R.Text = Pregunta03op02.Text;
            }

            if (Pregunta03op03.Checked)
            {
                LabelPregunta03R.Text = Pregunta03op03.Text;
            }

            if (Pregunta03op04.Checked)
            {
                LabelPregunta03R.Text = Pregunta03op04.Text;
            }
        }

        protected void Pregunta04_CheckedChanged(object sender, EventArgs e)
        {
            if (Pregunta04op01.Checked)
            {
                LabelPregunta04R.Text = Pregunta04op01.Text;
            }

            if (Pregunta04op02.Checked)
            {
                LabelPregunta04R.Text = Pregunta04op02.Text;
            }

            if (Pregunta04op03.Checked)
            {
                LabelPregunta04R.Text = Pregunta04op03.Text;
            }

            if (Pregunta04op04.Checked)
            {
                LabelPregunta04R.Text = Pregunta04op04.Text;
            }
        }

        protected void Pregunta05_CheckedChanged(object sender, EventArgs e)
        {
            if (Pregunta05op01.Checked)
            {
                LabelPregunta05R.Text = Pregunta05op01.Text;
            }

            if (Pregunta05op02.Checked)
            {
                LabelPregunta05R.Text = Pregunta05op02.Text;
            }

            if (Pregunta05op03.Checked)
            {
                LabelPregunta05R.Text = Pregunta05op03.Text;
            }

            if (Pregunta05op04.Checked)
            {
                LabelPregunta05R.Text = Pregunta05op04.Text;
            }
        }

        protected void Pregunta06_CheckedChanged(object sender, EventArgs e)
        {
            if (Pregunta06op01.Checked)
            {
                LabelPregunta06R.Text = Pregunta06op01.Text;
            }

            if (Pregunta06op02.Checked)
            {
                LabelPregunta06R.Text = Pregunta06op02.Text;
            }

            if (Pregunta06op03.Checked)
            {
                LabelPregunta06R.Text = Pregunta06op03.Text;
            }

            if (Pregunta06op04.Checked)
            {
                LabelPregunta06R.Text = Pregunta06op04.Text;
            }
        }

        protected void Pregunta07_CheckedChanged(object sender, EventArgs e)
        {
            if (Pregunta07op01.Checked)
            {
                LabelPregunta07R.Text = Pregunta07op01.Text;
            }

            if (Pregunta07op02.Checked)
            {
                LabelPregunta07R.Text = Pregunta07op02.Text;
            }

            if (Pregunta07op03.Checked)
            {
                LabelPregunta07R.Text = Pregunta07op03.Text;
            }

            if (Pregunta07op04.Checked)
            {
                LabelPregunta07R.Text = Pregunta07op04.Text;
            }
        }

        protected void Pregunta08_CheckedChanged(object sender, EventArgs e)
        {
            if (Pregunta08op01.Checked)
            {
                LabelPregunta08R.Text = Pregunta08op01.Text;
            }

            if (Pregunta08op02.Checked)
            {
                LabelPregunta08R.Text = Pregunta08op02.Text;
            }

            if (Pregunta08op03.Checked)
            {
                LabelPregunta08R.Text = Pregunta08op03.Text;
            }

            if (Pregunta08op04.Checked)
            {
                LabelPregunta08R.Text = Pregunta08op04.Text;
            }
        }
    }
}