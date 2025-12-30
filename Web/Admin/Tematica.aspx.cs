using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web.Admin
{
    public partial class Tematica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                ListaTematica.Items.Clear();
                ListaTematica.Items.Add("Seleccionar");
                ListaTematica.Items.Add("18 sep");
                ListaTematica.Items.Add("thanksgiving");
                ListaTematica.Items.Add("halloween");
                ListaTematica.Items.Add("navidad");
                ListaTematica.Items.Add("new year");
                ListaTematica.Items.Add("navidad");
                ListaTematica.Items.Add("independence");
                ListaTematica.Items.Add("Patricks");
                ListaTematica.Items.Add("valentin");
            }
        }

        protected void ListaTematica_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ListaTematica.SelectedIndex > 0) 
            {
                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, "sam_web_e_commercer", DateTime.Now, DateTime.Now.AddMinutes(30), true, ListaTematica.SelectedItem.Text);
                string encrypt = FormsAuthentication.Encrypt(ticket);
                HttpCookie cookie = new HttpCookie("SAM_TEMATICA_ADMIN", encrypt);
                Response.Cookies.Add(cookie);
            }
        }
    }
}