﻿using Negocio;
using System;
using System.Data;
using System.Web;
using System.Web.Security;

namespace Web
{
    public partial class Contact : System.Web.UI.Page
    {

        public void CrearLead(string nombre, string correo, string fono, string programa)
        {
            string programaSelect = string.Empty;
            switch (programa)
            {
                case "Adultos":
                    programaSelect = "ADULTS REGULAR";
                    break;
                case "Adolescentes":
                    programaSelect = "TEENS";
                    break;
                case "Niñas y Niños":
                    programaSelect = "KIDS";
                    break;
                case "Preescolares":
                    programaSelect = "PREESCOLARES";
                    break;
                case "Empresas":
                    programaSelect = "CORP";
                    break;
                case "Preparación TOEFL":
                    programaSelect = "EXÁMENES EN INGLES";
                    break;
                case "Preparación PTE":
                    programaSelect = "PREPARATIVO PTE";
                    break;
                case "Spring Program Kid":
                    programaSelect = "KIDS SPRING PROGRAM";
                    break;
                case "Spring Program teen":
                    programaSelect = "TEENS SPRING PROGRAM";
                    break;
                default:
                    break;
            }

            string estado = string.Empty;

            if (Request.Cookies["WEB_LEAD_CONTACTO"] != null)
            {
                HttpCookie cookie = Request.Cookies["WEB_LEAD_CONTACTO"];
                FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(cookie.Value);
                estado = ticket.UserData.ToString();
            }

            if (!estado.Equals("YES"))
            {
                Nlead lead = new Nlead();

                if (lead.BuscarMail(correo))
                {
                    DataTable dataEjecutivo = lead.Ejecutivos();
                    int numn = int.Parse(dataEjecutivo.Rows[0]["idContacto"].ToString());
                    int usuario = int.Parse(dataEjecutivo.Rows[0]["idUsuario"].ToString());

                    string resultado = lead.IngresarOK(nombre, correo, fono, programaSelect, 5, usuario);

                    if (resultado.Equals("ok"))
                    {
                        numn++;
                        lead.ActulizarAtencion(numn);

                        FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, "sam_login_id", DateTime.Now, DateTime.Now.AddDays(1), true, "YES");
                        string encrypt = FormsAuthentication.Encrypt(ticket);
                        HttpCookie cookie = new HttpCookie("WEB_LEAD_CONTACTO", encrypt);
                        Response.Cookies.Add(cookie);

                        contacto_lead.Visible = false;
                        mensaje_lead.Visible = true;
                    }
                }
                else
                {
                    contacto_lead.Visible = false;
                    mensaje_lead.Visible = true;
                }
            }
            else
            {
                contacto_lead.Visible = false;
                mensaje_lead.Visible = true;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListaPrograma.Items.Clear();
                ListaPrograma.Items.Add("Selecciona un programa");
                ListaPrograma.Items.Add("Adultos");
                ListaPrograma.Items.Add("Adolescentes");
                ListaPrograma.Items.Add("Niñas y Niños");
                ListaPrograma.Items.Add("Preescolares");
                ListaPrograma.Items.Add("Empresas");
                ListaPrograma.Items.Add("Preparación TOEFL");
                ListaPrograma.Items.Add("Preparación PTE");
                ListaPrograma.Items.Add("Spring Program Kid");
                ListaPrograma.Items.Add("Spring Program teen");

                string token = Convert.ToString(Request["programa"]);

                if (!string.IsNullOrEmpty(token))
                {
                    token = token.Replace("_", " ");

                    if (token == "kid")
                    {
                        token = "Niñas y Niños";
                    }

                    ListaPrograma.SelectedValue = token;
                }
            }
        }

        protected void LinkButtonEnviar_Click(object sender, EventArgs e)
        {
            string programa = string.Empty;
            string nombre = string.Empty;
            string mail = string.Empty;
            string fono = string.Empty;

            bool validador = true;

            if (ListaPrograma.SelectedIndex == 0)
            {
                LabelErrorPrograma.Visible = true;
                validador = false;
            }
            else
            {
                programa = ListaPrograma.SelectedItem.ToString();
            }

            if (string.IsNullOrEmpty(TextBoxNombre.Text))
            {
                LabelErrorNombre.Visible = true;
                validador = false;
            }
            else
            {
                nombre = TextBoxNombre.Text.Trim();
            }

            if (string.IsNullOrEmpty(TextBoxCorreo.Text.Trim()))
            {
                LabelErrorMail.Visible = true;
                validador = false;
            }
            else
            {
                mail = TextBoxCorreo.Text.Trim().ToLower();
            }

            if (string.IsNullOrEmpty(TextBoxFono.Text.Trim()))
            {
                LabelErrorFono.Visible = true;
                validador = false;
            }
            else
            {
                fono = TextBoxFono.Text.Trim();
            }

            if (validador)
            {
                CrearLead(nombre, mail, fono, programa);
            }
        }
    }
}