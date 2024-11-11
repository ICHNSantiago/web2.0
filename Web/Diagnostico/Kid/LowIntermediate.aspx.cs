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
    public partial class LowIntermediate : System.Web.UI.Page
    {
        public void ValidaTest()
        {
            int varNivel = int.Parse(LabelTestNivel.Text);
            string respuesta;
            if (varNivel == 19)
            {
                string respuesta02 = string.Empty;

                if (CheckBox02op01.Checked) { respuesta02 += CheckBox02op01.Text; }
                if (CheckBox02op02.Checked) { respuesta02 += " " + CheckBox02op02.Text; }
                if (CheckBox02op03.Checked) { respuesta02 += " " + CheckBox02op03.Text; }
                if (CheckBox02op04.Checked) { respuesta02 += " " + CheckBox02op04.Text; }
                if (CheckBox02op05.Checked) { respuesta02 += " " + CheckBox02op05.Text; }

                string respuesta04_01 = "s" + TextBox04_01_01.Text + TextBox04_01_02.Text + TextBox04_01_03.Text + TextBox04_01_04.Text + TextBox04_01_05.Text;
                string respuesta04_02 = "s" + TextBox04_02_01.Text + TextBox04_02_02.Text + TextBox04_02_03.Text + TextBox04_02_04.Text + TextBox04_02_05.Text;
                string respuesta04_03 = "f" + TextBox04_03_01.Text + TextBox04_03_02.Text + TextBox04_03_03.Text;
                string respuesta04_04 = "w" + TextBox04_04_01.Text + TextBox04_04_02.Text + TextBox04_04_03.Text + TextBox04_04_04.Text + TextBox04_04_05.Text;

                respuesta = TextBox_01_01.Text + "/" + TextBox_01_02.Text + "/" + respuesta02.Trim() + "/" + TextBox_03_01.Text + "/" + TextBox_03_02.Text
                    + "/" + respuesta04_01 + "/" + respuesta04_02 + "/" + respuesta04_03  + "/" + respuesta04_04;
            }
            else
            {
                string respuesta04_01 = "t" + TextBox04_20_01_01.Text + TextBox04_20_01_02.Text + TextBox04_20_01_03.Text + TextBox04_20_01_04.Text + TextBox04_20_01_05.Text + TextBox04_20_01_06.Text + TextBox04_20_01_07.Text + TextBox04_20_01_08.Text;
                string respuesta04_02 = "m" + TextBox04_20_02_01.Text + TextBox04_20_02_02.Text + TextBox04_20_02_03.Text + TextBox04_20_02_04.Text + TextBox04_20_02_05.Text + TextBox04_20_02_06.Text + TextBox04_20_02_07.Text + TextBox04_20_02_08.Text;


                respuesta = LabelPregunta01R.Text + "/" + LabelPregunta02R.Text + "/" + LabelPregunta03R.Text + "/" + respuesta04_01 + "/" + respuesta04_02;
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

                        if (nivel == 19)
                        {
                            div_01_imagenes.Visible = false;
                            div_01_texto.Visible = true;
                        }
                        else
                        {
                            div_01_imagenes.Visible = true;
                            div_01_texto.Visible = false;
                        }

                            break;
                    case 2:
                        LabelPregunta02.Text = data.Rows[i]["preguntaNombre"].ToString();
                        opcion = int.Parse(data.Rows[i]["idOpcion"].ToString());

                        if (nivel == 19)
                        {
                            div_02_opciones.Visible = true;
                            div_02_imagenes.Visible = false;

                            switch (opcion)
                            {
                                case 1:
                                    Tr1.Visible = true;
                                    CheckBox02op01.Text = data.Rows[i]["respuestaNombre"].ToString();
                                    break;
                                case 2:
                                    Tr2.Visible = true;
                                    CheckBox02op02.Text = data.Rows[i]["respuestaNombre"].ToString();
                                    break;
                                case 3:
                                    Tr3.Visible = true;
                                    CheckBox02op03.Text = data.Rows[i]["respuestaNombre"].ToString();
                                    break;
                                case 4:
                                    Tr4.Visible = true;
                                    CheckBox02op04.Text = data.Rows[i]["respuestaNombre"].ToString();
                                    break;
                                case 5:
                                    Tr5.Visible = true;
                                    CheckBox02op05.Text = data.Rows[i]["respuestaNombre"].ToString();
                                    break;
                                default:
                                    break;
                            }
                        }
                        else
                        {
                            div_02_imagenes.Visible = true;
                            div_02_opciones.Visible= false;
                        }
                        break;
                    case 3:
                        LabelPregunta03.Text = data.Rows[i]["preguntaNombre"].ToString();

                        if (nivel == 19)
                        {
                            div_03_texto.Visible = true;
                            div_03_opciones.Visible = false;
                        }
                        else
                        {
                            div_03_texto.Visible = false;
                            div_03_opciones.Visible = true;

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
                        }
                        break;
                    case 4:
                        LabelPregunta04.Text = data.Rows[i]["preguntaNombre"].ToString();

                        if (nivel == 19)
                        {
                            div_04_texto_20.Visible = false;
                            div_04_texto_19.Visible = true;
                        }
                        else
                        {
                            div_04_texto_19.Visible = false;
                            div_04_texto_20.Visible = true;

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

                            if (nivel == 19)
                            {
                                LabelQuestion.Text = "Low-Intermediate 1 | Question 01";
                            }

                            if (nivel == 20)
                            {
                                LabelQuestion.Text = "Low-Intermediate 2 | Question 01";
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

            if (nivel == 19)
            {
                test = "Low-Intermediate 1 |";
            }
            if (nivel == 20)
            {
                test = "Low-Intermediate 2 |";
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
            if (Pregunta01op01_img.Checked)
            {
                LabelPregunta01R.Text = "1";
            }

            if (Pregunta01op02_img.Checked)
            {
                LabelPregunta01R.Text = "2";
            }

            if (Pregunta01op03_img.Checked)
            {
                LabelPregunta01R.Text = "3";
            }          
        }

        protected void Pregunta02_CheckedChanged(object sender, EventArgs e)
        {
            if (Pregunta02op01_img.Checked)
            {
                LabelPregunta02R.Text = "1";
            }

            if (Pregunta02op02_img.Checked)
            {
                LabelPregunta02R.Text = "2";
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

       
    }
}