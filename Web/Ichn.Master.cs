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
                switch (fiestaSelect)
                {
                    case "18 sep":
                        gif_fiesta.Src = "~/Tematica/18sep/volantin.webp";
                        gif_fiesta.Attributes.Add("style", "width:14%");
                        break;
                    case "thanksgiving":
                        gif_fiesta.Src = "~/Tematica/tg/pavo.gif";
                        gif_fiesta.Attributes.Add("style", "width:15%");
                        break;
                    case "halloween":
                        gif_fiesta.Src = "~/Tematica/hallo/bat.webp";
                        gif_fiesta.Attributes.Add("style", "width:15%");
                        break;
                    case "navidad":
                        gif_fiesta.Src = "~/Tematica/pascua/tree.webp";
                        gif_fiesta.Attributes.Add("style", "width:14%");
                        break;
                    case "new year":
                        gif_fiesta.Src = "~/Tematica/newYear/hny.gif";
                        gif_fiesta.Attributes.Add("style", "width:14%");
                        break;
                    case "Patricks":
                        gif_fiesta.Src = "~/Tematica/Patrick/duende.gif";
                        gif_fiesta.Attributes.Add("style", "width:15%");
                        break;
                    case "independence":
                        gif_fiesta.Src = "~/Tematica/independence/4thjuly05.webp";
                        gif_fiesta.Attributes.Add("style", "width:15%");
                        break;
                    case "valentin":
                        gif_fiesta.Src = "~/Tematica/Valentin/love.webp";
                        gif_fiesta.Attributes.Add("style", "width:15%");
                        break;
                    default:
                        gif_fiesta.Visible = false;
                        break;
                }
            }
            else
            {
                switch (fiestaSelect)
                {
                    case "18 sep":
                        gif_fiesta.Src = "~/Tematica/18sep/volantin.webp";
                        gif_fiesta.Attributes.Add("style", "width:4%");
                        break;
                    case "thanksgiving":
                        gif_fiesta.Src = "~/Tematica/tg/pavo.gif";
                        gif_fiesta.Attributes.Add("style", "width:5%");
                        break;
                    case "halloween":
                        gif_fiesta.Src = "~/Tematica/hallo/bat.webp";
                        gif_fiesta.Attributes.Add("style", "width:5%");
                        break;
                    case "navidad":
                        gif_fiesta.Src = "~/Tematica/pascua/tree.webp";
                        gif_fiesta.Attributes.Add("style", "width:4%");
                        break;
                    case "new year":
                        gif_fiesta.Src = "~/Tematica/newYear/hny.gif";
                        gif_fiesta.Attributes.Add("style", "width:4%");
                        break;
                    case "Patricks":
                        gif_fiesta.Src = "~/Tematica/Patrick/duende.gif";
                        gif_fiesta.Attributes.Add("style", "width:5%");
                        break;
                    case "independence":
                        gif_fiesta.Src = "~/Tematica/independence/4thjuly05.webp";
                        gif_fiesta.Attributes.Add("style", "width:5%");
                        break;
                    case "valentin":
                        gif_fiesta.Src = "~/Tematica/Valentin/love.webp";
                        gif_fiesta.Attributes.Add("style", "width:5%");
                        break;
                    default:
                        gif_fiesta.Visible = false;
                        break;
                }
            }
        }

        public void BlackFriday()
        {
            FechaApi fechaApi = new FechaApi();

            DateTime hoy = DateTime.Parse(fechaApi.GetNetworkTime().ToString("yyyy-MM-dd"));
            DateTime fin = new DateTime(2024, 12, 07);
            DateTime inicio = new DateTime(2024, 11, 20);

            if (hoy >= inicio)
            {
                if (hoy <= fin)
                {
                    div_black.Visible = true;
                }
                else
                {
                    div_black.Visible = false;
                }
            }
            else
            {
                div_black.Visible = false;
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Fiestas();
                BlackFriday();
            }
        }
    }
}