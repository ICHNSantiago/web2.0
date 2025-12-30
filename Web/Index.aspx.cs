using CrystalDecisions.Shared;
using Negocio;
using System;
using System.Data;
using System.Web;
using System.Web.Security;

namespace Web
{
    public partial class Index : System.Web.UI.Page
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

            DateTime cookieExpiration = new DateTime();
            if (Request.Cookies["WEB_LEAD_CONTACTO"] != null)
            {
                HttpCookie cookie = Request.Cookies["WEB_LEAD_CONTACTO"];
                FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(cookie.Value);
                estado = ticket.UserData.ToString();
                cookieExpiration = ticket.Expiration;
            }

            DateTime hoy = DateTime.Now;

            if (hoy > cookieExpiration)
            {
                estado = string.Empty;
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

        public void CargaBanner()
        {
            div_banner_01.Visible = false;
            div_banner_02.Visible = false;
            div_banner_03.Visible = false;
            div_banner_04.Visible = false;
            div_banner_05.Visible = false;
            //div_banner_06.Visible = false;

            string tipoBanner;

            if (Request.Browser.IsMobileDevice)
            {
                tipoBanner = "mobil";
            }
            else
            {
                tipoBanner = "web";
            }

            NBanner nBanner = new NBanner();

            DataTable data = nBanner.Buscar();

            for (int i = 0; i < data.Rows.Count; i++)
            {
                int banner = int.Parse(data.Rows[i]["bannerid"].ToString());

                switch (banner)
                {
                    case 1:

                        if (tipoBanner == data.Rows[i]["tipo"].ToString())
                        {
                            banner_01.Src = "img/carousel/" + tipoBanner + "/" + data.Rows[i]["imagenUrl"].ToString();

                            if (data.Rows[i]["visible"].ToString() == "1")
                            {
                                div_banner_01.Visible = true;
                            }

                            link_banner_01.HRef = data.Rows[i]["link"].ToString();
                        }
                        break;
                    case 2:

                        if (tipoBanner == data.Rows[i]["tipo"].ToString())
                        {
                            banner_02.Src = "img/carousel/" + tipoBanner + "/" + data.Rows[i]["imagenUrl"].ToString();

                            if (data.Rows[i]["visible"].ToString() == "1")
                            {
                                div_banner_02.Visible = true;
                            }

                            link_banner_02.HRef = data.Rows[i]["link"].ToString();
                        }
                        break;
                    case 3:

                        if (tipoBanner == data.Rows[i]["tipo"].ToString())
                        {
                            banner_03.Src = "img/carousel/" + tipoBanner + "/" + data.Rows[i]["imagenUrl"].ToString();

                            if (data.Rows[i]["visible"].ToString() == "1")
                            {
                                div_banner_03.Visible = true;
                            }

                            link_banner_03.HRef = data.Rows[i]["link"].ToString();
                        }
                        break;
                    case 4:

                        if (tipoBanner == data.Rows[i]["tipo"].ToString())
                        {
                            banner_04.Src = "img/carousel/" + tipoBanner + "/" + data.Rows[i]["imagenUrl"].ToString();

                            if (data.Rows[i]["visible"].ToString() == "1")
                            {
                                div_banner_04.Visible = true;
                            }

                            link_banner_04.HRef = data.Rows[i]["link"].ToString();
                        }
                        break;
                    case 5:

                        if (tipoBanner == data.Rows[i]["tipo"].ToString())
                        {
                            banner_05.Src = "img/carousel/" + tipoBanner + "/" + data.Rows[i]["imagenUrl"].ToString();

                            if (data.Rows[i]["visible"].ToString() == "1")
                            {
                                div_banner_05.Visible = true;
                            }

                            link_banner_05.HRef = data.Rows[i]["link"].ToString();
                        }
                        break;
                    //case 6:

                    //    if (tipoBanner == data.Rows[i]["tipo"].ToString())
                    //    {
                    //        banner_06.Src = "img/carousel/" + tipoBanner + "/" + data.Rows[i]["imagenUrl"].ToString();

                    //        if (data.Rows[i]["visible"].ToString() == "1")
                    //        {
                    //            div_banner_06.Visible = true;
                    //        }

                    //        link_banner_06.HRef = data.Rows[i]["link"].ToString();
                    //    }
                    //    break;
                    default:
                        break;
                }
            }
        }

        public void Fiestas()
        {
            NFiestas nFiestas = new NFiestas();
            string fiestaSelect = nFiestas.FistasDisponible();

            HttpCookie cookie = Request.Cookies["SAM_TEMATICA_ADMIN"];

            if (cookie != null)
            {
                FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(cookie.Value);
                fiestaSelect = ticket.UserData.ToString();
            }



            switch (fiestaSelect)
            {
                case "18 sep":
                    div_programa.Attributes.Add("style", "background-image: url('Tematica/18sep/bandera3.webp'); background-repeat: no-repeat; background-size: contain");
                    break;
                case "thanksgiving":
                    div_programa.Attributes.Add("style", "background-image: url('Tematica/tg/Thanksgiving2.webp'); background-repeat: no-repeat; background-size: contain");
                    break;
                case "halloween":
                    div_programa.Attributes.Add("style", "background-image: url('Tematica/hallo/Halloweenv2.png'); background-repeat: no-repeat; background-size: contain");
                    break;
                case "navidad":

                    // prueba de imagen gif
                    if (Request.Browser.IsMobileDevice)
                    {
                        div_programa.Attributes.Add("style", "background-image: url('Tematica/pascua/navidad3m.webp'); background-repeat: no-repeat; background-size: contain");
                    }
                    else
                    {
                        div_programa.Attributes.Add("style", "background-image: url('Tematica/pascua/navidad3.webp'); background-repeat: no-repeat; background-size: contain");
                    }

                    break;
                case "new year":
                    // prueba de imagen gif
                    if (Request.Browser.IsMobileDevice)
                    {
                        div_programa.Attributes.Add("style", "background-image: url('Tematica/newYear/happtNew2m.webp'); background-repeat: no-repeat; background-size: contain");
                    }
                    else
                    {
                        div_programa.Attributes.Add("style", "background-image: url('Tematica/newYear/happtNew2.webp'); background-repeat: no-repeat; background-size: contain");
                    }
                    break;
                case "independence":
                    div_programa.Attributes.Add("style", "background-image: url('Tematica/independence/IndDay.webp'); background-repeat: no-repeat; background-size: contain");
                    break;
                case "Patricks":
                    div_programa.Attributes.Add("style", "background-image: url('Tematica/Patrick/banner_patrick.webp'); background-repeat: no-repeat; background-size: contain");
                    break;
                case "valentin":
                    if (Request.Browser.IsMobileDevice)
                    {
                        div_programa.Attributes.Add("style", "background-image: url('Tematica/Valentin/Valentine01m.webp'); background-repeat: no-repeat; background-size: contain");
                    }
                    else
                    {
                        div_programa.Attributes.Add("style", "background-image: url('Tematica/Valentin/Valentine01.webp'); background-repeat: no-repeat; background-size: contain");
                    }
                    break;
                case "pascua":
                    div_programa.Attributes.Add("style", "background-image: url('Tematica/easter/banner_Easter.png'); background-repeat: no-repeat; background-size: contain");
                    break;
                default:
                    div_programa.Attributes.Clear();
                    break;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            CargaBanner();
            Fiestas();
            MaintainScrollPositionOnPostBack = true;
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