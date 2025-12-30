<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web.cursos.pre.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Preescolares  | Cursos de Inglés </title>
    <link rel="canonical" href="https://norteamericano.cl/" />


    <style>
        .nav-link {
            display: block;
            padding: .5rem 1rem;
            transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out;
        }

        .nav-tabs .nav-link:hover, .nav-tabs .nav-link:focus {
            isolation: isolate;
        }

        .nav-tabs .nav-link.active, .nav-tabs .nav-item.show .nav-link {
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
            <div class="row g-3">
                <div class="col-md-12 ">
                    <div class="rounded bg-light p-5">
                        <div class="row ">
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-md-12">
                                        <span class="display-6 text-dark">Curso de Inglés | <span class="text-primary">Preescolares</span></span>
                                    </div>
                                    <div class="col-md-12 mt-2">
                                        <span class="h5">
                                            <i class="fas fa-user me-2"></i>Presencial</span>
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
                                                        <%--<a href="Shop.aspx" class="btn btn-success btn-lg"><i class="fas fa-shopping-cart me-2"></i>Comprar Curso </a>--%>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="d-grid gap-2">
                                                        <a href="../../Contact.aspx?programa=Preescolares" class="btn btn-primary"><i class="fas fa-user-tie me-2"></i>Contáctenos </a>
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

                <div class="col-md-9">
                    <div class="bg-light rounded">
                        <div class="alert">
                            <div class="row">
                                <div class="col-md-12">
                                    <ul class="nav nav-tabs card-header-tabs flex-column flex-sm-row bg-light" id="myTab" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active" id="tab1-tab" data-bs-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="true">Descripción</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="tab4-tab" data-bs-toggle="tab" href="#tab3" role="tab" aria-controls="tab3" aria-selected="false">Niveles</a>
                                        </li>
                                       <li class="nav-item" runat="server" id="btn_horario">
                                            <a class="nav-link" id="tab5-tab" data-bs-toggle="tab" href="#tab4" role="tab" aria-controls="tab4" aria-selected="false">Horarios</a>
                                        </li>
                                    </ul>

                                    <div class="tab-content" id="myTabContent">
                                        <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab1-tab">
                                            <div class="row mt-5  mb-5 text-dark">
                                                <div class="col-md-12">
                                                    <h4>Descripción | <span class="text-primary">Curso para Preschoolers</span></h4>
                                                    <hr />
                                                </div>
                                                <div class="col-md-12">
                                                    <div style="text-align: justify">
                                                        Curso de inglés para pre-escolares para la adquisición de vocabulario genérico y la práctica sistemática 
                                                 a través de las unidades de los cursos. El vocabulario es aplicado en actividades se alínea con el currículum acorde a
                                                 la edad de los niños y la adquisición del lenguaje como tal.
                                                        <br />
                                                        <br />
                                                        En los niveles pre-escolares, el desarrollo de los niños en relación con el aprendizaje del idioma permite a los alumnos
                                                        expresarse creativa, física y socialmente en conjunto con 
                                                 sus capacidades cognitivas. 
                                                        <br />
                                                        <br />
                                                        La exposición al idioma en este primer acercamiento es en un ambiente significativo y natural 
                                                 con objetivos positivos a largo plazo más que por el solo rendimiento académico.                                 
                                                    </div>
                                                </div>
                                                <div class="col-md-12 mt-5">
                                                    <h4>Lo que <span class="text-primary">aprenderás</span></h4>
                                                    <hr />
                                                    <table class="table mb-5 mt-3 text-dark">
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Identificar y nombrar colores.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Identificar personajes.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Saludar y decir el nombre.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Escuchar sobre y apuntar personajes.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Identificar y nombrar a miembros de la familia.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Preguntar por y decir dónde están otras personas.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Reconocer el valor de la familia.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Identificar y nombrar objetos en la sala de clases.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Cantar sobre y actuar una historia.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Reconocer el valor de la amistad.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Identificar y nombrar dónde están los objetos en la sala de clases.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Identificar y nombrar las partes de la cara.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Reconocer y valorar la autoestima.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Identificar y nombrar con qué se ve y oye.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Identificar prendas de vestir. </td>
                                                        </tr>

                                                    </table>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="tab-pane fade" id="tab3" role="tabpanel" aria-labelledby="tab3-tab">
                                            <div class="row mt-5">
                                                <div class="col-md-12">
                                                    <img class="img-fluid rou" src="../../img/programas/preschool_niveles.webp" />
                                                </div>
                                            </div>
                                        </div>

                                        <div class="tab-pane fade" id="tab4" role="tabpanel" aria-labelledby="tab5-tab">
                                            <div class="row mt-5">
                                                <div class="col-md-3">
                                                    <div class="alert rounded bg-light">
                                                        <ul class="nav nav-tabs card-header-tabs flex-column" id="myTabSede"
                                                            role="tablist">
                                                            <li class="nav-item mb-2" runat="server" id="btn_m_x" visible="false">
                                                                <a class="nav-link active  rounded" id="tab1-moneda" data-bs-toggle="tab" href="#tabM" role="tab" aria-controls="tab1" aria-selected="true">Moneda</a>
                                                            </li>
                                                            <li class="nav-item mb-2" runat="server" id="btn_p_x" visible="false">
                                                                <a class="nav-link rounded " id="tab2-provi" data-bs-toggle="tab" href="#tabP" role="tab" aria-controls="tab2" aria-selected="false">Providencia</a>
                                                            </li>
                                                            <li class="nav-item mb-2" runat="server" id="btn_f_x" visible="false">
                                                                <a class="nav-link rounded" id="tab3-florida" data-bs-toggle="tab" href="#tabF" role="tab" aria-controls="tab3" aria-selected="false">La Florida</a>
                                                            </li>
                                                            <li class="nav-item" runat="server" id="btn_o_x" visible="false">
                                                                <a class="nav-link rounded " id="tab4-online" data-bs-toggle="tab" href="#tabO" role="tab" aria-controls="tab3" aria-selected="false">Online</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-md-9">
                                                    <div class="tab-content" id="myTabContentSede">
                                                        <div class="tab-pane fade show active" id="tabM" role="tabpanel" aria-labelledby="tab1-tab">
                                                            <div class="alert bg-white ">
                                                                <div class="row" runat="server" id="div_m">
                                                                    <div class="col-md-12">
                                                                        <div class="table-responsive mb-0">
                                                                            <table class="table table-sm  mb-0 mt-3 text-dark" style="font-size: 14px">

                                                                                <tr>
                                                                                    <%-- <th class="text-center " scope="col" style="width: 20%"><strong>Modalidad</strong></th>--%>
                                                                                    <th class="text-center " scope="col" style="width: 25%"><strong>Sede</strong></th>
                                                                                    <th class="text-center " scope="col" style="width: 25%"><strong>Dias</strong></th>
                                                                                    <th class="text-center " scope="col" style="width: 25%"><strong>Horas</strong></th>
                                                                                    <th class="text-center " scope="col" style="width: 25%"><strong>Inicio</strong></th>
                                                                                </tr>



                                                                                <asp:DataList ID="DataListHorariosRegularMoneda" runat="server" Width="100%">
                                                                                    <ItemTemplate>
                                                                                        <table class="table table-sm  mb-0 text-dark" style="font-size: 14px">
                                                                                            <tr>
                                                                                                <%--<td class="text-center " style="width: 20%"><%# Convert.ToString(Eval("Programa")) == "TEENS" ? "<span class='badge rounded-pill bg-primary' style='font-size: 12px'>Regular</span>" : "<span class='badge rounded-pill bg-warning text-dark' style='font-size: 12px'>Summer</span>"  %></td>--%>
                                                                                                <td class="text-center " style="width: 25%"><%# Eval("Sede") %></td>
                                                                                                <td class="text-center " style="width: 25%"><%# Eval("Dias") %></td>
                                                                                                <td class="text-center " style="width: 25%"><%# Eval("Horas") %></td>
                                                                                                <td class="text-center " style="width: 25%"><%# Eval("Inicio") %></td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </ItemTemplate>
                                                                                </asp:DataList>

                                                                            </table>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tab-pane fade  " id="tabP" role="tabpanel" aria-labelledby="tab1-tab">
                                                            <div class="alert bg-white ">
                                                                <div class="row">
                                                                    <div class="col-md-12" runat="server" id="div_p">
                                                                        <div class="table-responsive mb-0">
                                                                            <table class="table table-sm  mb-0 mt-3 text-dark" style="font-size: 14px">

                                                                                <tr>
                                                                                    <%--<th class="text-center " scope="col" style="width: 20%"><strong>Modalidad</strong></th>--%>
                                                                                    <th class="text-center " scope="col" style="width: 25%"><strong>Sede</strong></th>
                                                                                    <th class="text-center " scope="col" style="width: 25%"><strong>Dias</strong></th>
                                                                                    <th class="text-center " scope="col" style="width: 25%"><strong>Horas</strong></th>
                                                                                    <th class="text-center " scope="col" style="width: 25%"><strong>Inicio</strong></th>
                                                                                </tr>

                                                                                <asp:DataList ID="DataListHorariosRegularProvi" runat="server" Width="100%">
                                                                                    <ItemTemplate>
                                                                                        <table class="table table-sm  mb-0 text-dark" style="font-size: 14px">
                                                                                            <tr>
                                                                                                <%--<td class="text-center " style="width: 20%"><%# Convert.ToString(Eval("Programa")) == "TEENS" ? "<span class='badge rounded-pill bg-primary' style='font-size: 12px'>Regular</span>" : "<span class='badge rounded-pill bg-warning text-dark' style='font-size: 12px'>Summer</span>"  %></td>--%>
                                                                                                <td class="text-center " style="width: 25%"><%# Eval("Sede") %></td>
                                                                                                <td class="text-center " style="width: 25%"><%# Eval("Dias") %></td>
                                                                                                <td class="text-center " style="width: 25%"><%# Eval("Horas") %></td>
                                                                                                <td class="text-center " style="width: 25%"><%# Eval("Inicio") %></td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </ItemTemplate>
                                                                                </asp:DataList>

                                                                            </table>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tab-pane fade  " id="tabF" role="tabpanel" aria-labelledby="tab1-tab">
                                                            <div class="alert bg-white ">
                                                                <div class="row">
                                                                    <div class="col-md-12" runat="server" id="div_f">
                                                                        <div class="table-responsive mb-0">
                                                                            <table class="table table-sm  mb-0 mt-3 text-dark" style="font-size: 14px">

                                                                                <tr>
                                                                                    <%--<th class="text-center " scope="col" style="width: 20%"><strong>Modalidad</strong></th>--%>
                                                                                    <th class="text-center " scope="col" style="width: 25%"><strong>Sede</strong></th>
                                                                                    <th class="text-center " scope="col" style="width: 25%"><strong>Dias</strong></th>
                                                                                    <th class="text-center " scope="col" style="width: 25%"><strong>Horas</strong></th>
                                                                                    <th class="text-center " scope="col" style="width: 25%"><strong>Inicio</strong></th>
                                                                                </tr>

                                                                                <asp:DataList ID="DataListHorariosRegularFlorida" runat="server" Width="100%">
                                                                                    <ItemTemplate>
                                                                                        <table class="table table-sm  mb-0 text-dark" style="font-size: 14px">
                                                                                            <tr>
                                                                                                <%--<td class="text-center " style="width: 20%"><%# Convert.ToString(Eval("Programa")) == "TEENS" ? "<span class='badge rounded-pill bg-primary' style='font-size: 12px'>Regular</span>" : "<span class='badge rounded-pill bg-warning text-dark' style='font-size: 12px'>Summer</span>"  %></td>--%>
                                                                                                <td class="text-center " style="width: 25%"><%# Eval("Sede") %></td>
                                                                                                <td class="text-center " style="width: 25%"><%# Eval("Dias") %></td>
                                                                                                <td class="text-center " style="width: 25%"><%# Eval("Horas") %></td>
                                                                                                <td class="text-center " style="width: 25%"><%# Eval("Inicio") %></td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </ItemTemplate>
                                                                                </asp:DataList>

                                                                            </table>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tab-pane fade  " id="tabO" role="tabpanel" aria-labelledby="tab1-tab">
                                                            <div class="alert bg-white ">
                                                                <div class="row">
                                                                    <div class="col-md-12" runat="server" id="div_o">
                                                                        <div class="table-responsive mb-0">
                                                                            <table class="table table-sm  mb-0 mt-3 text-dark" style="font-size: 14px">


                                                                                <tr>
                                                                                    <%--<th class="text-center " scope="col" style="width: 20%"><strong>Modalidad</strong></th>--%>
                                                                                    <th class="text-center " scope="col" style="width: 25%"><strong>Sede</strong></th>
                                                                                    <th class="text-center " scope="col" style="width: 25%"><strong>Dias</strong></th>
                                                                                    <th class="text-center " scope="col" style="width: 25%"><strong>Horas</strong></th>
                                                                                    <th class="text-center " scope="col" style="width: 25%"><strong>Inicio</strong></th>
                                                                                </tr>

                                                                                <asp:DataList ID="DataListHorariosRegularOnline" runat="server" Width="100%">
                                                                                    <ItemTemplate>
                                                                                        <table class="table table-sm  mb-0 text-dark" style="font-size: 14px">
                                                                                            <tr>
                                                                                                <%--<td class="text-center " style="width: 20%"><%# Convert.ToString(Eval("Programa")) == "TEENS" ? "<span class='badge rounded-pill bg-primary' style='font-size: 12px'>Regular</span>" : "<span class='badge rounded-pill bg-warning text-dark' style='font-size: 12px'>Summer</span>"  %></td>--%>
                                                                                                <td class="text-center " style="width: 25%"><%# Eval("Sede") %></td>
                                                                                                <td class="text-center " style="width: 25%"><%# Eval("Dias") %></td>
                                                                                                <td class="text-center " style="width: 25%"><%# Eval("Horas") %></td>
                                                                                                <td class="text-center " style="width: 25%"><%# Eval("Inicio") %></td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </ItemTemplate>
                                                                                </asp:DataList>
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


                <div class="col-md-3">
                    <div class="bg-light rounded">
                        <div class="alert">
                            <div class="row">
                                <div class="col-md-12  text-center">
                                    <img src="../../img/programas/preschool.jpg" class="img-fluid rounded w-100" alt="">
                                </div>
                                <div class="col-md-12" runat="server" id="div_inicio">
                                    <div class="d-grid gap-2">
                                        <div class="btn btn-warning text-center mt-1" style="font-size: 16px">
                                            <asp:Label ID="LabelInicios" runat="server" Text="Label"></asp:Label>
                                        </div>
                                    </div>
                                </div>                               
                                <div class="col-md-12 mt-3">
                                    <div class="d-grid gap-2">
                                        <a href="../../Contact.aspx?programa=Preescolares" class="btn btn-primary">Contáctenos </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="bg-light rounded">
                        <div class="alert">
                            <table class="table table-borderless text-dark">
                                <tr>
                                    <td colspan="2">
                                        <h4>Sobre este curso</h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fas fa-user me-2 text-primary"></i>Edad
                                    </td>
                                    <td class="text-end text-muted">4 a 6 Años
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fas fa-clock me-2 text-primary"></i>Duración
                                    </td>
                                    <td class="text-end text-muted">6 meses
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fas fa-volume-up me-2 text-primary"></i>Lenguaje
                                    </td>
                                    <td class="text-end text-muted">English
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fas fa-medal me-2 text-primary"></i>Certificado
                                    </td>
                                    <td class="text-end text-muted">Si</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- About End -->
</asp:Content>

