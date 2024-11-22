using Negocio;
using System;
using System.ComponentModel;
using System.Data;
using System.Web.Routing;
using System.Web.UI.WebControls;

namespace Web.Inscripcion
{
    public partial class Alumno : System.Web.UI.Page
    {
        public void FinalizarVenta()
        {
            try
            {
                FechaApi fecha = new FechaApi();
                DateTime fechaEmision = fecha.GetNetworkTime();
                int idCotizacion = int.Parse(LabelCotizacionID.Text);
                int netoVenta = int.Parse(LabelCotizacionNeto.Text);
                int total = int.Parse(LabelCotizacionPago.Text);
                int tipoDescto = int.Parse(LabelCotizacionTipoDescto.Text);
                decimal montoDescuento = decimal.Parse(LabelCotizacionDesctoValor.Text);
                int varDescuento = 0;
                switch (tipoDescto)
                {
                    case 5:
                        decimal valor = montoDescuento / 100;
                        decimal descuentoValor = netoVenta * valor;
                        varDescuento = int.Parse(decimal.Round(descuentoValor, 0).ToString());
                        break;
                    case 6:
                        valor = montoDescuento / 100;
                        descuentoValor = netoVenta * valor;
                        varDescuento = int.Parse(decimal.Round(descuentoValor, 0).ToString());
                        break;
                    case 7:
                        valor = montoDescuento / 100;
                        descuentoValor = netoVenta * valor;
                        varDescuento = int.Parse(decimal.Round(descuentoValor, 0).ToString());
                        break;

                    default:
                        varDescuento = int.Parse(montoDescuento.ToString());
                        break;
                }

                Ncotizacion ncotizacion = new Ncotizacion();
                string resultado = ncotizacion.GrabaVenta(LabelApoID.Text, idCotizacion, fechaEmision, netoVenta, total, varDescuento);

                if (int.TryParse(resultado, out int folioBoleta))
                {
                    int monto = int.Parse(LabelTBKmonto.Text);
                    int cuotas = int.Parse(LabelTBKcuotas.Text);
                    int tarjeta = int.Parse(LabelTBKTrajetaCod.Text);
                    int codAutoriza = int.Parse(LabelTBKcodigoAuto.Text);
                    resultado = ncotizacion.GrabaPago(folioBoleta, monto, cuotas, tarjeta, codAutoriza, LabelApoID.Text);

                    if (resultado.Equals("ok"))
                    {
                        Response.Redirect("FacturadorBoleta.aspx?cotizacion_id=" + idCotizacion.ToString() + "&folio_id=" + folioBoleta.ToString() + "&sitio_sam=SAM");
                    }
                }
                else
                {
                    ncotizacion.EliminaDatosCoti(idCotizacion);
                    row_error_finalizar.Visible = true;
                }
            }
            catch (Exception)
            {
                row_error_finalizar.Visible = true;
            }
        }

        public int CambioRegularSummer(int nivel)
        {
            int nuevoID;

            switch (nivel)
            {
                case 39:
                    nuevoID = 155;
                    break;
                case 40:
                    nuevoID = 154;
                    break;
                case 41:
                    nuevoID = 156;
                    break;
                case 42:
                    nuevoID = 157;
                    break;
                case 43:
                    nuevoID = 170;
                    break;
                case 44:
                    nuevoID = 171;
                    break;
                case 45:
                    nuevoID = 172;
                    break;
                case 46:
                    nuevoID = 173;
                    break;
                case 47:
                    nuevoID = 174;
                    break;
                case 48:
                    nuevoID = 167;
                    break;
                case 90:
                    nuevoID = 175;
                    break;
                case 144:
                    nuevoID = 176;
                    break;
                case 145:
                    nuevoID = 159;
                    break;
                case 146:
                    nuevoID = 177;
                    break;
                case 30:
                    nuevoID = 191;
                    break;
                case 31:
                    nuevoID = 245;
                    break;
                case 32:
                    nuevoID = 246;
                    break;
                case 33:
                    nuevoID = 247;
                    break;
                case 34:
                    nuevoID = 248;
                    break;
                case 35:
                    nuevoID = 249;
                    break;
                case 36:
                    nuevoID = 250;
                    break;
                case 37:
                    nuevoID = 251;
                    break;
                default:
                    nuevoID = nivel;
                    break;
            }

            return nuevoID;
        }

