<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web.cursos.teen.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Adolescentes  | Cursos de Inglés </title>
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
                                <div class="row">
                                    <div class="col-sm-12">
                                        <span class="display-6 text-dark">Curso de Inglés | <span class="text-primary">Adolescentes </span></span>
                                    </div>
                                    <div class="col-sm-12 mt-2">
                                        <span class="h5">                                                                                     
                                            <i class="fas fa-user me-2"></i>Presencial 
                                            <span class="me-2 ms-2">|</span>
                                            <i class="fas fa-laptop me-2"></i>Online
                                        </span>
                                    </div>
                                    <div class="col-sm-12" runat="server" id="div_inicio">
                                        <div class="row">
                                            <div class="col-sm-6 text-center">
                                                <div class="d-grid gap-2">
                                                    <div class="btn btn-warning text-center mt-4" style="font-size: 18px">
                                                        Inicio de clases
                                                        <asp:Label ID="LabelInicios" runat="server" Text="Label"></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="col-sm-3">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <table class="text-dark text-center table table-borderless mb-0" runat="server" id="table_tarifas">
                                            <tr runat="server" id="btn_comprar">
                                                <td>
                                                    <div class="d-grid gap-2">
                                                        <%--<a href="Shop.aspx" class="btn btn-success btn-lg"><i class="fas fa-shopping-cart me-2"></i>Comprar Curso </a>--%>
                                                        <a href="https://diagnostico.norteamericano.cl/adolescentes/" target="_blank" class="btn btn-success btn-lg"><i class="fas fa-shopping-cart me-2"></i>Comprar Curso </a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="d-grid gap-2">
                                                        <a href="../../Contact.aspx?programa=Adolescentes" class="btn btn-primary"><i class="fas fa-user-tie me-2"></i>Contáctenos </a>
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
                                <asp:LinkButton ID="LinkButtonSummer" class="nav-link" runat="server" OnClick="LinkButtonSummer_Click">Summer School</asp:LinkButton>
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
                                                                            <td class="text-center " style="width: 20%"><%# Convert.ToString(Eval("Programa")) == "TEENS" ? "<span class='badge rounded-pill bg-primary' style='font-size: 14px'>Regular</span>" : "<span class='badge rounded-pill bg-warning text-dark' style='font-size: 14px'>Summer</span>"  %></td>
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
                                                                            <td class="text-center " style="width: 20%"><%# Convert.ToString(Eval("Programa")) == "TEENS" ? "<span class='badge rounded-pill bg-primary' style='font-size: 14px'>Regular</span>" : "<span class='badge rounded-pill bg-warning text-dark' style='font-size: 14px'>Summer</span>"  %></td>
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
                                                                            <td class="text-center " style="width: 20%"><%# Convert.ToString(Eval("Programa")) == "TEENS" ? "<span class='badge rounded-pill bg-primary' style='font-size: 14px'>Regular</span>" : "<span class='badge rounded-pill bg-warning text-dark' style='font-size: 14px'>Summer</span>"  %></td>
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
                                                                            <td class="text-center " style="width: 20%"><%# Convert.ToString(Eval("Programa")) == "TEENS" ? "<span class='badge rounded-pill bg-primary' style='font-size: 14px'>Regular</span>" : "<span class='badge rounded-pill bg-warning text-dark' style='font-size: 14px'>Summer</span>"  %></td>
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
                                        <h2>Curso de Inglés | <span class="text-primary">Teens</span></h2>
                                        <hr />
                                    </div>
                                    <div class="col-md-2">
                                        <img src="../../img/programas/teens.webp" class="img-fluid rounded w-100" alt="">
                                    </div>
                                    <div class="col-md-10">

                                        <table class="table text-dark">
                                            <tr>
                                                <td style="width: 20%">
                                                    <h5 class="text-primary">Modalidad</h5>
                                                </td>
                                                <th>
                                                    <h5>Regular (1 o 2 clases por semana)</h5>
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
                                                    <h5>12 a 17 Años</h5>
                                                </td>
                                            </tr>
                                            <tr style="text-align: justify">
                                                <td colspan="3">Curso de Inglés para adolescentes diseñado para alumnos sin contacto con contextos 
                                                    de habla inglesa, donde la exposición primera al idioma es la oportunidad para practicar en la sala de clases. 
                                                    De esta forma, las actividades de interacción completamente en inglés son el primer modelo y guía para convertirse 
                                                    en eventuales hablantes de este idioma. Los contenidos del curso incluyen la familiarización con el lenguaje en sí 
                                                    para el desarrollo de competencias lingüísticas que requieren la reflexión sobre las habilidades comunicativas ya 
                                                    adquiridas y transversales al currículum escolar.                               
                                
                                                </td>
                                            </tr>
                                        </table>

                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-12" runat="server" id="div_summer" visible="false">
                                <div class="row mt-5 text-dark">
                                    <div class="col-md-12">
                                        <h2>English | <span class="text-primary">Summer School</span></h2>
                                        <hr />
                                    </div>
                                    <div class="col-md-3">
                                        <img src="../../img/programas/summer_teens_kid.webp" class="img-fluid rounded w-100" alt="">
                                    </div>
                                    <div class="col-md-9">

                                        <table class="table text-dark">
                                            <tr>
                                                <td>
                                                    <h5 class="text-primary">Edad</h5>
                                                </td>
                                                <td>
                                                    <h5>12 a 17 años</h5>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <h5 class="text-primary">Inicios</h5>
                                                </td>
                                                <td>
                                                    <h5>Enero | Febrero</h5>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <h5 class="text-primary">Duración</h5>
                                                </td>
                                                <td>
                                                    <h5>Un mes (4 clases por semana)</h5>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <h5 class="text-primary">Metodología</h5>
                                                </td>
                                                <td>
                                                    <h5>STEAM y Learning by Doing</h5>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <h5>Este verano aprende inglés y descubre nuevas aventuras. Incluye 3 emocionantes talleres con experimentos realizados junto a los tutores bilingües de <a href="www.thinkey.cl" target="_blank">www.thinkey.cl</a></h5>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">Observación: Estudiantes que llegan por renovación deben solicitar homologación hacia el nivel más próximo abierto por temporada de verano.</td>
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
                                            <td>Comprender instrucciones básicas y ser parte de una conversación básica sobre un tema predecible.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Hacer preguntas de naturaleza factual y comprender respuestas en lenguage simple.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Comprender instrucciones básicas con base en información acerca de hora de clases, fechas, números de sala, y tareas.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Comprender textos de audio en bsuca de información específica.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Participar de conversaciones cortas con base en un modelo con información cotidiana.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Comprender noticias simples, instrucciones o información en aeropuertos, tiendas y en meús.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Comprender instrucciones simples sobre medicamentos y sobre cómo llegar a un lugar.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Comprender textos simplificados y artículos cortos con información predecible.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Reconocer y asociar cognados.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Usar conocimiento previo para comprender o representar información. </td>
                                        </tr>

                                    </table>

                                </div>

                            </div>

                            <div class="col-xl-12" runat="server" id="div_niveles" visible="false">
                                <div class="row mt-5">
                                    <div class="col-md-12">
                                        <img class="img-fluid" src="../../img/programas/teens_niveles.WEBP" />
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

