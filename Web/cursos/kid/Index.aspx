﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web.cursos.kid.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Niños | Cursos de Inglés </title>
    <link rel="canonical" href="https://norteamericano.cl/" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <!-- Google Tag Manager (noscript) -->
    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W7349HX"
            height="0" width="0" style="display: none; visibility: hidden"></iframe>
    </noscript>
    <!-- End Google Tag Manager (noscript) -->


    <!-- About Start -->
    <div class="container-fluid alert-secondary about py-5">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-xl-12 ">
                    <div class="bg-white rounded p-5 shadow">
                        <div class="row ">
                            <div class="col-sm-9">
                                <span class="display-6 text-dark">Curso de Inglés | <span class="text-primary">Niños Niñas </span></span>
                                <br />
                                <span class="h5">
                                    <i class="fas fa-clock me-2"></i>40 Horas 
                                     <span class="me-2 ms-2">|</span>
                                    <i class="fas fa-user me-2"></i>Presencial 
                                    <span class="me-2 ms-2">|</span>
                                    <i class="fas fa-laptop me-2"></i>Online
                                </span>
                                <br />
                                <span class="badge bg-warning text-dark mt-4" style="font-size: 20px" runat="server" id="div_inicio">
                                    <asp:Label ID="LabelInicios" CssClass="me-5 ms-5" runat="server" Text="Label"></asp:Label>
                                </span>
                            </div>
                            <div class="col-sm-3">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <table class="text-dark text-center table table-borderless mb-0" runat="server" id="table_tarifas">
                                            <tr runat="server" id="btn_comprar">
                                                <td>
                                                    <div class="d-grid gap-2">
                                                        <%--<a href="Shop.aspx" class="btn btn-success btn-lg"><i class="fas fa-shopping-cart me-2"></i>Comprar Curso </a>--%>
                                                        <a href="https://diagnostico.norteamericano.cl/kid" target="_blank" class="btn btn-success btn-lg"><i class="fas fa-shopping-cart me-2"></i>Comprar Curso </a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="d-grid gap-2">
                                                        <a href="../../Contact.aspx?programa=kid" class="btn btn-primary"><i class="fas fa-user-tie me-2"></i>Contáctenos </a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <%--  <div class="col-lg-4">
                                    <img src="../../img/programas/kids.jpg" class="img-fluid rounded w-100" alt="">
                                </div>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xl-12">
                    <div class="bg-white rounded p-5 h-100 shadow">
                        <ul class="nav nav-pills nav-fill nav-tabs" role="tablist">
                            <li class="nav-item active" role="presentation">
                                <asp:LinkButton ID="LinkButtonDescripcion" class="nav-link" runat="server" OnClick="LinkButtonDescripcion_Click">Descripción</asp:LinkButton>
                            </li>
                            <li class="nav-item" role="presentation">
                                <asp:LinkButton ID="LinkButtonObjetivo" class="nav-link" runat="server" OnClick="LinkButtonObjetivo_Click">Objetivos</asp:LinkButton>
                            </li>
                            <li class="nav-item" role="presentation">
                                <asp:LinkButton ID="LinkButtonNiveles" class="nav-link" runat="server" OnClick="LinkButtonNiveles_Click">Niveles</asp:LinkButton>
                            </li>
                            <li class="nav-item" role="presentation" runat="server" id="link_horario_40">
                                <asp:LinkButton ID="LinkButtonHorarioReg" class="nav-link active" runat="server" OnClick="LinkButtonHorarioReg_Click">Horarios</asp:LinkButton>
                            </li>
                        </ul>


                        <div class="row">
                            <div class="col-xl-12" runat="server" id="div_horario_40" visible="false">

                                <div class="row mt-5">
                                    <div class="col-md-3">
                                        <table class="table text-dark">

                                            <tr runat="server" id="btn_m" visible="false">
                                                <td>
                                                    <div class="d-grid gap-2">
                                                        <asp:LinkButton class="btn btn-primary text-white" ID="LinkButtonM" Visible="false" runat="server" OnClick="LinkButtonM_Click">Moneda</asp:LinkButton>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr runat="server" id="btn_p" visible="false">
                                                <td>
                                                    <div class="d-grid gap-2">
                                                        <asp:LinkButton class="btn btn-secondary text-white" ID="LinkButtonP" Visible="false" runat="server" OnClick="LinkButtonP_Click">Providencia</asp:LinkButton>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr runat="server" id="btn_f" visible="false">
                                                <td>
                                                    <div class="d-grid gap-2">
                                                        <asp:LinkButton class="btn btn-secondary text-white" ID="LinkButtonF" Visible="false" runat="server" OnClick="LinkButtonF_Click">La Florida</asp:LinkButton>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr runat="server" id="btn_o" visible="false">
                                                <td>
                                                    <div class="d-grid gap-2">
                                                        <asp:LinkButton class="btn btn-secondary text-white" ID="LinkButtonO" Visible="false" runat="server" OnClick="LinkButtonO_Click">Online</asp:LinkButton>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="col-md-9">
                                        <div class="row">
                                            <div class="col-md-12" runat="server" id="div_m" visible="false">

                                                <h5>
                                                    <span class="text-dark"><i class="fas fa-home me-2 text-primary"></i>Moneda 1467, Santiago</span>
                                                </h5>

                                                <div class="table-responsive mb-0">
                                                    <table class="table table-sm  mb-0 mt-3 text-dark" style="font-size: 14px">
                                                        <tbody>
                                                            <tr>
                                                                <th class="text-center " scope="col" style="width: 20%"><strong>Modalidad</strong></th>
                                                                <th class="text-center " scope="col" style="width: 20%"><strong>Sede</strong></th>
                                                                <th class="text-center " scope="col" style="width: 20%"><strong>Dias</strong></th>
                                                                <th class="text-center " scope="col" style="width: 20%"><strong>Horas</strong></th>
                                                                <th class="text-center " scope="col" style="width: 20%"><strong>Inicio</strong></th>
                                                            </tr>
                                                        </tbody>

                                                        <tbody>
                                                            <asp:DataList ID="DataListHorariosRegularMoneda" runat="server" Width="100%">
                                                                <ItemTemplate>
                                                                    <table class="table table-sm  mb-0 text-dark" style="font-size: 14px">
                                                                        <tr>
                                                                            <td class="text-center " style="width: 20%"><%# Convert.ToString(Eval("Programa")) == "KIDS" ? "<span class='badge rounded-pill bg-primary' style='font-size: 14px'> 40 hrs.</span>" : "<span class='badge rounded-pill bg-warning text-dark' style='font-size: 14px'> 30 hrs.</span>"  %></td>
                                                                            <td class="text-center " style="width: 20%"><%# Eval("Sede") %></td>
                                                                            <td class="text-center " style="width: 20%"><%# Eval("Dias") %></td>
                                                                            <td class="text-center " style="width: 20%"><%# Eval("Horas") %></td>
                                                                            <td class="text-center " style="width: 20%"><%# Eval("Inicio") %></td>
                                                                        </tr>
                                                                    </table>
                                                                </ItemTemplate>
                                                            </asp:DataList>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>

                                            <div class="col-md-12" runat="server" id="div_p" visible="false">

                                                <h5>
                                                    <span class="text-dark"><i class="fas fa-home me-2 text-primary"></i>San Pío x 2485, Providencia</span>
                                                </h5>
                                                <div class="table-responsive mb-0">
                                                    <table class="table table-sm  mb-0 mt-3 text-dark" style="font-size: 14px">
                                                        <tbody>
                                                            <tr>
                                                                <th class="text-center " scope="col" style="width: 20%"><strong>Modalidad</strong></th>
                                                                <th class="text-center " scope="col" style="width: 20%"><strong>Sede</strong></th>
                                                                <th class="text-center " scope="col" style="width: 20%"><strong>Dias</strong></th>
                                                                <th class="text-center " scope="col" style="width: 20%"><strong>Horas</strong></th>
                                                                <th class="text-center " scope="col" style="width: 20%"><strong>Inicio</strong></th>
                                                            </tr>
                                                        </tbody>

                                                        <tbody>
                                                            <asp:DataList ID="DataListHorariosRegularProvi" runat="server" Width="100%">
                                                                <ItemTemplate>
                                                                    <table class="table table-sm  mb-0 text-dark" style="font-size: 14px">
                                                                        <tr>
                                                                            <td class="text-center " style="width: 20%"><%# Convert.ToString(Eval("Programa")) == "KIDS" ? "<span class='badge rounded-pill bg-primary' style='font-size: 14px'> 40 hrs.</span>" : "<span class='badge rounded-pill bg-warning text-dark' style='font-size: 14px'> 30 hrs.</span>"  %></td>
                                                                            <td class="text-center " style="width: 20%"><%# Eval("Sede") %></td>
                                                                            <td class="text-center " style="width: 20%"><%# Eval("Dias") %></td>
                                                                            <td class="text-center " style="width: 20%"><%# Eval("Horas") %></td>
                                                                            <td class="text-center " style="width: 20%"><%# Eval("Inicio") %></td>
                                                                        </tr>
                                                                    </table>
                                                                </ItemTemplate>
                                                            </asp:DataList>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>

                                            <div class="col-md-12" runat="server" id="div_f" visible="false">

                                                <h5>
                                                    <span class="text-dark"><i class="fas fa-home me-2 text-primary"></i>Av. Vicuña Mackenna Poniente 6069, La Florida</span>
                                                </h5>

                                                <div class="table-responsive mb-0">
                                                    <table class="table table-sm  mb-0 mt-3 text-dark" style="font-size: 14px">
                                                        <tbody>
                                                            <tr>
                                                                <th class="text-center " scope="col" style="width: 20%"><strong>Modalidad</strong></th>
                                                                <th class="text-center " scope="col" style="width: 20%"><strong>Sede</strong></th>
                                                                <th class="text-center " scope="col" style="width: 20%"><strong>Dias</strong></th>
                                                                <th class="text-center " scope="col" style="width: 20%"><strong>Horas</strong></th>
                                                                <th class="text-center " scope="col" style="width: 20%"><strong>Inicio</strong></th>
                                                            </tr>
                                                        </tbody>

                                                        <tbody>
                                                            <asp:DataList ID="DataListHorariosRegularFlorida" runat="server" Width="100%">
                                                                <ItemTemplate>
                                                                    <table class="table table-sm  mb-0 text-dark" style="font-size: 14px">
                                                                        <tr>
                                                                            <td class="text-center " style="width: 20%"><%# Convert.ToString(Eval("Programa")) == "KIDS" ? "<span class='badge rounded-pill bg-primary' style='font-size: 14px'> 40 hrs.</span>" : "<span class='badge rounded-pill bg-warning text-dark' style='font-size: 14px'> 30 hrs.</span>"  %></td>
                                                                            <td class="text-center " style="width: 20%"><%# Eval("Sede") %></td>
                                                                            <td class="text-center " style="width: 20%"><%# Eval("Dias") %></td>
                                                                            <td class="text-center " style="width: 20%"><%# Eval("Horas") %></td>
                                                                            <td class="text-center " style="width: 20%"><%# Eval("Inicio") %></td>
                                                                        </tr>
                                                                    </table>
                                                                </ItemTemplate>
                                                            </asp:DataList>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>

                                            <div class="col-md-12" runat="server" id="div_o" visible="false">

                                                <strong>
                                                    <span class="text-dark"><i class="fas fa-home me-2 text-primary"></i>Online</span>
                                                </strong>

                                                <div class="table-responsive mb-0">
                                                    <table class="table table-sm  mb-0 mt-3 text-dark" style="font-size: 14px">
                                                        <tbody>
                                                            <tr>
                                                                <th class="text-center " scope="col" style="width: 20%"><strong>Modalidad</strong></th>
                                                                <th class="text-center " scope="col" style="width: 20%"><strong>Sede</strong></th>
                                                                <th class="text-center " scope="col" style="width: 20%"><strong>Dias</strong></th>
                                                                <th class="text-center " scope="col" style="width: 20%"><strong>Horas</strong></th>
                                                                <th class="text-center " scope="col" style="width: 20%"><strong>Inicio</strong></th>
                                                            </tr>
                                                        </tbody>

                                                        <tbody>
                                                            <asp:DataList ID="DataListHorariosRegularOnline" runat="server" Width="100%">
                                                                <ItemTemplate>
                                                                    <table class="table table-sm  mb-0 text-dark" style="font-size: 14px">
                                                                        <tr>
                                                                            <td class="text-center " style="width: 20%"><%# Convert.ToString(Eval("Programa")) == "KIDS" ? "<span class='badge rounded-pill bg-primary' style='font-size: 14px'> 40 hrs.</span>" : "<span class='badge rounded-pill bg-warning text-dark' style='font-size: 14px'> 30 hrs.</span>"  %></td>
                                                                            <td class="text-center " style="width: 20%"><%# Eval("Sede") %></td>
                                                                            <td class="text-center " style="width: 20%"><%# Eval("Dias") %></td>
                                                                            <td class="text-center " style="width: 20%"><%# Eval("Horas") %></td>
                                                                            <td class="text-center " style="width: 20%"><%# Eval("Inicio") %></td>
                                                                        </tr>
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

                            <div class="col-xl-12" runat="server" id="div_descripcion" visible="false">
                                <div class="row mt-5 text-dark">
                                    <div class="col-md-12">
                                        <h2>Curso de Inglés | <span class="text-primary">Kids</span></h2>
                                        <hr />
                                    </div>
                                    <div class="col-md-2">
                                        <img src="../../img/programas/kids.webp" class="img-fluid rounded w-100" alt="">
                                    </div>
                                    <div class="col-md-10">

                                        <table class="table text-dark">
                                            <tr>
                                                <td style="width: 20%">
                                                    <h5 class="text-primary">Modalidad</h5>
                                                </td>
                                                <th>
                                                    <h5>Regular (40 horas)</h5>
                                                </th>
                                                <th></th>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <h5 class="text-primary">Clases</h5>
                                                </td>
                                                <td colspan="2">
                                                    <h5>Presencial | <a class="text-decoration-underline" href="../../Sedes.aspx" target="_blank">ver sedes</a> </h5>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td>
                                                    <h5>Online</h5>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <h5 class="text-primary">Edad</h5>
                                                </td>
                                                <td>
                                                    <h5>7 a 11 Años</h5>
                                                </td>
                                            </tr>
                                            <tr style="text-align: justify">
                                                <td colspan="3">Curso de Inglés para niños con énfasis en la comunicación y el uso de recursos léxicos de alta frecuencia. 
                                                    Los contenidos del curso están centrados en el desarrollo de habilidades linguísticas, lógicas, inter e intrapersonales, 
                                                    y kinestésicas. Las actividades están estructuradas para la adquisición temprana de habilidades de pensamiento como 
                                                    la deducción, y el orden de conceptos.
                                                    <br />
                                                    Tal integración del contenido para el desarrollo las competencias lingüísticas en este nivel incluye la consolidación de
                                                    los contenidos de los niveles iniciales, y la extensión el aprendizaje para lograr la producción del idioma de forma más 
                                                    natural e inteligible.  
                                                </td>
                                            </tr>
                                        </table>

                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-12" runat="server" id="div_objetivos" visible="false">
                                <div class="mt-5">
                                    <h2>Curso | <span class="text-primary">Objetivos</span></h2>
                                    <hr />
                                    <table class="table mb-5 mt-3 text-dark">
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Escuchar e imitar acciones.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Decir y preguntar a otros por nombre y edad.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Identificar y decir colores y juegos</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Identificar y usar números de 1 a 10.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Identificar diferentes tipos de climas.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Reconocer e idnetificar artículos en una sala de clases.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Expresar opinión personal e identificar valores en una historia.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Expresar requerimientos sobre artículos escolares.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Escuchar, imitar y expresar actividades escolares.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Responder a instrucciones en un juego.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Identificar y responder a instrucciones en una sala de clases.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Identificar y usar vocabulario relacionado con partes del cuerpo.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Identificar los sentidos. </td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Identificar y usar números 1 a 20.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Identificar vocabulario de comida en una historia.</td>
                                        </tr>

                                    </table>

                                </div>

                            </div>

                            <div class="col-xl-12" runat="server" id="div_niveles" visible="false">
                                <div class="row mt-5">
                                    <div class="col-md-12">
                                        <img class="img-fluid" src="../../img/programas/kids_niveles.webp" />
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>



            </div>
        </div>
    </div>
    <!-- About End -->

</asp:Content>