        public int CambioRegularIntensivo(int nivel)
        {
            int nuevoID = 0;

            switch (nivel)
            {
                case 39:
                    nuevoID = 65;
                    break;
                case 40:
                    nuevoID = 65;
                    break;
                case 41:
                    nuevoID = 66;
                    break;
                case 42:
                    nuevoID = 66;
                    break;
                case 43:
                    nuevoID = 67;
                    break;
                case 44:
                    nuevoID = 67;
                    break;
                case 45:
                    nuevoID = 68;
                    break;
                case 46:
                    nuevoID = 68;
                    break;
                case 47:
                    nuevoID = 69;
                    break;
                case 48:
                    nuevoID = 69;
                    break;
                case 90:
                    nuevoID = 151;
                    break;
                case 144:
                    nuevoID = 151;
                    break;
                case 145:
                    nuevoID = 152;
                    break;
                case 146:
                    nuevoID = 152;
                    break;
                default:
                    nuevoID = nivel;
                    break;
            }

            return nuevoID;
        }

        public void SelectCurso(string sede, string tipoEval, int nivelID, string nombre)
        {
            div_opciones.Visible = false;
            div_horario.Visible = true;

            string tipo = LabelCompraTipoCurso.Text;
            string programa = LabelCursoComprado.Text;
            int nivel = 0; ;

            if (tipoEval == "inicial")
            {
                if (programa == "adultos")
                {
                    switch (tipo)
                    {
                        case "Summer School":
                            nivel = 155;
                            LabelNivel.Text = "30HS BEGINNER 1";
                            break;
                        case "Regular":
                            nivel = 39;
                            LabelNivel.Text = "BEGINNER 1";
                            break;
                        case "Intensivo":
                            nivel = 65;
                            LabelNivel.Text = "BEGINNER INTENSIVE";
                            break;
                        default:
                            nivel = 39;
                            break;
                    }
                }
                else if (programa == "adolescentes")
                {
                    switch (tipo)
                    {
                        case "Summer School":
                            nivel = 191;
                            LabelNivel.Text = "30HS TEENS: BEGINNER";
                            break;
                        case "Regular":
                            nivel = 30;
                            LabelNivel.Text = "TEENS: BEGINNER";
                            break;
                        default:
                            nivel = 30;
                            break;
                    }
                }
                else if (programa == "kid")
                {
                    switch (tipo)
                    {
                        case "Summer School":
                            nivel = 190;
                            LabelNivel.Text = "30HS KIDS BEGINNER 1";
                            break;
                        case "Regular":
                            nivel = 14;
                            LabelNivel.Text = "KIDS: BEGINNER 1";
                            break;
                        default:
                            nivel = 14;
                            break;
                    }
                }

                LabelNivelRespaldo.Text = LabelNivel.Text;
                LabelNivelID.Text = nivel.ToString();
            }
            else
            {
                switch (tipo)
                {
                    case "Summer School":
                        nivel = CambioRegularSummer(nivelID);

                        if (!nombre.Contains("30HS"))
                        {
                            LabelNivel.Text = "30HS " + nombre;
                        }
                        else
                        {
                            LabelNivel.Text = nombre;
                        }
                        break;
                    case "Intensivo":
                        nivel = CambioRegularIntensivo(nivelID);
                        nombre = nombre.Replace("1", string.Empty);
                        nombre = nombre.Replace("2", string.Empty);
                        LabelNivel.Text = nombre;
                        break;
                    default:
                        nivel = nivelID;
                        LabelNivel.Text = nombre;
                        break;
                }


                LabelNivelID.Text = nivel.ToString();
            }

            int sedeID;

            switch (sede)
            {
                case "Moneda":
                    sedeID = 1;
                    LabelCompraModalidad.Text = "Presencial";
                    break;
                case "Providencia":
                    sedeID = 2;
                    LabelCompraModalidad.Text = "Presencial";
                    break;
                case "La Florida":
                    sedeID = 3;
                    LabelCompraModalidad.Text = "Presencial";
                    break;
                case "Online":
                    sedeID = 4;
                    LabelCompraModalidad.Text = "Online";
                    break;
                default:
                    sedeID = 1;
                    LabelCompraModalidad.Text = "Presencial";
                    break;
            }

            div_opciones.Visible = false;
            div_horario.Visible = true;

            Ncursos ncursos = new Ncursos();
            DataListDisponibles.DataSource = ncursos.BuscarHorario(sedeID, nivel);
            DataListDisponibles.DataBind();
        }

