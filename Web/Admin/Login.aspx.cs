using System;
using System.Web;
using System.Web.Security;

namespace Web.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonIngresarRut_Click(object sender, EventArgs e)
        {
            string user = TextBoxRut.Text;
            string password = TextBoxClave.Text;

            bool acceso = false;

            if (user == "15668563")
            {
                if (password == "ichn20")
                {
                    acceso = true;
                }
            }


            FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, "sam_web_e_commercer", DateTime.Now, DateTime.Now.AddHours(1), true, acceso.ToString());
            string encrypt = FormsAuthentication.Encrypt(ticket);
            HttpCookie cookie = new HttpCookie("SAM_ADMIN_ICHN", encrypt);
            Response.Cookies.Add(cookie);

            if (acceso)
            {
                Response.Redirect("index.aspx");
            }
        }
    }
}