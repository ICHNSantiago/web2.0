using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Transbank.Common;
using Transbank.Webpay.Common;
using Transbank.Webpay.WebpayPlus;

namespace Web.cursos.teen
{
    public partial class ShopCart : System.Web.UI.Page
    {
        public void CrearLead()
        {
            string nomnbre = "BLACK FRIDAY " + TextBoxApoderadoNombre.Text + " " + TextBoxApoderadoPaterno.Text;
            string mail = TextBoxApoderadoMail.Text;
            string fono = TextBoxApoderadoFono.Text;
            Nlead nlead = new Nlead();
            int leadID = nlead.CrearLead(nomnbre, mail, fono, "T");

            if (leadID > 0)
            {
                LabelIDLead.Text = leadID.ToString();
            }
        }

        public void CargaRegion()
        {
            NRegionComuna nRegionComuna = new NRegionComuna();
            DataTable dataRegion = nRegionComuna.ListarRegion();

            ListaComuna.Items.Clear();
            ListaRegion.Items.Clear();
            ListaRegion.Items.Add("Seleccionar");

            for (int x = 0; x < dataRegion.Rows.Count; x++)
            {
                ListaRegion.Items.Add(dataRegion.Rows[x]["NombreRegion"].ToString());
            }
            ListaRegion.Items.Remove("SIN REGION");

        }

        public bool GrabaAlumno()
        {
            string id;

            if(LabelTipoDocAlum.Text == "Run")
            {
                id = TextBoxAlumnoRun.Text.Trim().ToUpper();
            }
            else
            {
                id = TextBoxAlumnoPasa.Text.Trim().ToUpper();
            }
           
            string nombre = TextBoxAlumnoNombre.Text.Trim().ToUpper();
            string paterno = TextBoxAlumnoPaterno.Text.Trim().ToUpper();
            string materno = TextBoxAlumnoMaterno.Text.Trim().ToUpper();
            string mail = TextBoxAlumnoMail.Text.Trim().ToUpper();
            string direccion = TextBoxAlumnoDireccion.Text.Trim().ToUpper();
            bool estado = false;

            int.TryParse(TextBoxAlumnoFono.Text.Trim(), out int fono);
            DateTime.TryParse(TextBoxAlumnoNace.Text, out DateTime dateNace);
            string comuma = LabelComunaID.Text;
            Ncotizacion ncotizacion = new Ncotizacion();
            string resultado = ncotizacion.IngresarAlumno(id, paterno, materno, nombre, comuma, direccion, dateNace, fono, mail);

            if (resultado == "ok")
            {
                estado = true;
            }

            return estado;
        }

        public bool GrabaApoderado()
        {
            Tr_direccion.Visible = false;
            Tr_comuna.Visible = false;
            Tr_apo_fono2.Visible = false;
            Tr_apo_fono.Visible = false;
            Tr_apo_mail.Visible = false;
            Tr_apo_paterno.Visible = false;
            Tr_apo_nombre.Visible = false;
            Tr_apo_id.Visible = false;

            string id;
            if (LabelTipoDoc.Text == "Pasaporte")
            {
                id = TextBoxApoderadoPasaporte.Text;
            }
            else
            {
                id = TextBoxApoderadoRun.Text;
            }

           
            string nombre = TextBoxApoderadoNombre.Text.Trim().ToUpper();
            string paterno = TextBoxApoderadoPaterno.Text.Trim().ToUpper();
            string materno = TextBoxApoderadoMaterno.Text.Trim().ToUpper();
            string mail = TextBoxApoderadoMail.Text.Trim().ToUpper();
            string direccion = TextBoxAlumnoDireccion.Text.Trim().ToUpper();
            bool estado = false;

            if (!string.IsNullOrEmpty(id))
            {
                if (!string.IsNullOrEmpty(nombre))
                {
                    if (!string.IsNullOrEmpty(paterno))
                    {
                        if (!string.IsNullOrEmpty(mail))
                        {
                            if (int.TryParse(TextBoxApoderadoFono.Text.Trim(), out int fono))
                            {
                                if (fono.ToString().Length == 9)
                                {
                                    if (ListaComuna.SelectedIndex > 0)
                                    {
                                        if (!string.IsNullOrEmpty(direccion))
                                        {
                                            string comuma = LabelComunaID.Text;
                                            Ncotizacion ncotizacion = new Ncotizacion();

                                            string alumnoID;
                                            if (LabelTipoDocAlum.Text == "Pasaporte")
                                            {
                                                alumnoID = TextBoxAlumnoPasa.Text;
                                            }
                                            else
                                            {
                                                alumnoID = TextBoxAlumnoRun.Text;
                                            }
                                            

                                            string resultado = ncotizacion.IngresarApoderado(alumnoID, id, paterno, materno, nombre, comuma, direccion, fono, mail);

                                            if (resultado == "ok")
                                            {
                                                estado = true;
                                            }
                                        }
                                        else
                                        {
                                            Tr_direccion.Visible = true;
                                        }
                                    }
                                    else
                                    {
                                        Tr_comuna.Visible = true;
                                    }
                                }
                                else
                                {
                                    Tr_fono2.Visible = true;
                                }
                            }
                            else
                            {
                                Tr_fono.Visible = true;
                            }
                        }
                        else
                        {
                            Tr_apo_mail.Visible = true;
                        }
                    }
                    else
                    {
                        Tr_apo_paterno.Visible = true;
                    }
                }
                else
                {
                    Tr_apo_nombre.Visible = true;
                }
            }
            else
            {
                Tr_apo_id.Visible = true;
            }

            return estado;
        }