        public void CargaRegion()
        {
            NRegionComuna nRegionComuna = new NRegionComuna();
            DataTable dataRegion = nRegionComuna.ListarRegion();

            ListaEditarRegion.Items.Clear();
            ListaEditarRegion.Items.Add("Seleccionar");

            for (int x = 0; x < dataRegion.Rows.Count; x++)
            {
                ListaEditarRegion.Items.Add(dataRegion.Rows[x]["NombreRegion"].ToString());
            }
            ListaEditarRegion.Items.Remove("SIN REGION");

        }

        public string NuevoNivelCurso(int curso, int programa)
        {
            NCompra compra = new NCompra();
            DataTable data = compra.BuscarSiguienteNivelPrograma(programa);

            string nuevoCurso = string.Empty;

            if (data.Rows.Count > 0)
            {
                bool cursoEncontrado = false;
                for (int i = 0; i < data.Rows.Count; i++)
                {
                    string varCurso = data.Rows[i]["Curso"].ToString();
                    int varNivel = int.Parse(data.Rows[i]["idCursos"].ToString());

                    if (cursoEncontrado)
                    {
                        nuevoCurso = varNivel + ";" + varCurso;
                        break;
                    }
                    else if (varNivel == curso)
                    {
                        cursoEncontrado = true;
                    }
                }
            }

            return nuevoCurso;
        }

