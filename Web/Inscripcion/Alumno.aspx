<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Alumno.aspx.cs" Inherits="Web.Inscripcion.Alumno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Inscripción | Cursos de Inglés </title>
    <link rel="canonical" href="https://norteamericano.cl/" />
    <link href="../../lib/css/check-radio.css" rel="stylesheet" />

    <style>
        .service .service-item .service-img .service-icon {
            position: absolute;
            width: 162px;
            bottom: 0;
            right: 25px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            background: #ffc107;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: 0.5s;
            z-index: 9;
            color: black;
        }
    </style>

    <script>
        window.history.forward();
        function noBack() {
            window.history.forward();
        }
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload=" ">
        <div runat="server" id="info_alumno" visible="false">

            <asp:Label ID="LabelCotizacionID" Visible="false" runat="server" Text=""></asp:Label>
            <asp:Label ID="LabelTarifaID" Visible="false" runat="server" Text=""></asp:Label>
            <asp:Label ID="LabelCotizacionNeto" Visible="false" runat="server" Text=""></asp:Label>
            <asp:Label ID="LabelCotizacionPago" Visible="false" runat="server" Text=""></asp:Label>
            <asp:Label ID="LabelCotizacionTipoDescto" Visible="false" runat="server" Text=""></asp:Label>
            <asp:Label ID="LabelCotizacionDesctoValor" Visible="false" runat="server" Text=""></asp:Label>
            <asp:Label ID="LabelTBKcodigoAuto" Visible="false" runat="server" Text=""></asp:Label>
            <asp:Label ID="LabelTBKTrajetaCod" Visible="false" runat="server" Text=""></asp:Label>
            <asp:Label ID="LabelTBKcuotas" Visible="false" runat="server" Text=""></asp:Label>
            <asp:Label ID="LabelTBKmonto" Visible="false" runat="server" Text=""></asp:Label>

            <!-- About Start -->
            <div class="container-fluid bg-light py-4">
                <div class="container">
                    <div class="row g-4 justify-content-center">
                        <div class="col-lg-12">
                            <h1>Norteamericano | <span class="text-primary"><strong>Inscripción</strong></span>  </h1>
                            <hr />
                        </div>
                        <div class="col-lg-6">
                            <div class="p-4 bg-white rounded">
                                <table class="table text-dark table-sm mb-0">
                                    <tr>
                                        <th colspan="2" style="font-size: 25px"><span class="text-primary">Información</span>
                                        | Alumno
                                    </tr>
                                    <tr class="text-capitalize">
                                        <td>Alumno</td>
                                        <td>
                                            <asp:Label ID="LabelAlumnoNombre" runat="server" Text="nombre apellido apellido"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>Run</td>
                                        <td>
                                            <asp:Label ID="LabelAlumnoID" runat="server" Text="nombre apellido apellido"></asp:Label>
                                            <asp:Label ID="LabelApoderadoID" Visible="false" runat="server" Text="nombre apellido apellido"></asp:Label>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Curso</td>
                                        <td class="text-capitalize">
                                            <asp:Label ID="LabelCursoComprado" runat="server" Text="Tipo Curso"></asp:Label>
                                            <asp:Label ID="LabelCompraTipoCurso" runat="server" Text="Tipo Curso"></asp:Label>
                                            -
                                    <asp:Label ID="LabelCompraSede" runat="server" Text="Tipo Curso"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Modalidad</td>
                                        <td class="text-capitalize">
                                            <asp:Label ID="LabelCompraSedeModal" runat="server" Text="Tipo Curso"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr runat="server" visible="false">
                                        <td>Cantidad</td>
                                        <td class="text-capitalize">
                                            <asp:Label ID="LabelCompraCant" runat="server" Text="Tipo Curso"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="col-lg-6" runat="server" id="div_facturacion">
                            <div class="p-4 bg-white rounded">
                                <table class="table table-sm text-dark mb-0">
                                    <tr>
                                        <th colspan="2" style="font-size: 25px"><span class="text-primary">Información</span> | facturación
                                    <asp:LinkButton ID="LinkButtonActualizar" CssClass="btn btn-sm btn-warning text-dark float-end" runat="server" OnClick="LinkButtonActualizar_Click">Actualizar Información</asp:LinkButton>

                                        </th>
                                    </tr>
                                    <tr>
                                        <td>Run </td>
                                        <td>
                                            <asp:Label ID="LabelApoID" runat="server" Text="11111111-1"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Nombre </td>
                                        <td>
                                            <asp:Label ID="LabelApoName" runat="server" Text="nombre apellido"></asp:Label>
                                            <asp:Label ID="LabelApoPaterno" runat="server" Text="nombre apellido"></asp:Label>
                                            <asp:Label ID="LabelApoMaterno" runat="server" Text="nombre apellido"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Envio de email</td>
                                        <td>
                                            <asp:Label ID="LabelApoMail" runat="server" Text="nombre apellido apellido"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>Dirección</td>
                                        <td>
                                            <asp:Label ID="LabelApoDireccion" runat="server" Text="nombre apellido apellido"></asp:Label>
                                            <asp:Label ID="LabelApoDireccionComuna" runat="server" Text="nombre apellido apellido"></asp:Label>
                                            <asp:Label ID="LabelApoDireccionComunaID" Visible="false" runat="server" Text="nombre apellido apellido"></asp:Label>
                                            <asp:Label ID="LabelApoDireccionRegion" Visible="false" runat="server" Text="nombre apellido apellido"></asp:Label>
                                            <asp:Label ID="LabelApoDireccionRegionID" Visible="false" runat="server" Text="nombre apellido apellido"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Teléfono</td>
                                        <td>+569
                                    <asp:Label ID="LabelApoFono" runat="server" Text="Tipo Curso"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="col-lg-6" runat="server" id="div_facturacion_edi" visible="false">
                            <div class="p-4 bg-white rounded">
                                <table class="table table-sm text-dark mb-0">
                                    <tr>
                                        <th colspan="2" style="font-size: 20px">Información de facturación
                                        </th>
                                    </tr>
                                    <tr>
                                        <td>Run</td>
                                        <td>
                                            <asp:TextBox ID="TextBoxEditarID" CssClass="form-control" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Nombre</td>
                                        <td>
                                            <asp:TextBox ID="TextBoxEditarName" CssClass="form-control" runat="server"></asp:TextBox>
                                            <asp:TextBox ID="TextBoxEditarPaterno" CssClass="form-control" runat="server"></asp:TextBox>
                                            <asp:TextBox ID="TextBoxEditarMaterno" CssClass="form-control" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Envio de email</td>
                                        <td>
                                            <asp:TextBox ID="TextBoxEditarMail" CssClass="form-control" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Dirección</td>
                                        <td>
                                            <asp:DropDownList ID="ListaEditarRegion" AutoPostBack="true" CssClass="form-select" runat="server" OnSelectedIndexChanged="ListaEditarRegion_SelectedIndexChanged"></asp:DropDownList>
                                            <asp:DropDownList ID="ListaEditarComuna" AutoPostBack="true" CssClass="form-select" runat="server" OnSelectedIndexChanged="ListaEditarComuna_SelectedIndexChanged"></asp:DropDownList>
                                            <asp:TextBox ID="TextBoxEditarDireccion" CssClass="form-control" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Teléfono</td>
                                        <td>
                                            <asp:TextBox ID="TextBoxEditarFono" CssClass="form-control" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr runat="server" visible="false" id="error_edit_apo">
                                        <td colspan="2">
                                            <span class="badge bg-warning text-dark">
                                                <asp:Label ID="LabelError" runat="server" Text=""></asp:Label></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="text-end">
                                            <asp:LinkButton ID="LinkButtonEditarCancelar" CssClass="btn btn-sm btn-secondary text-white" runat="server" OnClick="LinkButtonEditarCancelar_Click">Cancelar</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButtonEditarGuardar" CssClass="btn btn-sm btn-primary" runat="server" OnClick="LinkButtonEditarGuardar_Click">Actualizar</asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Blog Start -->
            <div class="container-fluid  bg-white">
                <div class="container py-5 service" runat="server" id="div_opciones">
                    <div class="text-center mx-auto pb-5">
                        <h1><span class="text-primary"><strong>Inscripción</strong></span></h1>
                        <hr />
                    </div>
                    <div class="row g-4 justify-content-center">

                        <%--  <div class="col-md-6 col-lg-6 col-xl-4">
                            <div class="service-item shadow">
                                <div class="service-img">
                                    <img src="../../img/inicial.png" class="img-fluid rounded-top w-100" alt="">
                                </div>
                                <div class="p-4 bg-white rounded-bottom">
                                    <div class="service-content-inner">
                                        <table class="table text-dark">
                                            <tr class="text-center">
                                                <th>
                                                    <h5>Si estás comenzando desde cero con el idioma inglés, esta es tu mejor opción, inicia con el curso Beginner 
                                                    </h5>
                                                </th>
                                            </tr>
                                            <tr class="text-center">
                                                <th>
                                                    <div class="d-grid gap-2">
                                                        <asp:LinkButton class="btn btn-secondary text-white rounded-pill py-2 px-4" ID="LinkButtonInicial" runat="server" OnClick="LinkButtonInicial_Click">Ingresar</asp:LinkButton>
                                                    </div>
                                                </th>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>--%>

                        <div class="col-md-6 col-lg-6 col-xl-6">
                            <div class="service-item shadow">
                                <div class="service-img">
                                    <img src="../img/evaluacion.png" class="img-fluid rounded-top w-100" alt="">
                                </div>
                                <div class="p-4 bg-white rounded-bottom">
                                    <div class="service-content-inner">
                                        <table class="table text-dark">
                                            <tr class="text-center">
                                                <th>
                                                    <h5>Evaluaremos tu nivel con una prueba de diagnóstico</h5>
                                                </th>
                                            </tr>
                                            <tr class="text-center">
                                                <th>
                                                    <div class="d-grid gap-2">
                                                        <asp:LinkButton class="btn btn-warning rounded-pill py-2 px-4" ID="LinkButtonDiagnostico" runat="server" OnClick="LinkButtonDiagnostico_Click">Ingresar</asp:LinkButton>
                                                    </div>
                                                </th>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="container py-5" runat="server" id="div_horario" visible="false">
                    <div class="row g-4">
                        <div>
                            <h3><strong class="text-primary">Inscripción </strong>| Horarios </h3>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-4">
                                <div class="p-4 bg-light rounded">
                                    <table class="table text-dark mb-0">
                                        <tr>
                                            <th style="font-size: 20px" colspan="2">Información del Curso
                                            </th>
                                        </tr>
                                        <tr>
                                            <td style="width: 30%">Curso</td>
                                            <th>
                                                <asp:Label ID="LabelNivel" runat="server" Text="Label"></asp:Label>
                                                <asp:Label ID="LabelNivelRespaldo" Visible="false" runat="server" Text="Label"></asp:Label>
                                                <asp:Label ID="LabelNivelID" Visible="false" runat="server" Text="Label"></asp:Label>
                                            </th>
                                        </tr>
                                        <tr>
                                            <td>Modalidad</td>
                                            <th>
                                                <asp:Label ID="LabelCompraModalidad" runat="server" Text="Label"></asp:Label>
                                            </th>
                                        </tr>
                                        <tr runat="server" id="row_sede">
                                            <td>Sede</td>
                                            <th>
                                                <asp:Label ID="LabelCompraSedeH" runat="server" Text="Label"></asp:Label>
                                                <asp:LinkButton class="alert-link float-end text-decoration-underline" ID="LinkButtonCambiarSede" runat="server" OnClick="LinkButtonCambiarSede_Click"><small>Cambiar</small></asp:LinkButton>
                                            </th>
                                        </tr>
                                        <tr runat="server" id="row_sede_cambio" visible="false">
                                            <td>Sede</td>
                                            <td>
                                                <asp:DropDownList ID="ListaSedes" AutoPostBack="true" CssClass="form-select form-select-sm" runat="server" OnSelectedIndexChanged="ListaSedes_SelectedIndexChanged"></asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr runat="server" id="row_sede_cambio_btn" visible="false">
                                            <td></td>
                                            <td class="text-center">
                                                <asp:LinkButton class="alert-link float-start text-decoration-underline" ID="LinkButtonSedeCancelar" runat="server" OnClick="LinkButtonSedeCancelar_Click"><small>Cancelar</small></asp:LinkButton>
                                                <asp:LinkButton class="alert-link float-end text-decoration-underline" ID="LinkButtonSedeCambiar" runat="server" OnClick="LinkButtonSedeCambiar_Click"><small>Cambiar Sede</small></asp:LinkButton>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="table text-dark" runat="server" id="table_cursos_seleccionado" visible="false">
                                        <tr>
                                            <td style="width: 30%">Dias</td>
                                            <th>
                                                <asp:Label ID="LabelDias" runat="server" Text="Label"></asp:Label>
                                                <asp:Label ID="LabelCursoID" Visible="false" runat="server" Text="Label"></asp:Label>
                                            </th>
                                        </tr>
                                        <tr>
                                            <td>Horario</td>
                                            <th>
                                                <asp:Label ID="LabelHorario" runat="server" Text="Label"></asp:Label>
                                            </th>
                                        </tr>
                                        <tr>
                                            <td>Fecha</td>
                                            <th>
                                                <asp:Label ID="LabelInicio" runat="server" Text="Label"></asp:Label>
                                                <asp:Label ID="LabelTermino" runat="server" Text="Label"></asp:Label>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th colspan="2" class="text-center">
                                                <asp:LinkButton ID="LinkButtonCambiar" CssClass="alert-link text-decoration-underline" runat="server" OnClick="LinkButtonCambiar_Click">Seleccionar otro Horario</asp:LinkButton>
                                            </th>
                                        </tr>
                                    </table>
                                </div>
                            </div>

                            <div class="col-md-8 text-start" runat="server" id="div_select_horario">

                                <div class="row">

                                    <div class="col-md-12">
                                        <h3><strong class="text-primary">Elige tu </strong>Horario </h3>
                                    </div>
                                    <div class="col-md-12 ">
                                        <h5>Mostrando Horario para :
                                        <strong>
                                            <asp:Label ID="LabelSedeMostrar" CssClass="text-primary" runat="server" Text="Label"></asp:Label></strong>
                                        </h5>
                                    </div>
                                    <div class="col-md-12">

                                        <div class="table-responsive">
                                            <table class="table table-sm mb-0" style="font-size: 14px;">
                                                <thead>
                                                    <tr>
                                                        <th scope="col" class="text-center " style="width: 20%"></th>
                                                        <th scope="col" class="text-center " style="width: 20%">Dias</th>
                                                        <th scope="col" class="text-center " style="width: 30%">Horario</th>
                                                        <th scope="col" class="text-center " style="width: 30%">Fecha</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <asp:DataList ID="DataListDisponibles" runat="server" Width="100%" OnItemCommand="DataListDisponibles_ItemCommand">
                                                        <ItemTemplate>
                                                            <table class="table table-sm mb-0 text-dark" style="font-size: 16px;">
                                                                <tbody>
                                                                    <tr>
                                                                        <th scope="col" class="text-center " style="width: 20%">
                                                                            <asp:LinkButton ID="LinkButton12" runat="server"><span class="badge bg-primary" style="font-weight:normal; font-size: 14px;">Seleccionar</span></asp:LinkButton>
                                                                            <asp:Label ID="lblCursoID" Visible="false" runat="server" Text='<%# Eval("Codigo")%>'></asp:Label>
                                                                            <asp:Label ID="lblCursoJornada" Visible="false" runat="server" Text='<%# Eval("idJornada")%>'></asp:Label>
                                                                            <asp:Label ID="lblCursoSedeID" Visible="false" runat="server" Text='<%# Eval("idSede")%>'></asp:Label>
                                                                            <asp:Label ID="lblCursoSede" Visible="false" runat="server" Text='<%# Eval("Sede")%>'></asp:Label>
                                                                            <asp:Label ID="lblCursoNom" Visible="false" runat="server" Text='<%# Eval("Curso")%>'></asp:Label>
                                                                        </td>                                                          
                                                            <td class="text-center " style="width: 20%">
                                                                <asp:Label ID="lblCursoDias" runat="server" Text='<%# Eval("Dias")%>'></asp:Label></td>
                                                                        <td class="text-center " style="width: 30%">
                                                                            <asp:Label ID="lblCursoHora" runat="server" Text=' <%# string.Concat(Eval("Hora Inicio"), " / " , Eval("Hora Termino"))%>'></asp:Label></td>
                                                                        <td class="text-center " style="width: 30%">
                                                                            <asp:Label ID="lblCursoFechaInicio" runat="server" Text='<%# Eval("Fecha Inicio")%>'></asp:Label>
                                                                            /                                                       
                                                            <asp:Label ID="lblCursoFechaTermino" runat="server" Text='<%# Eval("Fecha Termino")%>'></asp:Label></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </ItemTemplate>
                                                    </asp:DataList>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8" runat="server" id="div_fin" visible="false">
                                <div class="p-4 bg-light rounded">

                                    <table class="table text-dark table-borderless" style="font-size: 20px">

                                        <tr>
                                            <th><span class="text-primary"><i class="far fa-check-circle"></i>Estás a un paso de</span> terminar con tu inscripción.
                                        <hr />
                                            </th>
                                        </tr>
                                        <tr>
                                            <td>Para finalizar debes confirmar que el curso y el horario seleccionados son correcto y estarás inscrito en el Norteamericano. 
                                        <br />
                                                <br />
                                                <br />
                                            </td>

                                        </tr>
                                        <tr>
                                            <td colspan="2" class="presente text-center">
                                                <asp:CheckBox ID="CheckBoxValidar" AutoPostBack="true" Text="Estoy conforme con selección del curso y el horario " runat="server" OnCheckedChanged="CheckBoxValidar_CheckedChanged" />
                                            </td>
                                        </tr>
                                        <tr runat="server" id="row_validar_fin" visible="false">
                                            <th class="text-center">
                                                <asp:Label ID="Label1" CssClass="text-danger" runat="server" Text="Tienes que confirmar para finalizar tu Inscripción "></asp:Label>
                                            </th>
                                        </tr>
                                        <tr>
                                            <td class="text-center">
                                                <asp:LinkButton ID="LinkButtonFinalizar" CssClass="btn btn-primary text-white cargando" runat="server" OnClick="LinkButtonFinalizar_Click"> Finalizar la Inscripción</asp:LinkButton>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row g-4" runat="server" id="div_fin_Inscripc" visible="false">
                    <div class="row">
                        <div class="col-md-12 mt-5 text-center">
                            <h3><strong class="text-primary">Inscripción</strong> <strong>Finalizada</strong> </h3>
                        </div>
                        <div class="col-md-12  mt-5  text-center">
                            <h5>En breve recibirás un mail de confirmación con tu boleta electrónica y contrato</h5>
                        </div>
                    </div>
                </div>

            </div>
            <!-- Blog End -->
        </div>

        <div runat="server" id="info_alumno_login" visible="false">
            <div class="container-fluid bg-light py-4">
                <div class="container">
                    <div class="row g-4 text-center mb-5">
                        <div class="col-lg-12">
                            <h1><span class="text-primary"><strong>Norteamericano</strong></span> | Inscripción</h1>
                            <hr />
                        </div>

                        <div class="col-lg-2"></div>
                        <div class="col-lg-8" runat="server" visible="false" id="div_error_login">
                            <div class="p-4 bg-primary rounded">
                                <h4 class="text-white">
                                    <i class="fas fa-times-circle me-2"></i>
                                    El run ingresado no tiene ninguna inscripción pendiente 
                                </h4>
                            </div>
                        </div>
                    </div>
                    <div class="row g-4 text-center mb-5">
                        <div class="col-lg-2"></div>
                        <div class="col-lg-5">
                            <div class="p-4 bg-white rounded">
                                <table class="table table-borderless text-dark">
                                    <tr>
                                        <td>
                                            <h4><span class="text-primary"><strong>Bienvenido</strong></span></h4>
                                            <hr />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5>Para continuar con tu inscripción ingresa tu Run para terminar el proceso.</h5>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="p-4 bg-white rounded">

                                <table class="table table-borderless text-dark" runat="server" id="table_menu">
                                    <tr>
                                        <th colspan="2" style="font-size: 20px">Tipo usuario
                                        </th>
                                    </tr>
                                    <tr class="text-capitalize">
                                        <td>
                                            <div class="d-grid gap-2">
                                                <asp:LinkButton ID="LinkButtonIngresoApo" CssClass="btn btn-primary" runat="server" OnClick="LinkButtonIngresoApo_Click">Apoderado</asp:LinkButton>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="text-capitalize">
                                        <td>
                                            <div class="d-grid gap-2">
                                                <asp:LinkButton ID="LinkButtonIngresoAlum" CssClass="btn btn-primary" runat="server" OnClick="LinkButtonIngresoAlum_Click">Alumno</asp:LinkButton>
                                            </div>
                                        </td>
                                    </tr>
                                </table>


                                <table class="table table-borderless text-dark" runat="server" id="table_run_apo" visible="false">
                                    <tr>
                                        <th colspan="2" style="font-size: 20px">Run Apoderado
                                        </th>
                                    </tr>
                                    <tr class="text-capitalize">
                                        <td>
                                            <asp:TextBox ID="TextBoxInscpApo" CssClass="form-control" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr class="text-capitalize">
                                        <td>
                                            <div class="d-grid gap-2">
                                                <asp:LinkButton ID="LinkButtonBuscarApo" CssClass="btn btn-primary" runat="server" OnClick="LinkButtonBuscarApo_Click">Ingresar</asp:LinkButton>
                                            </div>
                                        </td>
                                    </tr>
                                </table>

                                <table class="table table-borderless text-dark" runat="server" id="table_run_alum" visible="false">
                                    <tr>
                                        <th colspan="2" style="font-size: 20px">Run Alumno
                                        </th>
                                    </tr>
                                    <tr class="text-capitalize">
                                        <td>
                                            <asp:TextBox ID="TextBoxInscpAlumn" CssClass="form-control" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr class="text-capitalize">
                                        <td>
                                            <div class="d-grid gap-2">
                                                <asp:LinkButton ID="LinkButtonBuscar" CssClass="btn btn-primary" runat="server" OnClick="LinkButtonBuscar_Click">Ingresar</asp:LinkButton>
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

        <div runat="server" id="info_apo_disponibles" visible="false">
            <!-- About Start -->
            <div class="container-fluid bg-light py-4">
                <div class="container">
                    <div class="row g-4 justify-content-center">
                        <div class="col-lg-12">
                            <h1>Inscripciones | <span class="text-primary"><strong>Disponibles</strong></span>  </h1>
                            <hr />
                        </div>
                        <div class="col-lg-12">
                            <div class="p-4 bg-white rounded">
                                <div class="table-responsive">
                                    <table class="table table-sm  text-dark mb-0" style="font-size: 18px;">
                                        <thead>
                                            <tr>
                                                <th style="width: 10%"></th>
                                                <th style="width: 10%" class="text-center ">Run</th>
                                                <th style="width: 60%">Alumno </th>
                                                <th style="width: 20%">Curso</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:DataList ID="DataListApoderado" runat="server" Width="100%">
                                                <ItemTemplate>
                                                    <table class="table table-sm mb-0  text-dark" style="font-size: 18px;">
                                                        <tbody>
                                                            <tr>
                                                                <td class="text-start" style="width: 10%">
                                                                    <%# string.Concat("<a class='' href='alumno.aspx?usuario=", Eval("alumnoID") ,"&tipo=alumno'><span class='badge bg-primary' style='font-weight:normal'>Inscribir</span> </a>") %>
                                                                </td>
                                                                <td class="text-center " style="width: 10%"><%# Eval("alumnoID") %></td>
                                                                <td class="text-start " style="width: 60%"><%# string.Concat(Eval("Nombres")," ", Eval("AP_Paterno") ," ", Eval("AP_Materno") )%></td>
                                                                <td class="text-start " style="width: 20%"><%# Eval("curso") %></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>

                                        </tbody>
                                    </table>
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