        public int GenerarCotizacion(int total, string rutApo, string rutAlu, int desctoID, int tipoDescuento)
        {
            DateTime fechaEmision = DateTime.Now;
            Ncotizacion cotizacion = new Ncotizacion();
            int lead = int.Parse(LabelIDLead.Text);
            string cotizacionNumero;
            if (lead > 0)
            {
                cotizacionNumero = cotizacion.CrearMasLead(rutApo, "1", 1, desctoID, tipoDescuento, fechaEmision.ToString("yyyy-MM-dd"), 1, 1, total, fechaEmision.ToString("yyyy-MM-dd"), lead);
            }
            else
            {
                cotizacionNumero = cotizacion.Crear(rutApo, "1", 1, desctoID, tipoDescuento, fechaEmision.ToString("yyyy-MM-dd"), 1, 1, total, fechaEmision.ToString("yyyy-MM-dd"));
            }



            if (int.TryParse(cotizacionNumero, out int idCotizacion))
            {
                string curso = LabelProductoNombreCorto.Text;
                string modalidad = LabelProductoModalidad.Text;
                string sede = LabelProductoSede.Text;
                int cantidad = int.Parse(LabelProductoCant.Text);
                int tarifa = int.Parse(LabelProductoMonto.Text.Replace(".", string.Empty));
                int descto = int.Parse(LabelPromoMontoID.Text);
                int tarifaID = int.Parse(LabelTarifaID.Text);

                int sedeID = 1;
                switch (sede)
                {
                    case "Providencia":
                        sedeID = 2;
                        break;
                    case "La Florida":
                        sedeID = 3;
                        break;
                    case "Online":
                        sedeID = 4;
                        break;
                    default:
                        break;
                }

                cotizacion.IngresarDetalleV2(idCotizacion, curso, modalidad, sede, cantidad, tarifa, descto, total, rutAlu, 0, rutApo, tarifaID, sedeID, 3);
            }
            return idCotizacion;
        }


        public void Valores(int cantidad)
        {
            if (row_sin_promo.Visible)
            {
                int valor = int.Parse(LabelRespaldoTarifa.Text.Replace(".", ""));
                valor = valor * cantidad;
                LabelTarifa.Text = valor.ToString("n0");
            }
            else
            {
                int valor = int.Parse(LabelRespaldoPromo.Text.Replace(".", ""));
                int valorOld = int.Parse(LabelRespaldoTarifa.Text.Replace(".", ""));
                valor = valor * cantidad;
                valorOld = valorOld * cantidad;
                LabelTarifaPromo.Text = valor.ToString("n0");
                LabelTarifaOld.Text = valorOld.ToString("n0");
            }
        }