        public void CargaDatos(string id)
        {
            NCompra nCompra = new NCompra();
            DataTable data = nCompra.Buscar(id);
            string edad;

            if (data.Rows.Count > 0)
            {
                info_alumno.Visible = true;
                info_alumno_login.Visible = false;
                edad = data.Rows[0]["Pre"].ToString();
                LabelAlumnoNombre.Text = data.Rows[0]["Nombres"].ToString().ToLower() + " " + data.Rows[0]["AP_Paterno"].ToString().ToLower() + " " + data.Rows[0]["AP_Materno"].ToString().ToLower();
                LabelAlumnoID.Text = data.Rows[0]["alumnoID"].ToString();
                LabelCotizacionID.Text = data.Rows[0]["idCotizacion"].ToString();
                LabelTarifaID.Text = data.Rows[0]["idPromo"].ToString();
                LabelApoderadoID.Text = data.Rows[0]["apoderadoID"].ToString();
                LabelCursoComprado.Text = data.Rows[0]["curso"].ToString();
                LabelCompraTipoCurso.Text = data.Rows[0]["cursoTipo"].ToString();
                string sede = data.Rows[0]["sede"].ToString();
                LabelCompraSede.Text = sede;
                LabelCompraSedeH.Text = sede;
                LabelSedeMostrar.Text = sede;
                LabelApoID.Text = data.Rows[0]["apoderadoID"].ToString();
                LabelApoName.Text = data.Rows[0]["apoNombre"].ToString();
                LabelApoPaterno.Text = data.Rows[0]["apoPaterno"].ToString();
                LabelApoMaterno.Text = data.Rows[0]["AP_Materno"].ToString();
                LabelApoMail.Text = data.Rows[0]["Email"].ToString();
                LabelApoDireccion.Text = data.Rows[0]["Direccion"].ToString();
                LabelApoDireccionComuna.Text = data.Rows[0]["NombreComuna"].ToString();
                LabelApoDireccionComunaID.Text = data.Rows[0]["idComunas"].ToString();
                LabelApoDireccionRegion.Text = data.Rows[0]["NombreRegion"].ToString();
                LabelApoDireccionRegionID.Text = data.Rows[0]["idRegiones"].ToString();
                LabelApoFono.Text = data.Rows[0]["Fono"].ToString();
                LabelCompraCant.Text = data.Rows[0]["cantidad"].ToString();


                Ncotizacion ncotizacion = new Ncotizacion();
                ncotizacion.GrabaCliente(LabelApoID.Text, LabelApoName.Text, LabelApoPaterno.Text, LabelApoMaterno.Text, LabelApoDireccion.Text, "SANTIAGO", LabelApoDireccionComuna.Text, LabelApoFono.Text, LabelApoMail.Text);

                if (sede == "Online")
                {
                    LabelCompraModalidad.Text = "Online";
                    LabelCompraSedeModal.Text = "Online";
                }
                else
                {
                    LabelCompraModalidad.Text = "Presencial";
                    LabelCompraSedeModal.Text = "Presencial";
                }

                // INFO PARA GENERAR BOLETA Y CONTRATO
                LabelCotizacionNeto.Text = data.Rows[0]["TarifaAcumulada"].ToString();
                LabelCotizacionPago.Text = data.Rows[0]["Total"].ToString();
                LabelCotizacionTipoDescto.Text = data.Rows[0]["idTipoDescuento"].ToString();
                LabelCotizacionDesctoValor.Text = data.Rows[0]["DsctoMnt"].ToString();

                // INFO DEL PAGO
                LabelTBKcodigoAuto.Text = data.Rows[0]["CodAuto"].ToString();
                LabelTBKcuotas.Text = data.Rows[0]["CuotaTbk"].ToString();
                LabelTBKmonto.Text = data.Rows[0]["MontoTbk"].ToString();

                string tipo = data.Rows[0]["TipoTarjeta"].ToString();
                if (tipo == "VD")
                {
                    LabelTBKTrajetaCod.Text = "11050800";
                }
                else
                {
                    LabelTBKTrajetaCod.Text = "11050600";
                }

                data = nCompra.BuscarContratos(id);

                if (data.Rows.Count > 0)
                {
                    int cant = data.Rows.Count - 1;
                    int idCurso = int.Parse(data.Rows[cant]["idCursos"].ToString());
                    int idPrograma = int.Parse(data.Rows[cant]["idPlanDeEstudios"].ToString());
                    string nuevo = NuevoNivelCurso(idCurso, idPrograma);
                    string[] nuevoNivel = nuevo.Split(';');
                    SelectCurso(sede, "diagnostico", int.Parse(nuevoNivel[0]), nuevoNivel[1]);
                }
                else
                {
                    if (LabelCursoComprado.Text == "preescolares")
                    {
                        switch (edad)
                        {
                            case "4":
                                SelectCurso(sede, "diagnostico", 11, "YOUNG LEARNERS 1");
                                break;
                            case "5":
                                SelectCurso(sede, "diagnostico", 12, "YOUNG LEARNERS 2");
                                break;
                            case "6":
                                SelectCurso(sede, "diagnostico", 13, "YOUNG LEARNERS 3");
                                break;
                            default:
                                break;
                        }
                    }
                }

            }
            else
            {
                info_alumno_login.Visible = true;
                info_alumno.Visible = false;
                div_error_login.Visible = true;
            }
        }

