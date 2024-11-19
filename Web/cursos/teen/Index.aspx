<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web.cursos.teen.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Adolescentes  | Cursos de Inglés </title>
    <link rel="canonical" href="https://norteamericano.cl/" />

    <style>
        .nav-link {
            display: block;
            padding: .5rem 1rem;
            color: white;
            transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out;
        }

        .nav-tabs .nav-link:hover, .nav-tabs .nav-link:focus {
            isolation: isolate;
            color: white;
        }

        .nav-tabs .nav-link.active, .nav-tabs .nav-item.show .nav-link {
            color: #495057;
            background-color: #fff;
            border-color: #dee2e6 #dee2e6 #fff;
        }
    </style>

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
                <div class="col-md-12 ">
                    <div class="bg-white rounded p-5 shadow">
                        <div class="row ">
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-md-12">
                                        <span class="display-6 text-dark">Curso de Inglés | <span class="text-primary">Adolescentes </span></span>
                                    </div>
                                    <div class="col-md-12 mt-2">
                                        <span class="h5">
                                            <i class="fas fa-user me-2"></i>Presencial 
                                            <span class="me-2 ms-2">|</span>
                                            <i class="fas fa-laptop me-2"></i>Online
                                        </span>
                                    </div>
                                    <div class="col-md-12" runat="server" id="div_inicio">
                                        <div class="row">
                                            <div class="col-md-6 text-center">
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
                            <div class="col-md-3">
                                <div class="row">
                                    <div class="col-md-12">
                                        <table class="text-dark text-center table table-borderless mb-0" runat="server" id="table_tarifas">
                                            <tr runat="server" id="btn_comprar">
                                                <td>
                                                    <div class="d-grid gap-2">
                                                        <a href="Shop.aspx" class="btn btn-success btn-lg"><i class="fas fa-shopping-cart me-2"></i>Comprar Curso </a>
                                                        <%--<a href="https://diagnostico.norteamericano.cl/adolescentes/" target="_blank" class="btn btn-success btn-lg"><i class="fas fa-shopping-cart me-2"></i>Comprar Curso </a>--%>
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
                                    <%--  <div class="col-md-4">
                                    <img src="../../img/programas/kids.jpg" class="img-fluid rounded w-100" alt="">
                                </div>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header bg-primary">
                            <ul class="nav nav-tabs card-header-tabs" id="myTab" role="tablist" style="font-size: 20px;">
                                <li class="nav-item">
                                    <a class="nav-link active" id="tab1-tab" data-bs-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="true">Descripción</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="tab2-tab" data-bs-toggle="tab" href="#tab2" role="tab" aria-controls="tab2" aria-selected="false">Summer School</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="tab3-tab" data-bs-toggle="tab" href="#tab3" role="tab" aria-controls="tab3" aria-selected="false">Objetivos</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="tab4-tab" data-bs-toggle="tab" href="#tab4" role="tab" aria-controls="tab3" aria-selected="false">Niveles</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="tab5-tab" data-bs-toggle="tab" href="#tab5" role="tab" aria-controls="tab3" aria-selected="false">Horarios</a>
                                </li>
                            </ul>
                        </div>
                        <div class="card-body">
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab1-tab">
                                    <div class="row mt-5  mb-5 text-dark">
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
                                                        <h5>Regular</h5>
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
                                <div class="tab-pane fade" id="tab2" role="tabpanel" aria-labelledby="tab2-tab">
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
                                <div class="tab-pane fade" id="tab3" role="tabpanel" aria-labelledby="tab3-tab">
                                    <div class="row">
                                        <div class="col-md-1"></div>
                                        <div class="col-md-10">
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
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tab4" role="tabpanel" aria-labelledby="tab4-tab">
                                    <div class="row mt-5">
                                        <div class="col-md-12">
                                            <img class="img-fluid rou" src="../../img/programas/teens_niveles.webp" />
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="tab5" role="tabpanel" aria-labelledby="tab5-tab">
                                    <div class="row mt-5">
                                        <div class="col-md-3">
                                            <div class="alert rounded bg-primary">
                                                <ul class="nav nav-tabs card-header-tabs flex-column" id="myTabSede"
                                                    role="tablist">
                                                    <li class="nav-item" runat="server" id="btn_m_x" visible="false">
                                                        <a class="nav-link active rounded" id="tab1-moneda" data-bs-toggle="tab" href="#tabM" role="tab" aria-controls="tab1" aria-selected="true">Moneda</a>
                                                    </li>
                                                    <li class="nav-item" runat="server" id="btn_p_x" visible="false">
                                                        <a class="nav-link rounded" id="tab2-provi" data-bs-toggle="tab" href="#tabP" role="tab" aria-controls="tab2" aria-selected="false">Providencia</a>
                                                    </li>
                                                    <li class="nav-item" runat="server" id="btn_f_x" visible="false">
                                                        <a class="nav-link rounded" id="tab3-florida" data-bs-toggle="tab" href="#tabF" role="tab" aria-controls="tab3" aria-selected="false">La florida</a>
                                                    </li>
                                                    <li class="nav-item" runat="server" id="btn_o_x" visible="false">
                                                        <a class="nav-link rounded" id="tab4-online" data-bs-toggle="tab" href="#tabO" role="tab" aria-controls="tab3" aria-selected="false">Online</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-md-9">
                                            <div class="tab-content" id="myTabContentSede">
                                                <div class="tab-pane fade show active" id="tabM" role="tabpanel" aria-labelledby="tab1-tab">
                                                    <div class="row">
                                                        <div class="col-md-12" runat="server" id="div_m">

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
                                                    </div>
                                                </div>
                                                <div class="tab-pane fade  " id="tabP" role="tabpanel" aria-labelledby="tab1-tab">
                                                    <div class="row">
                                                        <div class="col-md-12" runat="server" id="div_p">

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
                                                    </div>
                                                </div>
                                                <div class="tab-pane fade  " id="tabF" role="tabpanel" aria-labelledby="tab1-tab">
                                                    <div class="row">
                                                        <div class="col-md-12" runat="server" id="div_f">

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
                                                    </div>
                                                </div>
                                                <div class="tab-pane fade  " id="tabO" role="tabpanel" aria-labelledby="tab1-tab">
                                                    <div class="row">
                                                        <div class="col-md-12" runat="server" id="div_o">
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

