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
    public partial class PreAdvanced : System.Web.UI.Page
    {
        public void ValidaTest()
        {
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
                            case 5:
                                Pregunta01_05.Visible = true;
                                Pregunta01op05.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 6:
                                Pregunta01_06.Visible = true;
                                Pregunta01op06.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 7:
                                Pregunta01_07.Visible = true;
                                Pregunta01op07.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 8:
                                Pregunta01_08.Visible = true;
                                Pregunta01op08.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 9:
                                Pregunta01_09.Visible = true;
                                Pregunta01op09.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 10:
                                Pregunta01_10.Visible = true;
                                Pregunta01op10.Text = data.Rows[i]["respuestaNombre"].ToString();
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
                            case 5:
                                Pregunta02_05.Visible = true;
                                Pregunta02op05.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 6:
                                Pregunta02_06.Visible = true;
                                Pregunta02op06.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 7:
                                Pregunta02_07.Visible = true;
                                Pregunta02op07.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 8:
                                Pregunta02_08.Visible = true;
                                Pregunta02op08.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 9:
                                Pregunta02_09.Visible = true;
                                Pregunta02op09.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 10:
                                Pregunta02_10.Visible = true;
                                Pregunta02op10.Text = data.Rows[i]["respuestaNombre"].ToString();
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
                            case 5:
                                Pregunta03_05.Visible = true;
                                Pregunta03op05.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 6:
                                Pregunta03_06.Visible = true;
                                Pregunta03op06.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 7:
                                Pregunta03_07.Visible = true;
                                Pregunta03op07.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 8:
                                Pregunta03_08.Visible = true;
                                Pregunta03op08.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 9:
                                Pregunta03_09.Visible = true;
                                Pregunta03op09.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 10:
                                Pregunta03_10.Visible = true;
                                Pregunta03op10.Text = data.Rows[i]["respuestaNombre"].ToString();
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
                            case 5:
                                Pregunta04_05.Visible = true;
                                Pregunta04op05.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 6:
                                Pregunta04_06.Visible = true;
                                Pregunta04op06.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 7:
                                Pregunta04_07.Visible = true;
                                Pregunta04op07.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 8:
                                Pregunta04_08.Visible = true;
                                Pregunta04op08.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 9:
                                Pregunta04_09.Visible = true;
                                Pregunta04op09.Text = data.Rows[i]["respuestaNombre"].ToString();
                                break;
                            case 10:
                                Pregunta04_10.Visible = true;
                                Pregunta04op10.Text = data.Rows[i]["respuestaNombre"].ToString();
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

                            if (nivel == 90)
                            {
                                switch (test)
                                {
                                    case 1:
                                        LabelTituloOpciones.Text = "Match each word to the correct meaning.";
                                        break;
                                    case 2:
                                        LabelTituloOpciones.Text = "Choose the 1 word or phrase that best completes the sentence.";
                                        break;

                                    case 3:
                                        LabelTituloOpciones.Text = "Choose the definition that matches the word(s) in CAPITALS";
                                        break;
                                    default:
                                        break;
                                }


                                LabelQuestion.Text = "Pre-Advanced 1 | Question 01";
                            }

                            if (nivel == 144)
                            {
                                switch (test)
                                {
                                    case 1:
                                        LabelTituloOpciones.Text = "Match the word in CAPITALS to the correct definitions.";
                                        break;
                                    case 2:
                                        LabelTituloOpciones.Text = "Match the word in CAPITALS to the correct definitions.";
                                        break;

                                    case 3:
                                        LabelTituloOpciones.Text = "Match each word to the correct description, explanation, example, or purpose.";
                                        break;
                                    default:
                                        break;
                                }

                                LabelQuestion.Text = "Pre-Advanced 2 | Question 01";
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
            string test = "Pre-Advanced 1 |";

            if (nivel == 90)
            {
                test = "Pre-Advanced 1 |";
            }

            if (nivel == 144)
            {
                test = "Pre-Advanced 2 |";
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

                    if (nivel == 90)
                    {
                        switch (tipo)
                        {
                            case 1:
                                LabelTituloAudio.Text = "Listen to the speaker. Match each cause to the correct result.";
                                myaudio.Src = "Audios/preadvanced1_1.mp3";
                                break;
                            case 2:
                                LabelTituloAudio.Text = "Listen to the conversation, read the questions. Choose the correct option.";
                                myaudio.Src = "Audios/preadvanced1_2_a.mp3";
                                break;
                            case 3:
                                LabelTituloAudio.Text = "MAIN IDEAS. Listen to the conversation. Answer true or false.";
                                myaudio.Src = "Audios/preadvanced1_3.mp3";
                                break;
                            default:
                                break;
                        }
                    }

                    if (nivel == 144)
                    {
                        switch (tipo)
                        {
                            case 1:
                                LabelTituloAudio.Text = "Listen to the conversation. Answer true or false.";
                                myaudio.Src = "Audios/preadvanced2_1.mp3";
                                break;
                            case 2:
                                LabelTituloAudio.Text = "Listen to the conversation. Answer true or false.";
                                myaudio.Src = "Audios/preadvanced2_2.mp3";
                                break;
                            case 3:
                                LabelTituloAudio.Text = "Listen to the conversation. Answer true or false.";
                                myaudio.Src = "Audios/preadvanced2_3.mp3";
                                break;
                            default:
                                break;
                        }
                    }

                    break;
                case 6:
                    titulo_audio.Visible = true;
                    div_audio.Visible = true;
                    pregunta_06.Visible = true;

                    LabelQuestion.Text = test + " Question 06";

                    if (nivel == 90)
                    {
                        switch (tipo)
                        {
                            case 1:
                                LabelTituloAudio.Text = "Listen to the speaker. Match each cause to the correct result.";
                                myaudio.Src = "Audios/preadvanced1_1.mp3";
                                break;
                            case 2:
                                LabelTituloAudio.Text = "Listen to the conversation, read the questions. Choose the correct option.";
                                myaudio.Src = "Audios/preadvanced1_2_a.mp3";
                                break;
                            case 3:
                                LabelTituloAudio.Text = "MAIN IDEAS. Listen to the conversation. Answer true or false.";
                                myaudio.Src = "Audios/preadvanced1_3.mp3";
                                break;
                            default:
                                break;
                        }
                    }

                    if (nivel == 144)
                    {
                        switch (tipo)
                        {
                            case 1:
                                LabelTituloAudio.Text = "Listen to the conversation. Answer true or false.";
                                myaudio.Src = "Audios/preadvanced2_1.mp3";
                                break;
                            case 2:
                                LabelTituloAudio.Text = "Listen to the conversation. Answer true or false.";
                                myaudio.Src = "Audios/preadvanced2_2.mp3";
                                break;
                            case 3:
                                LabelTituloAudio.Text = "Listen to the conversation. Answer true or false.";
                                myaudio.Src = "Audios/preadvanced2_3.mp3";
                                break;
                            default:
                                break;
                        }
                    }
                    break;
                case 7:
                    titulo_audio.Visible = true;
                    div_audio.Visible = true;
                    pregunta_07.Visible = true;
                    LabelQuestion.Text = test + " Question 07";

                    if (nivel == 90)
                    {
                        switch (tipo)
                        {
                            case 1:
                                LabelTituloAudio.Text = "Listen to the speaker. Match each cause to the correct result.";
                                myaudio.Src = "Audios/preadvanced1_1.mp3";
                                break;
                            case 2:
                                LabelTituloAudio.Text = "MAIN IDEAS. Listen to the conversation. Answer true or false.";
                                myaudio.Src = "Audios/preadvanced1_2_b.mp3";
                                break;
                            case 3:
                                LabelTituloAudio.Text = "Listen to the conversation, read the questions. Choose the correct option.";
                                myaudio.Src = "Audios/preadvanced1_3.mp3";
                                break;
                            default:
                                break;
                        }
                    }

                    if (nivel == 144)
                    {
                        switch (tipo)
                        {
                            case 1:
                                LabelTituloAudio.Text = "Listen to the conversation. Answer true or false.";
                                myaudio.Src = "Audios/preadvanced2_1.mp3";
                                break;
                            case 2:
                                LabelTituloAudio.Text = "Listen to the conversation. Answer true or false.";
                                myaudio.Src = "Audios/preadvanced2_2.mp3";
                                break;
                            case 3:
                                LabelTituloAudio.Text = "Listen to the conversation. Answer true or false.";
                                myaudio.Src = "Audios/preadvanced2_3.mp3";
                                break;
                            default:
                                break;
                        }
                    }
                    break;
                case 8:
                    titulo_audio.Visible = true;
                    div_audio.Visible = true;
                    pregunta_08.Visible = true;
                    LabelQuestion.Text = test + " Question 08";

                    if (nivel == 90)
                    {
                        switch (tipo)
                        {
                            case 1:
                                LabelTituloAudio.Text = "Listen to the speaker. Match each cause to the correct result.";
                                myaudio.Src = "Audios/preadvanced1_1.mp3";
                                break;
                            case 2:
                                LabelTituloAudio.Text = "MAIN IDEAS. Listen to the conversation. Answer true or false.";
                                myaudio.Src = "Audios/preadvanced1_2_b.mp3";
                                break;
                            case 3:
                                LabelTituloAudio.Text = "Listen to the conversation, read the questions. Choose the correct option.";
                                myaudio.Src = "Audios/preadvanced1_3.mp3";
                                break;
                            default:
                                break;
                        }
                    }

                    if (nivel == 144)
                    {
                        switch (tipo)
                        {
                            case 1:
                                LabelTituloAudio.Text = "Listen to the conversation. Answer true or false.";
                                myaudio.Src = "Audios/preadvanced2_1.mp3";
                                break;
                            case 2:
                                LabelTituloAudio.Text = "Listen to the conversation. Answer true or false.";
                                myaudio.Src = "Audios/preadvanced2_2.mp3";
                                break;
                            case 3:
                                LabelTituloAudio.Text = "Listen to the conversation. Answer true or false.";
                                myaudio.Src = "Audios/preadvanced2_3.mp3";
                                break;
                            default:
                                break;
                        }
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

            if (Pregunta01op05.Checked)
            {
                LabelPregunta01R.Text = Pregunta01op05.Text;
            }

            if (Pregunta01op06.Checked)
            {
                LabelPregunta01R.Text = Pregunta01op06.Text;
            }

            if (Pregunta01op07.Checked)
            {
                LabelPregunta01R.Text = Pregunta01op07.Text;
            }

            if (Pregunta01op08.Checked)
            {
                LabelPregunta01R.Text = Pregunta01op08.Text;
            }

            if (Pregunta01op09.Checked)
            {
                LabelPregunta01R.Text = Pregunta01op09.Text;
            }

            if (Pregunta01op10.Checked)
            {
                LabelPregunta01R.Text = Pregunta01op10.Text;
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


            if (Pregunta02op05.Checked)
            {
                LabelPregunta02R.Text = Pregunta02op05.Text;
            }



            if (Pregunta02op06.Checked)
            {
                LabelPregunta02R.Text = Pregunta02op06.Text;
            }

            if (Pregunta02op07.Checked)
            {
                LabelPregunta02R.Text = Pregunta02op07.Text;
            }

            if (Pregunta02op08.Checked)
            {
                LabelPregunta02R.Text = Pregunta02op08.Text;
            }

            if (Pregunta02op09.Checked)
            {
                LabelPregunta02R.Text = Pregunta02op09.Text;
            }

            if (Pregunta02op10.Checked)
            {
                LabelPregunta02R.Text = Pregunta02op10.Text;
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


            if (Pregunta03op05.Checked)
            {
                LabelPregunta03R.Text = Pregunta03op05.Text;
            }


            if (Pregunta03op06.Checked)
            {
                LabelPregunta03R.Text = Pregunta03op06.Text;
            }

            if (Pregunta03op07.Checked)
            {
                LabelPregunta03R.Text = Pregunta03op07.Text;
            }

            if (Pregunta03op08.Checked)
            {
                LabelPregunta03R.Text = Pregunta03op08.Text;
            }

            if (Pregunta03op09.Checked)
            {
                LabelPregunta03R.Text = Pregunta03op09.Text;
            }

            if (Pregunta03op10.Checked)
            {
                LabelPregunta03R.Text = Pregunta03op10.Text;
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

            if (Pregunta04op05.Checked)
            {
                LabelPregunta04R.Text = Pregunta04op05.Text;
            }


            if (Pregunta04op06.Checked)
            {
                LabelPregunta04R.Text = Pregunta04op06.Text;
            }

            if (Pregunta04op07.Checked)
            {
                LabelPregunta04R.Text = Pregunta04op07.Text;
            }

            if (Pregunta04op08.Checked)
            {
                LabelPregunta04R.Text = Pregunta04op08.Text;
            }

            if (Pregunta04op09.Checked)
            {
                LabelPregunta04R.Text = Pregunta04op09.Text;
            }

            if (Pregunta04op10.Checked)
            {
                LabelPregunta04R.Text = Pregunta04op10.Text;
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