        public void CargaDatosApoderado(string id)
        {
            NCompra nCompra = new NCompra();
            DataTable data = nCompra.BuscarApo(id);

            if (data.Rows.Count > 0)
            {
                info_apo_disponibles.Visible = true;
                info_alumno_login.Visible = false;

                DataListApoderado.DataSource = data;
                DataListApoderado.DataBind();
            }
            else
            {
                info_alumno_login.Visible = true;
                info_alumno.Visible = false;
                div_error_login.Visible = true;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            MaintainScrollPositionOnPostBack = true;

            if (!IsPostBack)
            {
                string id = Convert.ToString(Request["usuario"]);

                if (string.IsNullOrEmpty(id))
                {
                    info_alumno_login.Visible = true;
                    info_alumno.Visible = false;
                }
                else
                {
                    string tipo = Convert.ToString(Request["tipo"]);

                    if (tipo == "alumno")
                    {
                        CargaDatos(id);
                        string token = Convert.ToString(Request["diagnostico"]);
                        if (!string.IsNullOrEmpty(token))
                        {
                            byte[] decryted = Convert.FromBase64String(token);
                            string result = System.Text.Encoding.Unicode.GetString(decryted);
                            int.TryParse(result, out int nivelTest);

                            if (nivelTest > 0)
                            {
                                token = Convert.ToString(Request["resultado"]);
                                decryted = Convert.FromBase64String(token);
                                result = System.Text.Encoding.Unicode.GetString(decryted);

                                LabelNivelRespaldo.Text = result;
                                string sede = LabelCompraSede.Text;
                                SelectCurso(sede, "diagnostico", nivelTest, result);
                            }
                        }
                    }
                    else if (tipo == "apoderado")
                    {
                        CargaDatosApoderado(id);
                    }
                }
            }
        }

        protected void LinkButtonInicial_Click(object sender, EventArgs e)
        {
            LabelNivelRespaldo.Text = "BEGINNER";
            string sede = LabelCompraSede.Text;
            SelectCurso(sede, "inicial", 0, string.Empty);
        }

        protected void DataListDisponibles_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Label lblcodigoID = (Label)e.Item.FindControl("lblCursoID");
            Label lbldias = (Label)e.Item.FindControl("lblCursoDias");
            Label lblhora = (Label)e.Item.FindControl("lblCursoHora");
            Label lblfechaI = (Label)e.Item.FindControl("lblCursoFechaInicio");
            Label lblfechaT = (Label)e.Item.FindControl("lblCursoFechaTermino");
            Label lblPeriodo = (Label)e.Item.FindControl("lblCursoPeriodo");
            Label lblJornada = (Label)e.Item.FindControl("lblCursoJornada");
            Label lblSede = (Label)e.Item.FindControl("lblCursoSede");
            Label lblSedeid = (Label)e.Item.FindControl("lblCursoSedeID");
            Label lblnombre = (Label)e.Item.FindControl("lblCursoNom");

            table_cursos_seleccionado.Visible = true;
            div_select_horario.Visible = false;
            div_fin.Visible = true;
            LinkButtonCambiarSede.Visible = false;


            LabelDias.Text = lbldias.Text;
            LabelCursoID.Text = lblcodigoID.Text;
            LabelHorario.Text = lblhora.Text;
            LabelInicio.Text = lblfechaI.Text;
            LabelTermino.Text = lblfechaT.Text;
        }

        protected void LinkButtonActualizar_Click(object sender, EventArgs e)
        {
            div_facturacion_edi.Visible = true;
            div_facturacion.Visible = false;

            string fono = LabelApoFono.Text;
            fono = fono.Replace("+569", string.Empty);

            TextBoxEditarFono.Text = fono;
            TextBoxEditarMail.Text = LabelApoMail.Text;
            TextBoxEditarDireccion.Text = LabelApoDireccion.Text;

            TextBoxEditarID.Text = LabelApoID.Text;
            TextBoxEditarName.Text = LabelApoName.Text;
            TextBoxEditarPaterno.Text = LabelApoPaterno.Text;
            TextBoxEditarMaterno.Text = LabelApoMaterno.Text;

            CargaRegion();
            ListaEditarRegion.SelectedValue = LabelApoDireccionRegion.Text;
            ListaEditarRegion_SelectedIndexChanged(sender, e);
            ListaEditarComuna.SelectedValue = LabelApoDireccionComuna.Text;
        }

        protected void LinkButtonEditarCancelar_Click(object sender, EventArgs e)
        {
            div_facturacion_edi.Visible = false;
            div_facturacion.Visible = true;
        }

        protected void LinkButtonCambiarSede_Click(object sender, EventArgs e)
        {
            row_sede.Visible = false;
            row_sede_cambio.Visible = true;
            row_sede_cambio_btn.Visible = true;

            ListaSedes.Items.Clear();
            ListaSedes.Items.Add("Selecciona una sede");
            ListaSedes.Items.Add("Moneda");
            ListaSedes.Items.Add("Providencia");
            ListaSedes.Items.Add("La Florida");
            ListaSedes.Items.Add("Online");
        }

