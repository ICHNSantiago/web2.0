﻿using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web.Inscripcion;

namespace Web.Diagnostico.Adults
{
    public partial class Resultado : System.Web.UI.Page
    {
        public void CargaResultado(string alumnoID)
        {
            Ndiagnostico ndiagnostico = new Ndiagnostico();
            DataTable data = ndiagnostico.BuscarAdultos(alumnoID);
            LabelUsuario.Text = data.Rows[0]["Nombres"].ToString() + " " + data.Rows[0]["AP_Paterno"].ToString() + " " + data.Rows[0]["AP_Materno"].ToString();
            int nivel = int.Parse(data.Rows[0]["idcursos"].ToString());
            LabelNivelID.Text = nivel.ToString();
            LabelIntentos.Text = data.Rows[0]["intentos"].ToString();
            LabeldiagnosticoID.Text = data.Rows[0]["id"].ToString();

            switch (nivel)
            {
                case 39:
                    LabelNivel.Text = "BEGINNER";
                    LabelCEFR.Text = "A1";
                    break;
                case 40:
                    LabelNivel.Text = "BEGINNER";
                    LabelCEFR.Text = "A1";
                    nivel = 39;
                    break;
                case 41:
                    LabelNivel.Text = "ELEMENTARY";
                    LabelCEFR.Text = "A2";
                    break;
                case 42:
                    LabelNivel.Text = "ELEMENTARY";
                    LabelCEFR.Text = "A2";
                    nivel = 41;
                    break;
                case 43:
                    LabelNivel.Text = "PRE INTERMEDIATE";
                    LabelCEFR.Text = "A2+";
                    break;
                case 44:
                    LabelNivel.Text = "PRE INTERMEDIATE";
                    LabelCEFR.Text = "A2+";
                    nivel = 43;
                    break;
                case 45:
                    LabelNivel.Text = "LOW INTERMEDIATE";
                    LabelCEFR.Text = "B1";
                    break;
                case 46:
                    LabelNivel.Text = "LOW INTERMEDIATE";
                    LabelCEFR.Text = "B1+";
                    nivel = 45;
                    break;
                case 47:
                    LabelNivel.Text = "UPPER INTERMEDIATE";
                    LabelCEFR.Text = "B2";
                    break;
                case 48:
                    LabelNivel.Text = "UPPER INTERMEDIATE";
                    LabelCEFR.Text = "B2";
                    nivel = 47;
                    break;
                case 90:
                    LabelNivel.Text = "PRE ADVANCED";
                    LabelCEFR.Text = "B2+";
                    break;
                case 144:
                    LabelNivel.Text = "PRE ADVANCED";
                    LabelCEFR.Text = "B2+";
                    nivel = 90;
                    break;
                case 145:
                    LabelNivel.Text = "ADVANCED";
                    LabelCEFR.Text = "C1";
                    break;
                case 146:
                    LabelNivel.Text = "ADVANCED";
                    LabelCEFR.Text = "C1";
                    nivel = 145;
                    break;
                default:
                    break;
            }

            LabelNivelID.Text = nivel.ToString();
 
           FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, "sam_login_id", DateTime.Now, DateTime.Now.AddMinutes(30), true, nivel.ToString());
            string encrypt = FormsAuthentication.Encrypt(ticket);
            HttpCookie cookie = new HttpCookie("SAM_RESULTADO_NIVEL", encrypt);
            Response.Cookies.Add(cookie);

            ticket = new FormsAuthenticationTicket(1, "sam_login_id", DateTime.Now, DateTime.Now.AddMinutes(30), true, alumnoID.ToString());
            encrypt = FormsAuthentication.Encrypt(ticket);
            cookie = new HttpCookie("SAM_USUARIO_ID", encrypt);
            Response.Cookies.Add(cookie);           
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string token = Convert.ToString(Request["alumno"]);
                CargaResultado(token);
            }
        }

        protected void LinkButtonInscripcion_Click(object sender, EventArgs e)
        {
            string token = Convert.ToString(Request["alumno"]);

            byte[] encryted = System.Text.Encoding.Unicode.GetBytes(LabelNivel.Text);
            string resultado2 = Convert.ToBase64String(encryted);

            encryted = System.Text.Encoding.Unicode.GetBytes(LabelNivelID.Text);
            string resultado = Convert.ToBase64String(encryted);

            string link = "~/Inscripcion/Alumno.aspx?usuario=" + token + "&diagnostico=" + resultado + "&resultado=" + resultado2 + "&tipo=alumno";
            Response.Redirect(link);
        }

        protected void LinkButtonRepetir_Click(object sender, EventArgs e)
        {
            int.TryParse(LabelIntentos.Text, out int intentos);

            if (intentos > 8)
            {
                LinkButtonRepetir.Visible = false;
                error_intentos.Visible = true;
            }
            else
            {
                HttpCookie cookie = Request.Cookies["SAM_DIAGNOSTICO_ID"];
                FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(cookie.Value);
                int diagnosticoID = int.Parse(ticket.UserData.ToString());

                Ndiagnostico ndiagnostico = new Ndiagnostico();
                ndiagnostico.ActualizarEstadoFin(diagnosticoID, 39, "PENDIENTE");

                byte[] encryted = System.Text.Encoding.Unicode.GetBytes("si");
                string resultado = Convert.ToBase64String(encryted);

                string token = Convert.ToString(Request["alumno"]);

                string idTest = LabeldiagnosticoID.Text;
                Response.Redirect("Index.aspx?alum=" + token + "&repertir=" + resultado + "&id" + idTest);
            }
        }
    }
}