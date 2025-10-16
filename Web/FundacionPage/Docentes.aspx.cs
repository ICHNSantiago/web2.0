using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web.FundacionPage
{
    public partial class Docentes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void LinkButtonEnviar_Click(object sender, EventArgs e)
        {
            Mails mails = new Mails();

            string nombre = TextBoxNombre.Text + " " + TextBoxApellido.Text;
            string Insti = TextBoxInstituto.Text;
            string Correo = TextBoxMail.Text;
            string fono = TextBoxFono.Text;
            string programa = "Capacitaciones Docentes";
            string mensaje = TextAreaMensaje.Value;

            string resultado = mails.SendEmailFundacion(nombre, Insti, Correo, fono, programa, mensaje);

            if (resultado == "ok")
            { // 
                error_icono.Visible = false;
                ok_icono.Visible = true;
                LabelMensajeError.Text = "Gracias por contactarnos. En breve recibirás una respuesta.";
                ClientScript.RegisterStartupScript(GetType(), "Popup", string.Format("ShowModalMensaje();"), true);
            }
            else
            {
                error_icono.Visible = true;
                ok_icono.Visible = false;
                LabelMensajeError.Text = "Error al generar el contacto";
                ClientScript.RegisterStartupScript(GetType(), "Popup", string.Format("ShowModalMensaje();"), true);
            }
        }

        protected void LinkButtonCargarPagina_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
}