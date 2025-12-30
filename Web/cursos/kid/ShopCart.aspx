<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="ShopCart.aspx.cs" Inherits="Web.cursos.kid.ShopCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Niños | Cursos de Inglés </title>
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


    <script>
        function mostrar(dato) {
            if (dato == "1") {
                document.getElementById("nombre").style.display = "block";
                document.getElementById("apellidos").style.display = "none";
                document.getElementById("ContentPlaceHolder1_LabelTipoDoc").innerText = "Run"

            }
            if (dato == "2") {
                document.getElementById("nombre").style.display = "none";
                document.getElementById("apellidos").style.display = "block";
                document.getElementById("flexRadioDefault2").checked = true;
                document.getElementById("ContentPlaceHolder1_LabelTipoDoc").innerText = "Pasaporte"
            }
        }

        function mostrarAlum(dato) {
            if (dato == "1") {
                document.getElementById("nombreAlum").style.display = "block";
                document.getElementById("apellidosAlum").style.display = "none";
                document.getElementById("ContentPlaceHolder1_LabelTipoDocAlum").innerText = "Run"

            }
            if (dato == "2") {
                document.getElementById("nombreAlum").style.display = "none";
                document.getElementById("apellidosAlum").style.display = "block";
                document.getElementById("flexRadioDefaultAlum2").checked = true;
                document.getElementById("ContentPlaceHolder1_LabelTipoDocAlum").innerText = "Pasaporte"
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
                    <img src="../../img/programas/kids.jpg" class="img-fluid rounded w-100" alt="">
                </div>
                <div class="col-md-6">
                    <table class="table table-sm text-dark" runat="server" id="table_summer" visible="false" style="font-size: 14px">
                        <tr>
                            <td style="width: 40%">Curso de Inglés</td>
                            <th>
                                <span class="text-primary">Niños</span>
                            </th>
                        </tr>
                        <tr>
                            <td style="width: 40%">Modalidad del Curso</td>
                            <th>
                                <span>Summer School</span>
                            </th>
                        </tr>
                        <tr>
                            <td>Edad</td>
                            <th><i class="fas fa-user me-2"></i>7 a 11 años</th>
                        </tr>
                        <tr>
                            <td>Duración</td>
                            <th><i class="fas fa-clock me-2"></i>1 Mes</th>
                        </tr>
                        <tr>
                            <td>Inicio</td>
                            <th><i class="fas fa-calendar me-2"></i>Ene | Feb
                                <asp:Label ID="LabelYearSummer" runat="server" Text="Label"></asp:Label></th>
                        </tr>
                    </table>

                    <table class="table table-sm text-dark mb-0 " runat="server" id="table_regular" visible="false" style="font-size: 14px">
                        <tr>
                            <td style="width: 40%">Curso de Inglés</td>
                            <th>
                                <span class="text-primary">Niños</span>
                            </th>
                        </tr>
                        <tr>
                            <td style="width: 40%">Modalidad del Curso</td>
                            <th>
                                <span>Regular</span>
                            </th>
                        </tr>
                        <tr>
                            <td>Edad</td>
                            <th><i class="fas fa-user me-2"></i>7 a 11 años</th>
                        </tr>
                        <tr>
                            <td>Duración</td>
                            <th><i class="fas fa-clock me-2"></i>4 Meses</th>
                        </tr>
                        <tr>
                            <td>Inicios *</td>
                            <th><i class="fas fa-calendar me-2"></i>Mar | Ago </th>
                        </tr>
                    </table>



                    <table class="table table-sm text-dark" style="font-size: 14px">
                        <tr>
                            <td style="width: 40%">Modalidad de Clases</td>
                            <th class="presente">
                                <asp:RadioButton ID="RadioButtonMP" AutoPostBack="true" GroupName="Modalidad_clases" Text="Presencial" runat="server" OnCheckedChanged="RadioButtonMP_CheckedChanged" />
                                <asp:RadioButton ID="RadioButtonMO" AutoPostBack="true" GroupName="Modalidad_clases" Text="Online" runat="server" OnCheckedChanged="RadioButtonMO_CheckedChanged" />
                                <span class="badge bg-danger" runat="server" id="error_modalidad" visible="false" style="font-size: 14px">Tiene que seleccionar una modalidad de clases</span>
                            </th>
                        </tr>
                        <tr>
                            <td>Sede</td>
                            <th>
                                <asp:DropDownList ID="ListaSedes" class="form-select form-select-sm text-dark" Font-Bold="true" runat="server"></asp:DropDownList>
                                <span class="badge bg-danger" runat="server" id="error_sede" visible="false" style="font-size: 14px">Tiene que seleccionar una sede</span>
                            </th>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-center">
                                <small>* Para más opciones de inicio comunícate con nuestros ejecutivos</small>
                            </td>
                        </tr>
                    </table>
                </div>

                <div class="col-md-4">
                    <table class="table text-dark table-borderless " style="font-size: 16px">
                        <tr runat="server" id="row_sin_promo" visible="false">
                            <td>
                                <div class="mt-2">
                                    Precio
                                </div>
                            </td>
                            <th class="text-center">
                                <h4>$ 
                                    <asp:Label ID="LabelTarifa" runat="server" Text="Label"></asp:Label>
                                    <asp:Label ID="LabelTarifaID" Visible="false" runat="server" Text="Label"></asp:Label>
                                </h4>
                            </th>
                        </tr>
                        <tr runat="server" id="row_con_promo_a" visible="false">
                            <td>
                                <div class="mt-2">
                                    Precio Especial
                                </div>
                            </td>
                            <th class="text-center">
                                <h4 class="text-primary">$ 
        <asp:Label ID="LabelTarifaPromo" runat="server" Text="Label"></asp:Label>
                                </h4>
                            </th>
                        </tr>
                        <tr runat="server" id="row_con_promo_c" visible="false">
                            <td>
                                <div class="mt-2">
                                    Descuento
                                </div>
                            </td>
                            <th class="text-center">
                                <div class="mt-1">
                                    <span runat="server" id="span_promo" class="badge bg-warning text-dark text-start" style="font-size: 14px">
                                        <asp:Label ID="LabelPromoMonto" runat="server" Text="Label"></asp:Label>
                                        <asp:Label ID="LabelPromoMontoID" Visible="false" runat="server" Text="1"></asp:Label>
                                    </span>
                                </div>
                            </th>
                        </tr>
                        <tr runat="server" id="row_con_promo_b" visible="false">
                            <td>
                                <div class="mt-2">
                                    Normal
                                </div>
                            </td>
                            <th class="text-center">
                                <del class="text-muted">
                                    <h5 class="text-muted">$
            <asp:Label ID="LabelTarifaOld" runat="server" Text="Label"></asp:Label></h5>
                                </del>
                            </th>
                        </tr>
                        <tr>
                            <td>
                                <div class="mt-2">
                                    Cantidad
                                </div>
                            </td>
                            <td class="text-center">
                                <div class="btn-group btn-group-sm" role="group" aria-label="Basic example">
                                    <asp:LinkButton ID="LinkButtonMenosDi" Visible="false"  CssClass="btn btn-outline-primary " runat="server"> <div class="ms-2 me-2">-</div> </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonMenos" Visible="false" CssClass="btn btn-primary " runat="server" OnClick="LinkButtonMenos_Click"> <div class="ms-2 me-2">-</div> </asp:LinkButton>
                                    <button type="button" disabled class="btn btn-outline-primary ">
                                        <div class="ms-2 me-2">
                                            <asp:Label ID="LabelCantidad" runat="server" Text="1"></asp:Label>
                                        </div>
                                    </button>
                                    <asp:LinkButton ID="LinkButtonMas" Visible="false"  CssClass="btn btn-primary " runat="server" OnClick="LinkButtonMas_Click"><div class="ms-2 me-2"> +</div> </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonMasDi" Visible="false" CssClass="btn btn-outline-primary " runat="server"><div class="ms-2 me-2"> + </div></asp:LinkButton>
                                </div>

                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="text-center" runat="server" visible="false" id="row_mensaje_max">
                                <small class="text-danger">Llegaste al máximo de cursos por compra</small>
                            </td>
                        </tr>

                        <tr class="text-center">
                            <td colspan="3">
                                <div class="d-grid gap-2">
                                    <asp:LinkButton class="btn btn-primary" ID="LinkButtonNext" runat="server" OnClick="LinkButtonNext_Click">Ir al Pago</asp:LinkButton>
                                </div>
                            </td>
                        </tr>
                        <tr class="text-center">
                            <td colspan="3">
                                <small>* Precio no incluye el valor del libro de clases. </small>
                            </td>

                        </tr>
                    </table>
                </div>


                <div class="col-xl-12 mb-5 text-dark"></div>
            </div>

            <div class="row g-4 justify-content-center" runat="server" id="shop_pago" visible="false">

                <div class="col-md-6 col-lg-6 col-xl-8 bg-white rounded" runat="server" id="shop_pago_alum" visible="false">
                    <div class="alert alert-light">
                        <h2 class="mb-2"><span class="text-primary">Datos</span> del Alumno</h2>
                        <hr />
                        <table class="table table-sm table-borderless text-dark">

                            <tr>
                                <td>
                                    <span>Documento</span>
                                </td>
                                <td colspan="2">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" checked name="flexRadioDefaultAlum" value="1" onchange="mostrarAlum(this.value);" id="flexRadioDefaultAlum1">
                                        <label class="form-check-label" for="flexRadioDefaultAlum1">Run</label>


                                        <input class="form-check-input" type="radio" name="flexRadioDefaultAlum" value="2" onchange="mostrarAlum(this.value);" id="flexRadioDefaultAlum2">
                                        <label class="form-check-label" for="flexRadioDefaultAlum2">Pasaporte</label>
                                    </div>

                                </td>
                            </tr>

                            <tr>

                                <td>
                                    <span>Número</span>
                                </td>
                                <td colspan="2">
                                    <div id="nombreAlum" style="display: block;">
                                        <asp:TextBox ID="TextBoxAlumnoRun" oninput="checkRut(this)" AutoPostBack="true" CssClass="form-control" runat="server" OnTextChanged="TextBoxAlumnoRun_TextChanged"></asp:TextBox>
                                        <script src="../../lib/ls/validarRUT.js"></script>
                                    </div>
                                    <div class="form-group" id="apellidosAlum" style="display: none;">
                                        <asp:TextBox ID="TextBoxAlumnoPasa" AutoPostBack="true" CssClass="form-control" runat="server" OnTextChanged="TextBoxAlumnoPasa_TextChanged"></asp:TextBox>
                                    </div>
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
                                        <asp:TextBox ID="TextBoxAlumnoNace" onkeydown="fechas(event);" placeholder="ejemplo: 01-01-2000" MaxLength="10" onkeypress="return valideKey(event);" CssClass="form-control" runat="server"></asp:TextBox>
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
                                    <span>Documento</span>
                                </td>
                                <td colspan="2">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" checked name="flexRadioDefault" value="1" onchange="mostrar(this.value);" id="flexRadioDefault1">
                                        <label class="form-check-label" for="flexRadioDefault1">Run</label>


                                        <input class="form-check-input" type="radio" name="flexRadioDefault" value="2" onchange="mostrar(this.value);" id="flexRadioDefault2">
                                        <label class="form-check-label" for="flexRadioDefault2">Pasaporte</label>
                                    </div>

                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <span>Número</span>
                                </td>
                                <td colspan="2">
                                    <div id="nombre" style="display: block;">
                                        <asp:TextBox ID="TextBoxApoderadoRun" oninput="checkRut(this)" AutoPostBack="true" CssClass="form-control" runat="server" OnTextChanged="TextBoxApoderadoRun_TextChanged"></asp:TextBox>
                                        <script src="../../lib/ls/validarRUT.js"></script>
                                    </div>
                                    <div class="form-group" id="apellidos" style="display: none;">
                                        <asp:TextBox ID="TextBoxApoderadoPasaporte" AutoPostBack="true" CssClass="form-control" runat="server" OnTextChanged="TextBoxApoderadoPasa_TextChanged"></asp:TextBox>
                                    </div>
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
                            <tr>
                                <td>
                                    <span>E-mail</span>
                                </td>
                                <td colspan="2">
                                    <span>
                                        <asp:TextBox ID="TextBoxApoderadoMail" AutoPostBack="true" CssClass="form-control" runat="server" OnTextChanged="TextBoxApoderadoMail_TextChanged"></asp:TextBox>
                                        <asp:Label ID="LabelIDLead" Visible="false" runat="server" Text="14"></asp:Label>
                                    </span>
                                </td>
                            </tr>
                            <tr runat="server" id="Tr_apo_mail" visible="false">
                                <td></td>
                                <td colspan="2">
                                    <span class="badge bg-warning text-dark" style="font-size: 12px">Tiene que ingresar el correo del Apoderado</span>
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
                                                    <asp:Label ID="LabelProductoNombreCorto" Visible="false" runat="server" Text="Label"></asp:Label>
                                                    <br />
                                                    <asp:Label ID="LabelProductoModalidad" runat="server" Text="Label"></asp:Label>
                                                    <asp:Label ID="LabelProductoSede" runat="server" Text="Label"></asp:Label>
                                                    x                                            
                                                   <asp:Label ID="LabelProductoCant" runat="server" Text="1"></asp:Label>

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


    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>

    <div style="display: none">
        <asp:Label ID="LabelTipoDoc" Text="Run" runat="server"></asp:Label>
        <asp:Label ID="LabelTipoDocAlum" Text="Run" runat="server"></asp:Label>
    </div>
</asp:Content>

