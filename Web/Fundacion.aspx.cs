using System;
using System.Text;
using Negocio;

namespace Web
{
    public partial class Fundacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                ListaProgramas.Items.Clear();
                ListaProgramas.Items.Add("Seleccionar");
                ListaProgramas.Items.Add("Evaluaciones");
                ListaProgramas.Items.Add("Capacitaciones");
                ListaProgramas.Items.Add("Asesorias");
            }
        }

        protected void LinkButtonEnviar_Click(object sender, EventArgs e)
        {
            Mails mails = new Mails(); 

            string nombre = TextBoxNombre.Text + " " + TextBoxApellido.Text;
            string Insti = TextBoxInstituto.Text;
            string Correo = TextBoxMail.Text;
            string fono = TextBoxFono.Text;
            string programa = ListaProgramas.SelectedValue.ToString();
            string mensaje = TextAreaMensaje.Value;

            string resultado = mails.SendEmailFundacion(nombre, Insti, Correo, fono, programa, mensaje);

            if(resultado == "ok")
            { // 
                error_icono.Visible = false;
                ok_icono.Visible= true;
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