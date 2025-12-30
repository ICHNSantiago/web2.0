using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class Colegios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Browser.IsMobileDevice)
            {
                row_01.Attributes.Add("style", "width:30%");
                row_02.Attributes.Add("style", "width:30%");
                row_03.Attributes.Add("style", "width:30%");
                row_04.Attributes.Add("style", "width:30%");
            }
            else
            {
                row_01.Attributes.Add("style", "width:15%");
                row_02.Attributes.Add("style", "width:15%");
                row_03.Attributes.Add("style", "width:15%");
                row_04.Attributes.Add("style", "width:15%");
            }
        }

        protected void LinkButtonEnviar_Click(object sender, EventArgs e)
        {
            Mails mails = new Mails();

            string nombre = TextBoxNombre.Text + " " + TextBoxApellido.Text;
            string Insti = TextBoxInstituto.Text;
            string Correo = TextBoxMail.Text;
            string fono = TextBoxFono.Text;
            string programa = "Colegios";
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