        protected void LinkButtonSedeCancelar_Click(object sender, EventArgs e)
        {
            row_sede.Visible = true;
            row_sede_cambio.Visible = false;
            row_sede_cambio_btn.Visible = false;
        }

        protected void LinkButtonCambiar_Click(object sender, EventArgs e)
        {
            div_select_horario.Visible = true;
            div_fin.Visible = false;
            table_cursos_seleccionado.Visible = false;
            LinkButtonCambiarSede.Visible = true;
        }

        protected void LinkButtonEditarGuardar_Click(object sender, EventArgs e)
        {
            string idApo = TextBoxEditarID.Text.Trim().ToUpper();
            string idAlum = LabelAlumnoID.Text.Trim().ToUpper();
            string nombre = TextBoxEditarName.Text.Trim().ToUpper();
            string paterno = TextBoxEditarPaterno.Text.Trim().ToUpper();
            string materno = TextBoxEditarMaterno.Text.Trim().ToUpper();
            string mail = TextBoxEditarMail.Text.Trim().ToUpper();
            string direccion = TextBoxEditarDireccion.Text.Trim().ToUpper();

            if (!string.IsNullOrEmpty(idApo))
            {
                if (!string.IsNullOrEmpty(nombre))
                {
                    if (!string.IsNullOrEmpty(paterno))
                    {
                        if (!string.IsNullOrEmpty(mail))
                        {
                            if (int.TryParse(TextBoxEditarFono.Text.Trim(), out int fono))
                            {
                                if (fono.ToString().Length == 9)
                                {
                                    if (ListaEditarComuna.SelectedIndex > 0)
                                    {
                                        if (!string.IsNullOrEmpty(direccion))
                                        {
                                            string comuma = LabelApoDireccionComunaID.Text;
                                            Ncotizacion ncotizacion = new Ncotizacion();
                                            string resultado = ncotizacion.IngresarApoderado(idAlum, idApo, paterno, materno, nombre, comuma, direccion, fono, mail);

                                            if (resultado.Equals("ok"))
                                            {
                                                CargaDatos(idApo);
                                                div_facturacion_edi.Visible = false;
                                                div_facturacion.Visible = true;
                                            }
                                            else
                                            {
                                                error_edit_apo.Visible = true;
                                                LabelError.Text = "Error, sistema no disponible, intente más tarde ";
                                            }
                                        }
                                        else
                                        {
                                            error_edit_apo.Visible = true;
                                            LabelError.Text = "La Dirección es necesaria";
                                        }
                                    }
                                    else
                                    {
                                        error_edit_apo.Visible = true;
                                        LabelError.Text = "La Comuna es necesaria";
                                    }
                                }
                                else
                                {
                                    error_edit_apo.Visible = true;
                                    LabelError.Text = "El Teléfono debe contener 9 dígitos ";
                                }
                            }
                            else
                            {
                                error_edit_apo.Visible = true;
                                LabelError.Text = "El Teléfono es mecesario";
                            }
                        }
                        else
                        {
                            error_edit_apo.Visible = true;
                            LabelError.Text = "El Mail es mecesario";
                        }
                    }
                    else
                    {
                        error_edit_apo.Visible = true;
                        LabelError.Text = "El Apellido paterno es mecesario";
                    }
                }
                else
                {
                    error_edit_apo.Visible = true;
                    LabelError.Text = "El Nombre es mecesario";
                }
            }
            else
            {
                error_edit_apo.Visible = true;
                LabelError.Text = "El Run de facturación es mecesario";
            }

        }

        protected void ListaEditarRegion_SelectedIndexChanged(object sender, EventArgs e)
        {
            NRegionComuna nRegion = new NRegionComuna();
            string region = ListaEditarRegion.SelectedItem.ToString();
            int idRegion = nRegion.RegionID(region);
            LabelApoDireccionRegionID.Text = idRegion.ToString();
            DataTable dataRegion = nRegion.ListarComunas(idRegion);

            ListaEditarComuna.Items.Clear();
            ListaEditarComuna.Items.Add("Seleccionar");

            for (int x = 0; x < dataRegion.Rows.Count; x++)
            {
                ListaEditarComuna.Items.Add(dataRegion.Rows[x]["NombreComuna"].ToString());
            }
            ListaEditarComuna.Items.Remove("Sin Comuna");
        }