        public void CargaTarifas(string programa)
        {
            int idPorgrama = 0;
            switch (programa)
            {
                case "summer":
                    idPorgrama = 41;
                    DateTime date = DateTime.Now;
                    int year = date.Year;
                    int month = date.Month;
                    if (month > 2)
                    {
                        year++;
                    }
                    LabelYearSummer.Text = year.ToString();
                    break;
                case "regular":
                    idPorgrama = 3;
                    break;
                default:
                    break;
            }

            Ncursos ncursos = new Ncursos();
            string tarifa = ncursos.BuscarTarifasV2(idPorgrama);
            string[] tarifaDetalle = tarifa.Split(';');
            LabelTarifa.Text = int.Parse(tarifaDetalle[1]).ToString("n0");
            LabelTarifaID.Text = tarifaDetalle[0];
            LabelTarifaOld.Text = LabelTarifa.Text;
            LabelRespaldoTarifa.Text = LabelTarifa.Text;
        }

        public void CargaPromos(string programa)
        {
            row_sin_promo.Visible = true;
            // row_con_promo.Visible = false;
            LabelPromoActiva.Text = "no";

            Ncursos ncursos = new Ncursos();
            DataTable data = ncursos.BuscarPromoTeens();
            int idPorgrama = 0;
            switch (programa)
            {
                case "summer":
                    idPorgrama = 41;
                    break;
                case "regular":
                    idPorgrama = 3;
                    break;
                default:
                    break;
            }


            for (int i = 0; i < data.Rows.Count; i++)
            {
                int varPrograma = int.Parse(data.Rows[i]["Programa"].ToString());

                if (varPrograma == idPorgrama)
                {
                    LabelPromoActiva.Text = "si";
                    row_sin_promo.Visible = false;
                    // row_con_promo.Visible = true;
                    decimal promo = int.Parse(data.Rows[i]["Valor"].ToString());
                    LabelPromoMonto.Text = promo.ToString() + "% Descto";
                    decimal tarifa = decimal.Parse(LabelTarifa.Text.Replace(".", ""));
                    decimal valor = tarifa - ((promo / 100) * tarifa);
                    LabelTarifaPromo.Text = valor.ToString("n0");
                    LabelRespaldoPromo.Text = LabelTarifaPromo.Text;
                    LabelPromoMontoID.Text = data.Rows[i]["idDescuentos"].ToString();
                    break;
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            MaintainScrollPositionOnPostBack = true;

            if (!IsPostBack)
            {
                string token = Convert.ToString(Request["tipo"]);
                string tokenSede = Convert.ToString(Request["sede"]);
                string tokenCant = Convert.ToString(Request["cantidad"]);
                string tokenAlumno = Convert.ToString(Request["alum"]);

                switch (token)
                {
                    case "summer":
                        table_summer.Visible = true;
                        break;
                    case "regular":
                        table_regular.Visible = true;
                        break;
                    default:
                        break;
                }

                ListaSedes.Items.Clear();
                ListaSedes.Items.Add("Selecciona una sede");
                ListaSedes.Items.Add("Moneda");
                ListaSedes.Items.Add("Providencia");
                ListaSedes.Items.Add("La Florida");
                ListaSedes.Items.Add("Online");

                if(token == "summer")
                {
                    CargaTarifas("regular");
                    CargaPromos("regular");
                }
                else
                {
                    CargaTarifas(token);
                    CargaPromos(token);
                }
              

                if (!string.IsNullOrEmpty(tokenSede))
                {

                    if (tokenSede.Equals("Moneda") || tokenSede.Equals("Providencia") || tokenSede.Equals("La Florida"))
                    {
                        RadioButtonMP.Checked = true;
                        RadioButtonMO.Checked = false;
                        RadioButtonMP_CheckedChanged(sender, e);
                        ListaSedes.SelectedValue = tokenSede;
                    }
                    else
                    {
                        RadioButtonMP.Checked = false;
                        RadioButtonMO.Checked = true;
                        RadioButtonMO_CheckedChanged(sender, e);
                    }
                }

                if (int.TryParse(tokenCant, out int val))
                {
                   //  TextBoxCantidad.Text = val.ToString();
                    Valores(val);
                }

                CargaRegion();

                if (!string.IsNullOrEmpty(tokenAlumno))
                {
                    TextBoxAlumnoRun.Text = tokenAlumno;
                    TextBoxAlumnoRun_TextChanged(sender, e);
                }
            }
        }

        protected void LinkButtonNext_Click(object sender, EventArgs e)
        {
            if (RadioButtonMP.Checked || RadioButtonMO.Checked)
            {
                bool online = RadioButtonMO.Checked;

                bool continuar = true;

                if (ListaSedes.SelectedIndex > 0)
                {
                    continuar = true;
                }
                else
                {
                    if (online)
                    {
                        continuar = true;
                    }
                    else
                    {
                        continuar = false;
                    }
                }

                if (continuar)
                {
                    shop_programa.Visible = false;
                    shop_pago.Visible = true;
                    shop_pago_alum.Visible = true;
                    shop_pago_resumen.Visible = false;


                    string token = Convert.ToString(Request["tipo"]);

                    string modalidad;
                    if (RadioButtonMP.Checked)
                    {
                        modalidad = ListaSedes.SelectedItem.Text;
                    }
                    else
                    {
                        modalidad = "Online";
                    }

                    string producto = string.Empty;
                    switch (token)
                    {
                        case "summer":
                            producto = "Summer School";
                            break;
                        case "regular":
                            producto = "Regular";
                            break;
                        default:
                            break;
                    }

                    // LabelProductoCant.Text = TextBoxCantidad.Text;
                    LabelProductoNombre.Text = "Curso de inglés adolescentes ";
                    LabelProductoNombreCorto.Text = "adolescentes";
                    LabelProductoModalidad.Text = producto;
                    LabelProductoSede.Text = modalidad;


                    int monto = 0;
                    int descto = 0;
                    int total = 0;

                    string promo = LabelPromoActiva.Text;
                    if (promo == "si")
                    {
                        row_descto_monto.Visible = true;
                        int varm = int.Parse(LabelTarifaOld.Text.Replace(".", string.Empty));
                        int vard = int.Parse(LabelTarifaPromo.Text.Replace(".", string.Empty));
                        descto = varm - vard;
                        total = vard;
                        monto = varm;
                        LabelProductoDescto.Text = descto.ToString("n0");
                    }
                    else
                    {
                        row_descto_monto.Visible = false;
                        int varm = int.Parse(LabelTarifa.Text.Replace(".", string.Empty));
                        monto = varm;
                    }

                    LabelProductoMonto.Text = monto.ToString("n0");

                    LabelProductoSub.Text = monto.ToString("n0");
                    LabelProductoTotal.Text = (monto - descto).ToString("n0");
                    LabelTotalPago.Text = LabelProductoTotal.Text;
                }
                else
                {
                    error_sede.Visible = true;
                }
            }
            else
            {
                error_modalidad.Visible = true;
            }
        }

        protected void ListaRegionAlumno_SelectedIndexChanged(object sender, EventArgs e)
        {
            string region = ListaRegion.SelectedItem.ToString();
            NRegionComuna nRegion = new NRegionComuna();
            int idRegion = nRegion.RegionID(region);
            LabelRegionID.Text = idRegion.ToString();

            DataTable dataRegion = nRegion.ListarComunas(idRegion);

            ListaComuna.Items.Clear();
            ListaComuna.Items.Add("Seleccionar");

            for (int x = 0; x < dataRegion.Rows.Count; x++)
            {
                ListaComuna.Items.Add(dataRegion.Rows[x]["NombreComuna"].ToString());
            }

            ListaComuna.Items.Remove("Sin Comuna");


            if (LabelTipoDoc.Text == "Pasaporte")
            {
                ClientScript.RegisterStartupScript(GetType(), "Popup", "mostrar(2);", true);
            }
        }


        protected void RadioButtonMP_CheckedChanged(object sender, EventArgs e)
        {
            ListaSedes.Items.Clear();
            ListaSedes.Items.Add("Selecciona una sede");
            ListaSedes.Items.Add("Moneda");
            ListaSedes.Items.Add("Providencia");
            ListaSedes.Items.Add("La Florida");
            error_modalidad.Visible = false;
        }

        protected void RadioButtonMO_CheckedChanged(object sender, EventArgs e)
        {
            ListaSedes.Items.Clear();
            ListaSedes.Items.Add("Online");
            error_modalidad.Visible = false;
        }

        protected void LinkButtonMenos_Click(object sender, EventArgs e)
        {
            //// resta
            //int cantidad = int.Parse(TextBoxCantidad.Text);
            //if (cantidad > 1)
            //{
            //    cantidad--;
            //}
            //TextBoxCantidad.Text = cantidad.ToString();
            //Valores(cantidad);
        }

        protected void LinkButtonMas_Click(object sender, EventArgs e)
        {
            //int cantidad = int.Parse(TextBoxCantidad.Text);
            //cantidad++;
            //TextBoxCantidad.Text = cantidad.ToString();
            //Valores(cantidad);
        }

        protected void LinkButtonTbk_Click(object sender, EventArgs e)
        {
            if (CheckBoxTerminos.Checked)
            {
                int.TryParse(LabelTotalPago.Text.Replace(".", string.Empty), out int totalPago);
                int desctoID = int.Parse(LabelPromoMontoID.Text);

                int tipoID;
                if (desctoID == 1)
                {
                    tipoID = 1;
                }
                else
                {
                    tipoID = 5;
                }

                string tokenCotizacion = Convert.ToString(Request["coti"]);

                // para evitar generar una nueva cotizacion, se verifica si se entrogo via post el id de la cotizacion
                int buyOrder;
                if (int.TryParse(tokenCotizacion, out int var))
                {
                    buyOrder = var;
                }
                else
                {
                    buyOrder = GenerarCotizacion(totalPago, LabelPagoApoderadoID.Text, LabelPagoALumnoID.Text, desctoID, tipoID);
                }

                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, "sam_web_e_commercer", DateTime.Now, DateTime.Now.AddMinutes(30), true, buyOrder.ToString());
                string encrypt = FormsAuthentication.Encrypt(ticket);
                HttpCookie cookie = new HttpCookie("SAM_BUY_ORDER", encrypt);
                Response.Cookies.Add(cookie);


                Random random = new Random();
                int randomsessionId = random.Next(0, 100000);
                string idSession = randomsessionId.ToString();

                var tx = new Transaction(new Options("597032360084", "1947052d36f3ef833095e4bbb714f60f", WebpayIntegrationType.Live));
                var response = tx.Create(buyOrder.ToString(), idSession, totalPago, "https://norteamericano.cl/cursos/tbk.aspx");

                //var tx = new Transaction(new Options(IntegrationCommerceCodes.WEBPAY_PLUS, IntegrationApiKeys.WEBPAY, WebpayIntegrationType.Test));
                //var response = tx.Create(buyOrder.ToString(), idSession, totalPago, "https://test.norteamericano.cl/cursos/tbk.aspx");

                string url = response.Url;
                string token = response.Token;
                string link = url + "?token_ws=" + token;
                Response.Redirect(link);
            }
            else
            {
                row_termino.Visible = true;
            }
        }

        protected void ListaComuna_SelectedIndexChanged(object sender, EventArgs e)
        {
            NRegionComuna nRegion = new NRegionComuna();
            int idRegion = int.Parse(LabelRegionID.Text);

            string comuna = ListaComuna.SelectedValue.ToString();
            string comunaID = nRegion.ComunaID(idRegion, comuna);
            LabelComunaID.Text = comunaID.ToString();
            TextBoxAlumnoDireccion.Focus();


            if (LabelTipoDoc.Text == "Pasaporte")
            {
                ClientScript.RegisterStartupScript(GetType(), "Popup", "mostrar(2);", true);
            }
        }

        protected void CheckBoxTerminos_CheckedChanged(object sender, EventArgs e)
        {
            row_termino.Visible = false;
        }

        protected void TextBoxAlumnoRun_TextChanged(object sender, EventArgs e)
        {
            string id = TextBoxAlumnoRun.Text;
            Ncotizacion ncotizacion = new Ncotizacion();
            DataTable data = ncotizacion.BuscarAlumno(id);

            row_btn_next.Visible = true;
            row_btn_mensaje_01.Visible = false;
            row_btn_mensaje_02.Visible = false;

            if (data.Rows.Count > 0)
            {
                TextBoxAlumnoRun.Text = data.Rows[0]["idAlumno"].ToString();
                TextBoxAlumnoNombre.Text = data.Rows[0]["Nombres"].ToString();
                TextBoxAlumnoPaterno.Text = data.Rows[0]["AP_Paterno"].ToString();
                TextBoxAlumnoMaterno.Text = data.Rows[0]["AP_Materno"].ToString();
                TextBoxAlumnoMail.Text = data.Rows[0]["Email"].ToString();
                TextBoxAlumnoNace.Text = data.Rows[0]["FechaNacimiento"].ToString();
                TextBoxAlumnoFono.Text = data.Rows[0]["Fono"].ToString();
                LabelTipoDocAlum.Text = "Run";

                DateTime nace = DateTime.Parse(data.Rows[0]["FechaNacimiento"].ToString());
                DateTime hoy = DateTime.Parse(DateTime.Now.ToString("yyyy-MM-dd"));

                int year = hoy.Year - nace.Year;
                if (hoy.Month < nace.Month || (hoy.Month == nace.Month && hoy.Day < nace.Day))
                {
                    year--;
                }

                bool validar = false;

                if (year >= 12)
                {
                    if (year <= 17)
                    {
                        validar = true;
                    }
                }

                if (!validar)
                {
                    row_btn_next.Visible = false;
                    row_btn_mensaje_01.Visible = true;
                    row_btn_mensaje_02.Visible = true;

                    if (year > 17)
                    {
                        LinkButtonCambioPrograma.PostBackUrl = "~/cursos/adults/Index.aspx";
                    }
                    else if (year >= 11 || year <= 7)
                    {
                        LinkButtonCambioPrograma.PostBackUrl = "~/cursos/kid/Index.aspx";
                    }
                    else if (year >= 4 || year <= 6)
                    {
                        LinkButtonCambioPrograma.PostBackUrl = "~/cursos/pre/Index.aspx";
                    }
                }
            }
            else
            {
                TextBoxAlumnoNombre.Focus();
            }
        }

        protected void TextBoxAlumnoPasa_TextChanged(object sender, EventArgs e)
        {
            string id = TextBoxAlumnoPasa.Text;
            Ncotizacion ncotizacion = new Ncotizacion();
            DataTable data = ncotizacion.BuscarAlumno(id);

            row_btn_next.Visible = true;
            row_btn_mensaje_01.Visible = false;
            row_btn_mensaje_02.Visible = false;

            if (data.Rows.Count > 0)
            {               
                TextBoxAlumnoNombre.Text = data.Rows[0]["Nombres"].ToString();
                TextBoxAlumnoPaterno.Text = data.Rows[0]["AP_Paterno"].ToString();
                TextBoxAlumnoMaterno.Text = data.Rows[0]["AP_Materno"].ToString();
                TextBoxAlumnoMail.Text = data.Rows[0]["Email"].ToString();
                TextBoxAlumnoNace.Text = data.Rows[0]["FechaNacimiento"].ToString();
                TextBoxAlumnoFono.Text = data.Rows[0]["Fono"].ToString();
                LabelTipoDocAlum.Text = "Pasaporte";

                DateTime nace = DateTime.Parse(data.Rows[0]["FechaNacimiento"].ToString());
                DateTime hoy = DateTime.Parse(DateTime.Now.ToString("yyyy-MM-dd"));

                int year = hoy.Year - nace.Year;
                if (hoy.Month < nace.Month || (hoy.Month == nace.Month && hoy.Day < nace.Day))
                {
                    year--;
                }

                bool validar = false;

                if (year >= 12)
                {
                    if (year <= 17)
                    {
                        validar = true;
                    }
                }

                if (!validar)
                {
                    row_btn_next.Visible = false;
                    row_btn_mensaje_01.Visible = true;
                    row_btn_mensaje_02.Visible = true;

                    if (year > 17)
                    {
                        LinkButtonCambioPrograma.PostBackUrl = "~/cursos/adults/Index.aspx";
                    }
                    else if (year >= 11 || year <= 7)
                    {
                        LinkButtonCambioPrograma.PostBackUrl = "~/cursos/kid/Index.aspx";
                    }
                    else if (year >= 4 || year <= 6)
                    {
                        LinkButtonCambioPrograma.PostBackUrl = "~/cursos/pre/Index.aspx";
                    }
                }
            }
            else
            {
                TextBoxAlumnoNombre.Focus();
            }

            if (LabelTipoDocAlum.Text == "Pasaporte")
            {
                ClientScript.RegisterStartupScript(GetType(), "Popup", "mostrarAlum(2);", true);
            }
        }

        protected void LinkButtonNextApo_Click(object sender, EventArgs e)
        {

            Tr_direccion.Visible = false;
            Tr_comuna.Visible = false;
            Tr_fono2.Visible = false;
            Tr_fono.Visible = false;
            Tr_mail.Visible = false;
            Tr_nace.Visible = false;
            Tr_paterno.Visible = false;
            Tr_nombre.Visible = false;
            Tr_id.Visible = false;

            string id = TextBoxAlumnoRun.Text.Trim().ToUpper();

            if (LabelTipoDocAlum.Text == "Pasaporte")
            {
                id = TextBoxAlumnoPasa.Text;
            }
                string nombre = TextBoxAlumnoNombre.Text.Trim().ToUpper();
            string paterno = TextBoxAlumnoPaterno.Text.Trim().ToUpper();
            string mail = TextBoxAlumnoMail.Text.Trim().ToUpper();

            if (!string.IsNullOrEmpty(id))
            {
                if (!string.IsNullOrEmpty(nombre))
                {
                    if (!string.IsNullOrEmpty(paterno))
                    {
                        if (DateTime.TryParse(TextBoxAlumnoNace.Text, out DateTime dateNace))
                        {
                            if (!string.IsNullOrEmpty(mail))
                            {
                                if (int.TryParse(TextBoxAlumnoFono.Text.Trim(), out int fono))
                                {
                                    if (fono.ToString().Length == 9)
                                    {
                                        shop_pago_alum.Visible = false;
                                        shop_pago_apo.Visible = true;
                                    }
                                    else
                                    {
                                        Tr_fono2.Visible = true;
                                        if (LabelTipoDocAlum.Text == "Pasaporte")
                                        {
                                            ClientScript.RegisterStartupScript(GetType(), "Popup", "mostrarAlum(2);", true);
                                        }
                                    }
                                }
                                else
                                {
                                    Tr_fono.Visible = true;
                                    if (LabelTipoDocAlum.Text == "Pasaporte")
                                    {
                                        ClientScript.RegisterStartupScript(GetType(), "Popup", "mostrarAlum(2);", true);
                                    }
                                }
                            }
                            else
                            {
                                Tr_mail.Visible = true;
                                if (LabelTipoDocAlum.Text == "Pasaporte")
                                {
                                    ClientScript.RegisterStartupScript(GetType(), "Popup", "mostrarAlum(2);", true);
                                }
                            }
                        }
                        else
                        {
                            Tr_nace.Visible = true;
                            if (LabelTipoDocAlum.Text == "Pasaporte")
                            {
                                ClientScript.RegisterStartupScript(GetType(), "Popup", "mostrarAlum(2);", true);
                            }
                        }
                    }
                    else
                    {
                        Tr_paterno.Visible = true;
                        if (LabelTipoDocAlum.Text == "Pasaporte")
                        {
                            ClientScript.RegisterStartupScript(GetType(), "Popup", "mostrarAlum(2);", true);
                        }
                    }
                }
                else
                {
                    Tr_nombre.Visible = true;
                    if (LabelTipoDocAlum.Text == "Pasaporte")
                    {
                        ClientScript.RegisterStartupScript(GetType(), "Popup", "mostrarAlum(2);", true);
                    }
                }
            }
            else
            {
                Tr_id.Visible = true;
                if (LabelTipoDocAlum.Text == "Pasaporte")
                {
                    ClientScript.RegisterStartupScript(GetType(), "Popup", "mostrarAlum(2);", true);
                }
            }
        }

        protected void LinkButtonNextResumen_Click(object sender, EventArgs e)
        {
            if (GrabaAlumno())
            {
                if (GrabaApoderado())
                {
                    string apoID;
                    if (LabelTipoDoc.Text == "Pasaporte")
                    {
                        apoID = TextBoxApoderadoPasaporte.Text;
                    }
                    else
                    {
                        apoID = TextBoxApoderadoRun.Text;
                    }

                    string alumID;
                    if (LabelTipoDocAlum.Text == "Pasaporte")
                    {
                        alumID = TextBoxAlumnoPasa.Text;
                    }
                    else
                    {
                        alumID = TextBoxAlumnoRun.Text;
                    }

                    LabelPagoALumnoID.Text = alumID;
                    LabelPagoALumnoNombre.Text = TextBoxAlumnoNombre.Text + " " + TextBoxAlumnoPaterno.Text + " " + TextBoxAlumnoMaterno.Text;
                    LabelPagoApoderadoNombre.Text = TextBoxApoderadoNombre.Text + " " + TextBoxApoderadoPaterno.Text + " " + TextBoxApoderadoMaterno.Text;
                    LabelPagoApoderadoID.Text = apoID;
                    LabelPagoApoderadoDireccion.Text = TextBoxAlumnoDireccion.Text + ", " + ListaComuna.SelectedItem.Text;
                    LabelPagoApoderadoFono.Text = "+56" + TextBoxApoderadoFono.Text;
                    LabelPagoApoderadoMail.Text = TextBoxApoderadoMail.Text;
                    shop_pago_apo.Visible = false;
                    shop_pago_resumen.Visible = true;
                }
            }
        }

        protected void TextBoxApoderadoRun_TextChanged(object sender, EventArgs e)
        {
            string id = TextBoxApoderadoRun.Text;
            Ncotizacion ncotizacion = new Ncotizacion();
            DataTable data = ncotizacion.BuscarApoderado(id);

            if (data.Rows.Count > 0)
            {
                TextBoxApoderadoNombre.Text = data.Rows[0]["Nombres"].ToString();
                TextBoxApoderadoPaterno.Text = data.Rows[0]["AP_Paterno"].ToString();
                TextBoxApoderadoMaterno.Text = data.Rows[0]["AP_Materno"].ToString();
                TextBoxApoderadoMail.Text = data.Rows[0]["Email"].ToString();
                TextBoxApoderadoFono.Text = data.Rows[0]["Fono"].ToString();
                CrearLead();
                LabelTipoDoc.Text = "Run";

                try
                {
                    ListaRegion.SelectedValue = data.Rows[0]["NombreRegion"].ToString();
                    ListaRegionAlumno_SelectedIndexChanged(sender, e);
                    ListaComuna.SelectedValue = data.Rows[0]["NombreComuna"].ToString();
                    ListaComuna_SelectedIndexChanged(sender, e);
                    TextBoxAlumnoDireccion.Text = data.Rows[0]["Direccion"].ToString();
                }
                catch (Exception)
                {
                    TextBoxAlumnoDireccion.Text = string.Empty;
                }

            }
            else
            {
                TextBoxApoderadoNombre.Focus();
            }
        }

        protected void TextBoxApoderadoPasa_TextChanged(object sender, EventArgs e)
        {
            string id = TextBoxApoderadoPasaporte.Text;
            Ncotizacion ncotizacion = new Ncotizacion();
            DataTable data = ncotizacion.BuscarApoderado(id);

            if (data.Rows.Count > 0)
            {
                TextBoxApoderadoNombre.Text = data.Rows[0]["Nombres"].ToString();
                TextBoxApoderadoPaterno.Text = data.Rows[0]["AP_Paterno"].ToString();
                TextBoxApoderadoMaterno.Text = data.Rows[0]["AP_Materno"].ToString();
                TextBoxApoderadoMail.Text = data.Rows[0]["Email"].ToString();
                TextBoxApoderadoFono.Text = data.Rows[0]["Fono"].ToString();
                CrearLead();
                LabelTipoDoc.Text = "Pasaporte";
                try
                {
                    ListaRegion.SelectedValue = data.Rows[0]["NombreRegion"].ToString();
                    ListaRegionAlumno_SelectedIndexChanged(sender, e);
                    ListaComuna.SelectedValue = data.Rows[0]["NombreComuna"].ToString();
                    ListaComuna_SelectedIndexChanged(sender, e);
                    TextBoxAlumnoDireccion.Text = data.Rows[0]["Direccion"].ToString();
                }
                catch (Exception)
                {
                    TextBoxAlumnoDireccion.Text = string.Empty;
                }

            }
            else
            {
                TextBoxApoderadoNombre.Focus();
            }


            if (LabelTipoDoc.Text == "Pasaporte")
            {
                ClientScript.RegisterStartupScript(GetType(), "Popup", "mostrar(2);", true);
            }
        }

        protected void TextBoxApoderadoMail_TextChanged(object sender, EventArgs e)
        {
            CrearLead();


            if (LabelTipoDoc.Text == "Pasaporte")
            {
                ClientScript.RegisterStartupScript(GetType(), "Popup", "mostrar(2);", true);
            }
        }
    }
}