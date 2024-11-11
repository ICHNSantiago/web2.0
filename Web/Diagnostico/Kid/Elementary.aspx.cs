using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web.Diagnostico.Kid
{
    public partial class Elementary : System.Web.UI.Page
    {
        public void ValidaTest()
        {

            string respuesta;
            if (LabelTestNivel.Text == "16")
            {
                LabelPregunta03R.Text = TextBox_03_01.Text + TextBox_03_02.Text + TextBox_03_03.Text + TextBox_03_04.Text + TextBox_03_05.Text + TextBox_03_06.Text;

                respuesta = LabelPregunta01R.Text + "/" + LabelPregunta02R.Text + "/" + LabelPregunta03R.Text + "/" + LabelPregunta04R.Text;
            }
            else
            {
                LabelPregunta02R.Text = TextBox_02_01.Text + TextBox_02_02.Text + TextBox_02_03.Text;
                LabelPregunta04R.Text = TextBox_04_01.Text + TextBox_04_02.Text + TextBox_04_03.Text + TextBox_04_04.Text + TextBox_04_05.Text; 

               respuesta = LabelPregunta01R.Text + "/" + LabelPregunta02R.Text + "/" + LabelPregunta03R.Text + "/" + LabelPregunta04R.Text;
            }


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
            DataTable data = ndiagnostico.PruebaKids(nivel, test);

            for (int i = 0; i < data.Rows.Count; i++)
            {
                int pregunta = int.Parse(data.Rows[i]["idPregunta"].ToString());
                int opcion;
                switch (pregunta)
                {
                    case 1:
                        LabelPregunta01.Text = data.Rows[i]["preguntaNombre"].ToString();
                        opcion = int.Parse(data.Rows[i]["idOpcion"].ToString());

                        if (nivel == 16)
                        {
                            img_01_16.Visible = true;
                            div_01_opciones.Visible = true;
                            div_01_imagenes.Visible = false;
                        }
                        else
                        {
                            div_01_opciones.Visible = false;
                            div_01_imagenes.Visible = true;
                        }

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

                        if (nivel == 16)
                        {
                            div_02_opciones.Visible = true;
                            div_02_texto.Visible = false;
                            img_02_16.Visible = true;

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

                        }
                        else
                        {
                            div_02_opciones.Visible = false;
                            div_02_texto.Visible = true;
                        }
                        break;
                    case 3:
                        LabelPregunta03.Text = data.Rows[i]["preguntaNombre"].ToString();
                        opcion = int.Parse(data.Rows[i]["idOpcion"].ToString());

                        if (nivel == 16)
                        {
                            div_03_texto.Visible = true;
                            div_03_opciones.Visible = false;
                            table_opciones.Visible = false;
                            img_03_16.Visible = true;
                        }
                        else
                        {
                            div_03_opciones.Visible = true;
                            div_03_texto.Visible = false;
                            table_opciones.Visible = true;
                            img_03_17.Visible = true;

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
                        }
                        break;
                    case 4:
                        LabelPregunta04.Text = data.Rows[i]["preguntaNombre"].ToString();
                        opcion = int.Parse(data.Rows[i]["idOpcion"].ToString());

                        if (nivel == 16)
                        {
                            div_04_texto.Visible = false;
                            div_04_opciones.Visible = true;

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

                        }
                        else
                        {
                            div_04_texto.Visible = true;
                            div_04_opciones.Visible = false;
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

                            if (nivel == 16)
                            {
                                LabelQuestion.Text = "Elementary 1 | Question 01";
                            }

                            if (nivel == 17)
                            {
                                LabelQuestion.Text = "Elementary 2 | Question 01";
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

            if (nivel == 16)
            {
                test = "Elementary 1 |";
            }
            if (nivel == 17)
            {
                test = "Elementary 2 |";
            }

            pregunta_01.Visible = false;
            pregunta_02.Visible = false;
            pregunta_03.Visible = false;
            pregunta_04.Visible = false;

            int pregunta = int.Parse(LabelPreguntaNumber.Text);
            pregunta++;

            switch (pregunta)
            {
                case 1:

                    pregunta_01.Visible = true;
                    LabelQuestion.Text = test + " Question 01";
                    break;
                case 2:

                    pregunta_02.Visible = true;
                    LabelQuestion.Text = test + " Question 02";
                    break;
                case 3:

                    pregunta_03.Visible = true;
                    LabelQuestion.Text = test + " Question 03";
                    break;
                case 4:

                    pregunta_04.Visible = true;
                    LabelQuestion.Text = test + " Question 04";
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

            if (Pregunta01op01_img.Checked)
            {
                LabelPregunta01R.Text = "A";
            }

            if (Pregunta01op02_img.Checked)
            {
                LabelPregunta01R.Text = "B";
            }

            if (Pregunta01op03_img.Checked)
            {
                LabelPregunta01R.Text = "C";
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
    }
}