        protected void LinkButtonSedeCambiar_Click(object sender, EventArgs e)
        {
            int nivelID = int.Parse(LabelNivelID.Text);
            string sede = ListaSedes.SelectedItem.Text;
            SelectCurso(sede, "CAMBIO", nivelID, LabelNivelRespaldo.Text);
            LabelCompraSedeH.Text = sede;
            LabelSedeMostrar.Text = sede;
            row_sede.Visible = true;
            row_sede_cambio.Visible = false;
            row_sede_cambio_btn.Visible = false;
        }

        protected void ListaEditarComuna_SelectedIndexChanged(object sender, EventArgs e)
        {
            NRegionComuna nRegion = new NRegionComuna();
            int idRegion = int.Parse(LabelApoDireccionRegionID.Text);

            string comuna = ListaEditarComuna.SelectedValue.ToString();
            string comunaID = nRegion.ComunaID(idRegion, comuna);
            LabelApoDireccionComunaID.Text = comunaID.ToString();
        }

        protected void LinkButtonFinalizar_Click(object sender, EventArgs e)
        {
            string alumnoID = LabelAlumnoID.Text;

            NCompra nCompra = new NCompra();
            DataTable data = nCompra.Buscar(alumnoID);

            if (data.Rows.Count > 0)
            {
                if (CheckBoxValidar.Checked)
                {
                    Ncotizacion ncotizacion = new Ncotizacion();
                    int cotiID = int.Parse(LabelCotizacionID.Text);
                    int cursoID = int.Parse(LabelCursoID.Text);
                    int tarifaID = int.Parse(LabelTarifaID.Text);
                    string resultado = ncotizacion.IngresarInscripcion(cotiID, alumnoID, cursoID, tarifaID);
                    if (resultado == "ok")
                    {
                        FinalizarVenta();
                    }
                }
                else
                {
                    row_validar_fin.Visible = true;
                }
            }
            else
            {
                info_alumno.Visible = false;
                info_alumno_login.Visible = true;
                info_apo_disponibles.Visible = false;
                div_error_login.Visible = true;
            }
        }

        protected void CheckBoxValidar_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBoxValidar.Checked)
            {
                row_validar_fin.Visible = false;
            }
        }

        protected void ListaSedes_SelectedIndexChanged(object sender, EventArgs e)
        {
            LinkButtonSedeCambiar_Click(sender, e);
        }

        protected void LinkButtonBuscar_Click(object sender, EventArgs e)
        {
            string id = TextBoxInscpAlumn.Text;
            Response.Redirect("alumno.aspx?usuario=" + id + "&tipo=alumno");
        }

        protected void LinkButtonDiagnostico_Click(object sender, EventArgs e)
        {
            string programa = LabelCursoComprado.Text;
            string id = LabelAlumnoID.Text;

            if (programa.Equals("adultos"))
            {
                Response.Redirect("~/Diagnostico/Adults/Index.aspx?alum=" + id);
            }
            else if (programa.Equals("adolescentes"))
            {
                Response.Redirect("~/Diagnostico/Teens/Index.aspx?alum=" + id);
            }
            else if (programa.Equals("kid"))
            {
                Response.Redirect("~/Diagnostico/Kid/Index.aspx?alum=" + id);
            }
        }

        protected void LinkButtonIngresoApo_Click(object sender, EventArgs e)
        {
            table_menu.Visible = false;
            table_run_alum.Visible = false;
            table_run_apo.Visible = true;
        }

        protected void LinkButtonIngresoAlum_Click(object sender, EventArgs e)
        {
            table_menu.Visible = false;
            table_run_alum.Visible = true;
            table_run_apo.Visible = false;
        }

        protected void LinkButtonBuscarApo_Click(object sender, EventArgs e)
        {
            string id = TextBoxInscpApo.Text;
            CargaDatosApoderado(id);
        }
    }
}