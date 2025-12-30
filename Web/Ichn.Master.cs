using Negocio;
using System;
using System.Web.Security;
using System.Web;

namespace Web
{
    public partial class Ichn : System.Web.UI.MasterPage
    {

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


            if (Request.Browser.IsMobileDevice)
            {
                div_btn_movil.Visible = true;
                div_btn_web.Visible = false;

                switch (fiestaSelect)
                {
                    case "18 sep":
                        logo_ichn.Src = "~/Tematica/18sep/volantin.webp";
                        //logo_ichn.Attributes.Add("style", "width:14%");
                        break;
                    case "thanksgiving":
                        logo_ichn.Src = "~/Tematica/tg/pavo.gif";
                        //logo_ichn.Attributes.Add("style", "width:15%");
                        break;
                    case "halloween":
                        logo_ichn.Src = "~/Tematica/hallo/bat.webp";
                        //logo_ichn.Attributes.Add("style", "width:15%");
                        break;
                    case "navidad":
                        logo_ichn.Src = "~/Tematica/pascua/tree.webp";
                        //logo_ichn.Attributes.Add("style", "width:14%");
                        break;
                    case "new year":
                        logo_ichn.Src = "~/Tematica/newYear/hny.gif";
                        logo_ichn.Attributes.Add("style", "width:14%");
                        break;
                    case "Patricks":
                        logo_ichn.Src = "~/Tematica/Patrick/duende.gif";
                        //logo_ichn.Attributes.Add("style", "width:15%");
                        break;
                    case "independence":
                        logo_ichn.Src = "~/Tematica/independence/4thjuly05.webp";
                        //logo_ichn.Attributes.Add("style", "width:15%");
                        break;
                    case "valentin":
                        logo_ichn.Src = "~/Tematica/Valentin/love.webp";
                        //logo_ichn.Attributes.Add("style", "width:15%");
                        break;
                    default:
                        logo_ichn.Src = "~/img/logocuadrado.png";
                        //logo_ichn.Attributes.Add("style", "width:15%");
                        break;
                }
            }
            else
            {
                div_btn_movil.Visible = false;
                div_btn_web.Visible = true;

                switch (fiestaSelect)
                {
                    case "18 sep":
                        logo_ichn.Src = "~/Tematica/18sep/volantin.webp";
                        //logo_ichn.Attributes.Add("style", "width:4%");
                        break;
                    case "thanksgiving":
                        logo_ichn.Src = "~/Tematica/tg/pavo.gif";
                        //logo_ichn.Attributes.Add("style", "width:5%");
                        break;
                    case "halloween":
                        logo_ichn.Src = "~/Tematica/hallo/bat.webp";
                        //logo_ichn.Attributes.Add("style", "width:5%");
                        break;
                    case "navidad":
                        logo_ichn.Src = "~/Tematica/pascua/tree.webp";
                        //logo_ichn.Attributes.Add("style", "width:4%");
                        break;
                    case "new year":
                        logo_ichn.Src = "~/Tematica/newYear/hny.gif";
                        //logo_ichn.Attributes.Add("style", "width:4%");
                        break;
                    case "Patricks":
                        logo_ichn.Src = "~/Tematica/Patrick/duende.gif";
                        //logo_ichn.Attributes.Add("style", "width:5%");
                        break;
                    case "independence":
                        logo_ichn.Src = "~/Tematica/independence/4thjuly05.webp";
                        logo_ichn.Attributes.Add("style", "width:5%");
                        break;
                    case "valentin":
                        logo_ichn.Src = "~/Tematica/Valentin/love.webp";
                        //logo_ichn.Attributes.Add("style", "width:5%");
                        break;
                    default:
                        logo_ichn.Src = "~/img/logocuadrado.png";
                        //logo_ichn.Attributes.Add("style", "width:5%");
                        break;
                }
            }
        }

      

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Fiestas();               
            }
        }
    }
}