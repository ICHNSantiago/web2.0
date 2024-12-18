﻿using Datos;
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
                    From = new MailAddress("noresponder@norteamericano.cl"),
                    Subject = "Confirmación de pago",
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

        public string SendEmailFinalizar(string mailUsuario, string alumno, string curso, string sede, string hora, string dias, string inicio, string libro, string presencia, string online, List<string> documentos)
        {
            try
            {
                StringBuilder emailHtml = new StringBuilder(File.ReadAllText(HttpContext.Current.Server.MapPath("~/Correos/finalizar.html")));
                emailHtml.Replace("[**VAR_CURSO**]", curso);
                emailHtml.Replace("[**VAR_SEDE**]", sede);
                emailHtml.Replace("[**VAR_HORA**]", hora);
                emailHtml.Replace("[**VAR_DIAS**]", dias);
                emailHtml.Replace("[**VAR_FECHA**]", inicio);
                emailHtml.Replace("[**VAR_TEXTO**]", libro);
                emailHtml.Replace("[**VAR_PRESENCIAL**]", presencia);
                emailHtml.Replace("[**VAR_ONLINE**]", online);
                emailHtml.Replace("[**VAR_ALUMNO**]", alumno);

                MailMessage message = new MailMessage
                {
                    From = new MailAddress("noresponder@norteamericano.cl"),
                    Subject = "Bienvenido al Norteamericano",
                    IsBodyHtml = true,
                    Body = emailHtml.ToString(),
                };

                foreach (string ruta in documentos)
                {
                    if (File.Exists(ruta))
                    {
                        message.Attachments.Add(new Attachment(ruta));
                    }
                }

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
