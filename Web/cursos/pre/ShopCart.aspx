<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="ShopCart.aspx.cs" Inherits="Web.cursos.pre.ShopCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Preescolares | Cursos de Inglés </title>
    <link rel="canonical" href="https://norteamericano.cl/" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link href="../../lib/css/check-radio.css" rel="stylesheet" />

    <script type="text/javascript">
        function fechas(elEvento) {
            var evento = elEvento || window.event;
            if (evento.keyCode == 8) {
            } else {
                var fecha = document.getElementById("ContentPlaceHolder1_TextBoxAlumnoNace");
                if (fecha.value.length == 2 || fecha.value.length == 5) {
                    fecha.value += "-";
                }
            }
        }
    </script>

    <script type="text/javascript">
        function valideKey(evt) {

            // code is the decimal ASCII representation of the pressed key.
            var code = (evt.which) ? evt.which : evt.keyCode;

            if (code == 8) { // backspace.
                return true;
            } else if (code >= 48 && code <= 57) { // is a number.
                return true;
            } else { // other keys.
                return false;
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Google Tag Manager (noscript) -->
    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W7349HX"
            height="0" width="0" style="display: none; visibility: hidden"></iframe>
    </noscript>
    <!-- End Google Tag Manager (noscript) -->


    <div class="container-fluidabout  bg-light py-5">
        <div class="container py-5">
            <asp:Label ID="LabelRespaldoTarifa" Visible="false" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="LabelRespaldoPromo" Visible="false" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="LabelPromoActiva" Visible="false" runat="server" Text="Label"></asp:Label>

            <div class="row g-4 bg-white" runat="server" id="shop_programa">
                <div class="col-md-2">
                    <img src="../../img/programas/preschool.webp" class="img-fluid rounded w-100" alt="">
                </div>
                <div class="col-md-6">
                    <table class="table table-sm text-dark table-borderless" runat="server" id="table_summer" visible="false" style="font-size: 18px">
                        <tr>
                            <td style="width: 40%">Curso de Inglés</td>
                            <th>
                                <span class="text-primary">Preescolares</span>
                            </th>
                        </tr>
                        <tr>
                            <td style="width: 40%">Modalidad del Curso</td>
                            <th>
                                <span>Summer School</span>
                            </th>
                        </tr>
                        <tr>
                            <td>Duración</td>
                            <th><i class="fas fa-clock me-2"></i>1 mes</th>
                        </tr>
                        <tr>
                            <td>Clases</td>
                            <th><i class="fas fa-clock me-2"></i>4 por Semana</th>
                        </tr>
                        <tr>
                            <td>Inicio</td>
                            <th><i class="fas fa-calendar me-2"></i>Ene - Feb
                                <asp:Label ID="LabelYearSummer" runat="server" Text="Label"></asp:Label></th>
                        </tr>
                    </table>

                    <table class="table table-sm text-dark " runat="server" id="table_regular" visible="false" style="font-size: 18px">
                        <tr>
                            <td style="width: 40%">Curso de Inglés</td>
                            <th>
                                <span class="text-primary">Preescolares</span>
                            </th>
                        </tr>
                        <tr>
                            <td style="width: 40%">Modalidad del Curso</td>
                            <th>
                                <span>Regular</span>
                            </th>
                        </tr>

                        <tr>
                            <td>Duración</td>
                            <th><i class="fas fa-clock me-2"></i>6 meses</th>
                        </tr>
                        <tr>
                            <td>Clases</td>
                            <th><i class="fas fa-clock me-2"></i>1 por Semana</th>
                        </tr>
                        <tr>
                            <td>Inicios *</td>
                            <th><i class="fas fa-calendar me-2"></i>Mar | Ago </th>
                        </tr>
                    </table>



                    <table class="table table-sm text-dark" style="font-size: 18px">
                        <tr>
                            <td style="width: 40%">Edad</td>
                            <th>
                                <asp:DropDownList ID="ListaEdad" CssClass="form-select" runat="server"></asp:DropDownList>
                                <span class="badge bg-danger" runat="server" id="error_edad" visible="false" style="font-size: 14px">Tiene que seleccionar la edad del alumno</span>
                            </th>
                        </tr>
                        <tr>
                            <td>Sede</td>
                            <th>
                                <asp:DropDownList ID="ListaSedes" class="form-select" runat="server"></asp:DropDownList>
                                <span class="badge bg-danger" runat="server" id="error_sede" visible="false" style="font-size: 14px">Tiene que seleccionar una sede</span>
                            </th>
                        </tr>
                    </table>
                </div>
                <div class="col-md-4">
                    <table class="table text-dark table-borderless" style="font-size: 18px">
                        <tr class="text-center" runat="server" id="row_sin_promo" visible="false">
                            <th colspan="3">
                                <h1>$ 
                                    <asp:Label ID="LabelTarifa" runat="server" Text="Label"></asp:Label>
                                    <asp:Label ID="LabelTarifaID" Visible="false" runat="server" Text="Label"></asp:Label>
                                </h1>
                            </th>
                        </tr>
                        <tr class="text-center" runat="server" id="row_con_promo" visible="false">
                            <th colspan="3">
                                <span class="badge bg-warning text-dark" style="font-size: 14px">
                                    <asp:Label ID="LabelPromoMonto" runat="server" Text="Label"></asp:Label>
                                    <asp:Label ID="LabelPromoMontoID" Visible="false" runat="server" Text="1"></asp:Label>
                                </span>

                                <h1 class="text-primary">$ 
                                    <asp:Label ID="LabelTarifaPromo" runat="server" Text="Label"></asp:Label>
                                </h1>
                                <del>
                                    <h4>$ 
                                    <asp:Label ID="LabelTarifaOld" runat="server" Text="Label"></asp:Label>
                                    </h4>
                                </del>
                            </th>
                        </tr>
                        <tr class="text-center" runat="server" visible="false">
                            <td class="text-end">
                                <asp:LinkButton ID="LinkButtonMenos" CssClass="btn btn-primary" runat="server" OnClick="LinkButtonMenos_Click"> - </asp:LinkButton>
                            </td>
                            <td style="width: 20%">
                                <asp:TextBox ID="TextBoxCantidad" CssClass="form-control" Text="1" runat="server"></asp:TextBox>
                            </td>
                            <td class="text-start">
                                <asp:LinkButton ID="LinkButtonMas" CssClass="btn btn-primary" runat="server" OnClick="LinkButtonMas_Click"> + </asp:LinkButton>
                            </td>
                        </tr>
                        <tr class="text-center">
                            <td colspan="3">
                                <small>* Precio no incluye el valor del libro de clases. </small>
                            </td>
                        </tr>
                        <tr class="text-center">
                            <td colspan="3">
                                <asp:LinkButton class="btn btn-success btn-lg rounded-pill py-2 px-4 mt-4" ID="LinkButtonNext" runat="server" OnClick="LinkButtonNext_Click">Ir al Pago</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </div>

                <div class="col-xl-2 text-dark"></div>
                <div class="col-xl-8 text-dark">
                    * Para más opciones de inicio comunícate con nuestro ejecutivos
                </div>
            </div>

            <div class="row g-4 justify-content-center" runat="server" id="shop_pago" visible="false">

                <div class="col-md-6 col-lg-6 col-xl-8 bg-white rounded" runat="server" id="shop_pago_alum" visible="false">
                    <div class="alert alert-light">
                        <h2 class="mb-2"><span class="text-primary">Datos</span> del Alumno</h2>
                        <hr />
                        <table class="table table-sm table-borderless text-dark">
                            <tr>
                                <td>
                                    <span>Run | Pasaporte</span>
                                </td>
                                <td colspan="2">
                                    <span>
                                        <asp:TextBox ID="TextBoxAlumnoRun" AutoPostBack="true" CssClass="form-control" runat="server" OnTextChanged="TextBoxAlumnoRun_TextChanged"></asp:TextBox>
                                    </span>
                                </td>
                            </tr>
                            <tr runat="server" id="Tr_id" visible="false">
                                <td></td>
                                <td colspan="2">
                                    <span class="badge bg-warning text-dark" style="font-size: 12px">Tiene que ingresar el run del alumno</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Nombre</span>
                                </td>
                                <td colspan="2">
                                    <span>
                                        <asp:TextBox ID="TextBoxAlumnoNombre" CssClass="form-control" runat="server"></asp:TextBox>
                                    </span>
                                </td>
                            </tr>
                            <tr runat="server" id="Tr_nombre" visible="false">
                                <td></td>
                                <td colspan="2">
                                    <span class="badge bg-warning text-dark" style="font-size: 12px">Tiene que ingresar el nombre  del alumno</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Apellido Paterno</span>
                                </td>
                                <td colspan="2">
                                    <span>
                                        <asp:TextBox ID="TextBoxAlumnoPaterno" CssClass="form-control" runat="server"></asp:TextBox>
                                    </span>
                                </td>
                            </tr>
                            <tr runat="server" id="Tr_paterno" visible="false">
                                <td></td>
                                <td colspan="2">
                                    <span class="badge bg-warning text-dark" style="font-size: 12px">Tiene que ingresar el apellido  del alumno</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Apellido Materno</span>
                                </td>
                                <td colspan="2">
                                    <span>
                                        <asp:TextBox ID="TextBoxAlumnoMaterno" CssClass="form-control" runat="server"></asp:TextBox>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Fecha Nacimiento</span>
                                </td>
                                <td colspan="2">
                                    <span>
                                        <asp:TextBox ID="TextBoxAlumnoNace" onkeydown="fechas(event);" placeholder="ejemplo: 01-01-2000" onkeypress="return valideKey(event);" CssClass="form-control" runat="server"></asp:TextBox>
                                    </span>
                                </td>
                            </tr>
                            <tr runat="server" id="Tr_nace" visible="false">
                                <td></td>
                                <td colspan="2">
                                    <span class="badge bg-warning text-dark" style="font-size: 12px">Tiene que ingresar la fecha de nacimiento  del alumno</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>E-mail</span>
                                </td>
                                <td colspan="2">
                                    <span>
                                        <asp:TextBox ID="TextBoxAlumnoMail" CssClass="form-control" runat="server"></asp:TextBox>
                                    </span>
                                </td>
                            </tr>
                            <tr runat="server" id="Tr_mail" visible="false">
                                <td></td>
                                <td colspan="2">
                                    <span class="badge bg-warning text-dark" style="font-size: 12px">Tiene que ingresar el correo del alumno</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Teléfono </span>
                                </td>
                                <td style="width: 20%">
                                    <asp:TextBox ID="TextBox8" CssClass="form-control" ReadOnly="true" Text="+56" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <span>
                                        <asp:TextBox ID="TextBoxAlumnoFono" MaxLength="9" CssClass="form-control" runat="server"></asp:TextBox>
                                    </span>
                                </td>
                            </tr>
                            <tr runat="server" id="Tr_fono" visible="false">
                                <td></td>
                                <td colspan="2">
                                    <span class="badge bg-warning text-dark" style="font-size: 12px">Tiene que ingresar el teléfono del alumno</span>
                                </td>
                            </tr>
                            <tr runat="server" id="Tr_fono2" visible="false">
                                <td></td>
                                <td colspan="2">
                                    <span class="badge bg-warning text-dark" style="font-size: 12px">El teléfono  del alumno debe tener 9 dígitos </span>
                                </td>
                            </tr>
                            <tr runat="server" id="row_btn_next">
                                <td></td>
                                <td colspan="2">
                                    <div class="d-grid gap-2">
                                        <asp:LinkButton ID="LinkButtonNextApo" CssClass="btn btn-primary" runat="server" OnClick="LinkButtonNextApo_Click">Siguiente Paso</asp:LinkButton>
                                    </div>
                                </td>
                            </tr>
                            <tr runat="server" id="row_btn_mensaje_01" visible="false">
                                <td></td>
                                <td colspan="2">
                                    <div class="text-center">
                                        <h5>La edad del alumno no corresponde al programa seleccionado</h5>
                                    </div>
                                </td>
                            </tr>
                            <tr runat="server" id="row_btn_mensaje_02" visible="false">
                                <td></td>
                                <td colspan="2">
                                    <div class="text-center">

                                        <asp:LinkButton ID="LinkButtonCambioPrograma" CssClass="alert-link" runat="server"><h5 class="text-primary text-decoration-underline">Haga clic para cambiar el programa según la edad del alumno </h5> </asp:LinkButton>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>

                </div>

                <div class="col-md-6 col-lg-6 col-xl-8 bg-white rounded" runat="server" id="shop_pago_apo" visible="false">
                    <div class="alert alert-light">
                        <h2 class="mb-2"><span class="text-primary">Datos</span> del Apoderado</h2>
                        <hr />
                        <table class="table table-sm table-borderless text-dark">
                            <tr>
                                <td>
                                    <span>Run | Pasaporte</span>
                                </td>
                                <td colspan="2">
                                    <span>
                                        <asp:TextBox ID="TextBoxApoderadoRun" AutoPostBack="true" CssClass="form-control" runat="server" OnTextChanged="TextBoxApoderadoRun_TextChanged"></asp:TextBox>
                                    </span>
                                </td>
                            </tr>
                            <tr runat="server" id="Tr_apo_id" visible="false">
                                <td></td>
                                <td colspan="2">
                                    <span class="badge bg-warning text-dark" style="font-size: 12px">Tiene que ingresar el run del Apoderado</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Nombre</span>
                                </td>
                                <td colspan="2">
                                    <span>
                                        <asp:TextBox ID="TextBoxApoderadoNombre" CssClass="form-control" runat="server"></asp:TextBox>
                                    </span>
                                </td>
                            </tr>
                            <tr runat="server" id="Tr_apo_nombre" visible="false">
                                <td></td>
                                <td colspan="2">
                                    <span class="badge bg-warning text-dark" style="font-size: 12px">Tiene que ingresar el nombre  del Apoderado</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Apellido Paterno</span>
                                </td>
                                <td colspan="2">
                                    <span>
                                        <asp:TextBox ID="TextBoxApoderadoPaterno" CssClass="form-control" runat="server"></asp:TextBox>
                                    </span>
                                </td>
                            </tr>
                            <tr runat="server" id="Tr_apo_paterno" visible="false">
                                <td></td>
                                <td colspan="2">
                                    <span class="badge bg-warning text-dark" style="font-size: 12px">Tiene que ingresar el apellido  del Apoderado</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Apellido Materno</span>
                                </td>
                                <td colspan="2">
                                    <span>
                                        <asp:TextBox ID="TextBoxApoderadoMaterno" CssClass="form-control" runat="server"></asp:TextBox>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>E-mail</span>
                                </td>
                                <td colspan="2">
                                    <span>
                                        <asp:TextBox ID="TextBoxApoderadoMail" CssClass="form-control" runat="server"></asp:TextBox>
                                    </span>
                                </td>
                            </tr>
                            <tr runat="server" id="Tr_apo_mail" visible="false">
                                <td></td>
                                <td colspan="2">
                                    <span class="badge bg-warning text-dark" style="font-size: 12px">Tiene que ingresar el correo del Apoderado</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Teléfono </span>
                                </td>
                                <td style="width: 20%">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" ReadOnly="true" Text="+56" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <span>
                                        <asp:TextBox ID="TextBoxApoderadoFono" MaxLength="9" CssClass="form-control" runat="server"></asp:TextBox>
                                    </span>
                                </td>
                            </tr>
                            <tr runat="server" id="Tr_apo_fono" visible="false">
                                <td></td>
                                <td colspan="2">
                                    <span class="badge bg-warning text-dark" style="font-size: 12px">Tiene que ingresar el teléfono del Apoderado</span>
                                </td>
                            </tr>
                            <tr runat="server" id="Tr_apo_fono2" visible="false">
                                <td></td>
                                <td colspan="2">
                                    <span class="badge bg-warning text-dark" style="font-size: 12px">El teléfono  del Apoderado debe tener 9 dígitos </span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Región </span>
                                </td>
                                <td colspan="2">
                                    <asp:DropDownList ID="ListaRegion" class="form-select" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ListaRegionAlumno_SelectedIndexChanged"></asp:DropDownList>
                                    <asp:Label ID="LabelRegionID" Visible="false" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Comuna </span>
                                </td>
                                <td colspan="2">
                                    <asp:DropDownList ID="ListaComuna" AutoPostBack="true" class="form-select" runat="server" OnSelectedIndexChanged="ListaComuna_SelectedIndexChanged"></asp:DropDownList>
                                    <asp:Label ID="LabelComunaID" Visible="false" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr runat="server" id="Tr_comuna" visible="false">
                                <td></td>
                                <td colspan="2">
                                    <span class="badge bg-warning text-dark" style="font-size: 12px">Tiene que ingresar la comuna del alumno</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Dirección </span>
                                </td>
                                <td colspan="2">
                                    <asp:TextBox ID="TextBoxAlumnoDireccion" AutoComplete="off" CssClass="form-control" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr runat="server" id="Tr_direccion" visible="false">
                                <td></td>
                                <td colspan="2">
                                    <span class="badge bg-warning text-dark" style="font-size: 12px">Tiene que ingresar la dirección del alumno</span>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td colspan="2">
                                    <div class="d-grid gap-2">
                                        <asp:LinkButton ID="LinkButtonNextResumen" CssClass="btn btn-primary" runat="server" OnClick="LinkButtonNextResumen_Click">Siguiente paso</asp:LinkButton>
                                    </div>
                                </td>
                                <td></td>
                            </tr>
                        </table>
                    </div>

                </div>



                <div class="col-md-12" runat="server" id="shop_pago_resumen">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="alert alert-light">
                                <table class="table text-dark">
                                    <tr>
                                        <td colspan="2">
                                            <h4><span class="text-primary">Alumno</span></h4>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Nombre</td>
                                        <td>
                                            <asp:Label ID="LabelPagoALumnoID" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Run</td>
                                        <td>
                                            <asp:Label ID="LabelPagoALumnoNombre" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>

                            <div class="alert alert-light">
                                <table class="table text-dark">
                                    <tr>
                                        <td colspan="2">
                                            <h4><span class="text-primary">Apoderado</span></h4>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Nombre</td>
                                        <td>
                                            <asp:Label ID="LabelPagoApoderadoNombre" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Run</td>
                                        <td>
                                            <asp:Label ID="LabelPagoApoderadoID" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Direccion</td>
                                        <td>
                                            <asp:Label ID="LabelPagoApoderadoDireccion" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Fono</td>
                                        <td>
                                            <asp:Label ID="LabelPagoApoderadoFono" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Mail</td>
                                        <td>
                                            <asp:Label ID="LabelPagoApoderadoMail" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>

                        <div class="col-md-6 bg-white rounded">
                            <div class="alert alert-light">
                                <div class="row">
                                    <div class="col-md-12 mb-5">
                                        <h2 class="mb-2"><span class="text-primary">Resumen</span> de la Compra</h2>
                                        <hr />
                                        <table class="table text-dark">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="LabelProductoNombre" runat="server" Text="Label"></asp:Label>
                                                    (<asp:Label ID="LabelProductoEdad" runat="server" Text="Label"></asp:Label>)
                                                    <br />
                                                    <asp:Label ID="LabelProductoNombreCorto" Visible="false" runat="server" Text="Label"></asp:Label>
                                                    <asp:Label ID="LabelProductoModalidad" runat="server" Text="Label"></asp:Label>
                                                    <asp:Label ID="LabelProductoSede" runat="server" Text="Label"></asp:Label>
                                                    x                                            
                                                   <asp:Label ID="LabelProductoCant" runat="server" Text="Label"></asp:Label>

                                                </td>
                                                <td class="text-end">
                                                    <div class="mt-2">
                                                        <span>$<asp:Label ID="LabelProductoMonto" runat="server" Text="Label"></asp:Label></span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span class="text-muted">Sub Total</span>
                                                </td>
                                                <td class="text-end">
                                                    <span>$
                                                <asp:Label ID="LabelProductoSub" runat="server" Text="Label"></asp:Label></span>
                                                </td>
                                            </tr>
                                            <tr runat="server" id="row_descto_monto">
                                                <td>
                                                    <span class="text-muted">Descuento</span>
                                                </td>
                                                <td class="text-end">
                                                    <span>$<asp:Label ID="LabelProductoDescto" runat="server" Text="0"></asp:Label></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span class="text-muted">Total</span>
                                                </td>
                                                <td class="text-end">
                                                    <span>$
                                                <asp:Label ID="LabelProductoTotal" runat="server" Text="0"></asp:Label></span>
                                                </td>
                                            </tr>
                                        </table>

                                    </div>


                                    <div class="col-md-4 border-end">
                                        <img class="img-fluid" src="../../img/compra-segura.png" />
                                        <img class="img-fluid mt-5" src="../../img/webpay.png" />
                                    </div>
                                    <div class="col-md-8 text-center presente">
                                        <table class="table">
                                            <tr>
                                                <td>
                                                    <h3>Total a pagar $</h3>
                                                </td>
                                                <td>
                                                    <h3>
                                                        <asp:Label ID="LabelTotalPago" runat="server" Text="Label"></asp:Label></h3>
                                                </td>
                                            </tr>
                                            <tr class="table-primary">
                                                <td colspan="2">
                                                    <a href="<%=Page.ResolveUrl("~/TerminosCondiciones.aspx") %>" class="text-primary" target="_blank"><i class="fas fa-angle-right me-2"></i><strong>Ver los Términos y condiciones</strong></a>
                                                </td>
                                            </tr>
                                            <tr class="table-primary text-dark">
                                                <td colspan="2">
                                                    <asp:CheckBox ID="CheckBoxTerminos" AutoPostBack="true" runat="server" Text="Acepto los Términos y condiciones" OnCheckedChanged="CheckBoxTerminos_CheckedChanged" />
                                                </td>
                                            </tr>
                                            <tr class="table-warning" runat="server" id="row_termino" visible="false">
                                                <td colspan="2">
                                                    <span class="badge bg-warning text-dark" style="font-size: 14px">Tiene que aceptar los términos y condiciones </span>
                                                </td>
                                            </tr>
                                            <tr class="table-info" runat="server" id="row_termino_error" visible="false">
                                                <td colspan="2">
                                                    <span class="badge bg-warning text-dark" style="font-size: 12px">Sistema no disponible, intente más tarde </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <div class="d-grid gap-2">
                                                        <asp:LinkButton ID="LinkButtonTbk" CssClass="btn btn-success btn-lg cargando" runat="server" OnClick="LinkButtonTbk_Click">Pagar</asp:LinkButton>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>


    <script>
        $(document).ready(function () {
            $(".cargando").click(function () {

                $("#mensajeCargando").modal("show");
            });
        });
    </script>

    <div class="modal fade" id="mensajeCargando" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="resultPreAdvanced" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content text-dark">
                <div class="modal-header alert alert-secondary">
                    <h5 class=" float-start mt-2">
                        <strong>Norteamericano</strong>
                    </h5>
                </div>
                <div class="modal-body alert" style="text-align: justify;">
                    <div class="row">
                        <div class="row mb-2">
                            <div class="col-md-12 text-center"></div>
                            <div class="col-md-12 text-center">
                                <h5>
                                    <strong>Procesando, espere un momento</strong>
                                </h5>
                                <div class="spinner-grow spinner-grow-sm text-primary" role="status">
                                    <span class="sr-only"></span>
                                </div>
                                <div class="spinner-grow spinner-grow-sm text-danger" role="status">
                                    <span class="sr-only"></span>
                                </div>
                                <div class="spinner-grow spinner-grow-sm text-primary" role="status">
                                    <span class="sr-only"></span>
                                </div>
                                <div class="spinner-grow spinner-grow-sm text-danger" role="status">
                                    <span class="sr-only"></span>
                                </div>
                                <div class="spinner-grow spinner-grow-sm text-primary" role="status">
                                    <span class="sr-only"></span>
                                </div>
                                <div class="spinner-grow spinner-grow-sm text-danger" role="status">
                                    <span class="sr-only"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>


