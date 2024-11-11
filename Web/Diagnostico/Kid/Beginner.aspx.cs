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
    public partial class Beginner : System.Web.UI.Page
    {
        public void ValidaTest()
        {
            string respuesta;

            if (LabelTestNivel.Text == "14")
            {
                respuesta = LabelPregunta01R.Text + "/" + LabelPregunta02R.Text + "/" + LabelPregunta03R.Text + "/" + LabelPregunta04R.Text; 
            }
            else
            {
                LabelPregunta02R.Text = TextBoxPregunta02_op_01.Text + " " + TextBoxPregunta02_op_02.Text;

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

                        if (nivel == 14)
                        {
                            img_01_14.Visible = true;
                        }

                        if (nivel == 15)
                        {
                            img_01_15.Visible = true;
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

                        if (nivel == 14)
                        {
                            img_02_14.Visible = true;
                            tabla_opciones.Visible = true;
                            tabla_texto.Visible = false;
                        }

                        if (nivel == 15)
                        {
                            img_02_15.Visible = true;
                            tabla_opciones.Visible = false;
                            tabla_texto.Visible = true;
                        }

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

                        if (nivel == 14)
                        {
                            div_03_imagenes.Visible = true;
                            div_03_opciones.Visible = false;
                        }

                        if (nivel == 15)
                        {
                            div_03_imagenes.Visible = false;
                            div_03_opciones.Visible = true;

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

                        if (nivel == 14)
                        {
                            div_04_imagenes.Visible = true;
                            div_04_opciones.Visible = false;
                        }

                        if (nivel == 15)
                        {
                            div_04_imagenes.Visible = false;
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

                            if (nivel == 14)
                            {
                                LabelQuestion.Text = "Beginner 1 | Question 01";
                            }

                            if (nivel == 15)
                            {
                                LabelQuestion.Text = "Beginner 2 | Question 01";
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
            string test = "Beginner 1 |";

            if (nivel == 14)
            {
                test = "Beginner 1 |";
            }

            if (nivel == 15)
            {
                test = "Beginner 2 |";
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
            if (Pregunta03op01_img.Checked)
            {
                LabelPregunta03R.Text = "book";
            }

            if (Pregunta03op02_img.Checked)
            {
                LabelPregunta03R.Text = "pencil";
            }

            if (Pregunta03op03_img.Checked)
            {
                LabelPregunta03R.Text = "desk";
            }

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
            if (Pregunta04op01_img.Checked)
            {
                LabelPregunta04R.Text = "doll";
            }

            if (Pregunta04op02_img.Checked)
            {
                LabelPregunta04R.Text = "robot";
            }

            if (Pregunta04op03_img.Checked)
            {
                LabelPregunta04R.Text = "car";
            }

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