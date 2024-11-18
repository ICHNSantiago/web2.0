using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Net.Mail;
using System.Text;
using System.Web;


namespace Negocio
{
    public class Mails
    {
        public string SendEmailPago(string mailUsuario, string cotiID, string fecha, string tarjeta, string codaAuto, string monto, string digitos)
        {
            try
            {
                StringBuilder emailHtml = new StringBuilder(File.ReadAllText(HttpContext.Current.Server.MapPath("~/Correos/inscripcion.html")));
                emailHtml.Replace("[**VAR_OC**]", cotiID);
                emailHtml.Replace("[**VAR_F**]", fecha);
                emailHtml.Replace("[**VAR_T**]", tarjeta);
                emailHtml.Replace("[**VAR_CA**]", codaAuto);
                emailHtml.Replace("[**VAR_M**]", monto);
                emailHtml.Replace("[**VAR_TD**]", digitos);

                

                MailMessage message = new MailMessage
                {
                    From = new MailAddress("cgaray@norteamericano.cl"),
                    Subject = "Confirmación de Compra",
                    IsBodyHtml = true,
                    Body = emailHtml.ToString(),
                };

                message.To.Add(mailUsuario);

                SmtpClient smtpClient = new SmtpClient
                {
                    UseDefaultCredentials = true,
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    Credentials = new System.Net.NetworkCredential("noresponder@norteamericano.cl", "smith2251!"),
                };

                smtpClient.Send(message);

                return "ok";
            }
            catch (System.Exception)
            {
                return "Error al enviar el correo al mail de contacto";
            }

        }
    }
}
