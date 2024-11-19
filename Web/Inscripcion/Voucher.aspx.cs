using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web.Inscripcion
{
    public partial class Voucher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string token = Convert.ToString(Request["contrato"]);

                if (!string.IsNullOrEmpty(token))
                {
                    int contratoID = int.Parse(token);
                    Ncontrato ncontrato = new Ncontrato();
                    DataTable data = ncontrato.InfoBienvenida(contratoID);

                    LabelMail.Text = data.Rows[0]["apoMail"].ToString().ToLower();

                    string idApo = data.Rows[0]["idApoderado"].ToString();
                    string idAlum = data.Rows[0]["idAlumno"].ToString();

                    LabelAlumnoNombre.Text = data.Rows[0]["Nombres"].ToString().ToLower() + " " + data.Rows[0]["AP_Paterno"].ToString().ToLower() + " " + data.Rows[0]["AP_Materno"].ToString().ToLower();
                    LabelAlumnoID.Text = data.Rows[0]["idAlumno"].ToString();
                    if (idAlum == idApo)
                    {
                        row_apo_id.Visible = false;
                        row_apo_nom.Visible = false;
                    }
                    else
                    {
                        row_apo_id.Visible = true;
                        row_apo_nom.Visible = true;
                        LabelApoderadoNombre.Text = data.Rows[0]["apoNombre"].ToString().ToLower();
                        LabelApoderadoID.Text = data.Rows[0]["idApoderado"].ToString();
                    }

                    LabelBoletaID.Text = data.Rows[0]["idBoleta"].ToString();
                    LabelBoletaMonto.Text = int.Parse(data.Rows[0]["Total"].ToString()).ToString("n0");

                    DataTable dataAnexo = ncontrato.BuscarAnexosContrato(token);

                    List<string> listaArchivos = new List<string>
                    {
                        @"C:\\inetpub\\wwwroot\\sam\\boleta\\boleta" +  LabelBoletaID.Text + ".pdf",
                        @"C:\\inetpub\\wwwroot\\sam\\contrato\\contrato" + contratoID + ".pdf"
                    };

                    string anexo = dataAnexo.Rows[0]["Anexo"].ToString();
                    listaArchivos.Add(@"C:\\inetpub\\wwwroot\\sam\\anexos\\anexo" + anexo + ".pdf");

                    string curso = dataAnexo.Rows[0]["CursoNombre"].ToString();
                    string dias = dataAnexo.Rows[0]["Dias"].ToString();
                    string sede = dataAnexo.Rows[0]["Sede"].ToString();
                    string hora = dataAnexo.Rows[0]["Inicio"].ToString() + " " + dataAnexo.Rows[0]["Termino"].ToString();
                    string inicio = dataAnexo.Rows[0]["Fecha Inicio"].ToString();                  
                    string libro = string.Empty;

                    string presencial = "block";
                    string online = "block";
                    if (sede == "ONLINE")
                    {
                        presencial = "none";
                    }
                    else
                    {
                        online = "none";
                    }

                    Mails mails = new Mails();
                    mails.SendEmailFinalizar(LabelMail.Text, LabelAlumnoNombre.Text, curso, sede, hora, dias, inicio, libro, presencial, online, listaArchivos);

                }
            }
        }
    }
}