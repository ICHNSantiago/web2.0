using System;
using System.Web;
using System.Web.Security;

namespace Web.Admin
{
    public partial class IchnAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["SAM_ADMIN_ICHN"];
            if (cookie == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(cookie.Value);
                bool.TryParse(ticket.UserData.ToString(), out bool estado);

                if (!estado)
                {
                    Response.Redirect("login.aspx");
                }

                DateTime expira = ticket.Expiration;
                DateTime hoy = DateTime.Now;

                if (hoy > expira)
                {
                    Response.Redirect("login.aspx");
                }
            }
        }
    }
}