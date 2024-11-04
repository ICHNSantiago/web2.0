﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="PreIntermediate.aspx.cs" Inherits="Web.cursos.sprim.teen.PreIntermediate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Norteamericano, Cursos de Inglés para adolescentes, jovenes, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Spring Program | Pre Intermediate - Teens</title>
    <link rel="canonical" href="https://norteamericano.cl/" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
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
                    <div class="bg-white rounded p-5 ">
                        <div class="row ">
                            <div class="col-sm-9">
                                <h4 class="text-primary">Spring Program</h4>
                                <h5 class="display-6">Teens  | <span class="text-primary">Pre Intermediate</span></h5>
                                <h5>
                                    <span class="text-primary"><strong>CEFR A2 </strong></span>
                                    <span class="me-2 ms-2">|</span>
                                    <i class="fas fa-clock me-2"></i>30 Horas 
                                    <span class="me-2 ms-2">|</span>
                                    <i class="fas fa-user me-2"></i>Presencial                                   
                                </h5>
                            </div>
                            <div class="col-sm-3">
                                <div class="row">
                                    <div class="col-lg-12 mt-3">
                                        <table class="text-dark text-center table table-borderless mb-0" runat="server" id="table_tarifas">
                                            <tr>
                                                <td>
                                                    <h2>$</h2>
                                                </td>
                                                <td>
                                                    <h2>
                                                        <strong>
                                                            <asp:Label ID="LabelTarifaRegular" runat="server" Text="0"></asp:Label>
                                                        </strong>
                                                    </h2>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">
                                                    <div class="d-grid gap-2">
                                                        <a href="../../../Contact.aspx?programa=Spring_Program_teen" class="btn btn-primary"><i class="fas fa-user-tie me-2"></i>Contáctenos </a>
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

                <div class="col-xl-12">
                    <div class="bg-white rounded p-5 h-100">
                        <ul class="nav nav-pills nav-fill nav-tabs" role="tablist">
                            <li class="nav-item" role="presentation" runat="server" id="link_horario_40">
                                <asp:LinkButton ID="LinkButtonHorarioReg" class="nav-link active" runat="server" OnClick="LinkButtonHorarioReg_Click">Horarios</asp:LinkButton>
                            </li>
                            <li class="nav-item" role="presentation">
                                <asp:LinkButton ID="LinkButtonDescripcion" class="nav-link" runat="server" OnClick="LinkButtonDescripcion_Click">Descripción</asp:LinkButton>
                            </li>
                            <li class="nav-item" role="presentation">
                                <asp:LinkButton ID="LinkButtonObjetivo" class="nav-link" runat="server" OnClick="LinkButtonObjetivo_Click">Objetivos</asp:LinkButton>
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
                                                    <table class="table table-sm  mb-0 mt-3 bg-light text-dark" style="font-size: 14px">
                                                        <tbody>
                                                            <tr>
                                                                <th class="text-center " scope="col" style="width: 25%"><strong>Sede</strong></th>
                                                                <th class="text-center " scope="col" style="width: 25%"><strong>Dias</strong></th>
                                                                <th class="text-center " scope="col" style="width: 25%"><strong>Horas</strong></th>
                                                                <th class="text-center " scope="col" style="width: 25%"><strong>Inicio</strong></th>
                                                            </tr>
                                                        </tbody>

                                                        <tbody>
                                                            <asp:DataList ID="DataListHorariosRegularMoneda" runat="server" Width="100%">
                                                                <ItemTemplate>
                                                                    <table class="table table-sm  mb-0 bg-light text-dark" style="font-size: 14px">
                                                                        <tr>
                                                                            <td class="text-center " style="width: 25%"><%# Eval("Sede") %></td>
                                                                            <td class="text-center " style="width: 25%"><%# Eval("Dias") %></td>
                                                                            <td class="text-center " style="width: 25%"><%# Eval("Horas") %></td>
                                                                            <td class="text-center " style="width: 25%"><%# Eval("Inicio") %></td>
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
                                                    <table class="table table-sm  mb-0 mt-3 bg-light text-dark" style="font-size: 14px">
                                                        <tbody>
                                                            <tr>
                                                                <th class="text-center " scope="col" style="width: 25%"><strong>Sede</strong></th>
                                                                <th class="text-center " scope="col" style="width: 25%"><strong>Dias</strong></th>
                                                                <th class="text-center " scope="col" style="width: 25%"><strong>Horas</strong></th>
                                                                <th class="text-center " scope="col" style="width: 25%"><strong>Inicio</strong></th>
                                                            </tr>
                                                        </tbody>

                                                        <tbody>
                                                            <asp:DataList ID="DataListHorariosRegularProvi" runat="server" Width="100%">
                                                                <ItemTemplate>
                                                                    <table class="table table-sm  mb-0 bg-light text-dark" style="font-size: 14px">
                                                                        <tr>
                                                                            <td class="text-center " style="width: 25%"><%# Eval("Sede") %></td>
                                                                            <td class="text-center " style="width: 25%"><%# Eval("Dias") %></td>
                                                                            <td class="text-center " style="width: 25%"><%# Eval("Horas") %></td>
                                                                            <td class="text-center " style="width: 25%"><%# Eval("Inicio") %></td>
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
                                                    <table class="table table-sm  mb-0 mt-3 bg-light text-dark" style="font-size: 14px">
                                                        <tbody>
                                                            <tr>
                                                                <th class="text-center " scope="col" style="width: 25%"><strong>Sede</strong></th>
                                                                <th class="text-center " scope="col" style="width: 25%"><strong>Dias</strong></th>
                                                                <th class="text-center " scope="col" style="width: 25%"><strong>Horas</strong></th>
                                                                <th class="text-center " scope="col" style="width: 25%"><strong>Inicio</strong></th>
                                                            </tr>
                                                        </tbody>

                                                        <tbody>
                                                            <asp:DataList ID="DataListHorariosRegularFlorida" runat="server" Width="100%">
                                                                <ItemTemplate>
                                                                    <table class="table table-sm  mb-0 bg-light text-dark" style="font-size: 14px">
                                                                        <tr>
                                                                            <td class="text-center " style="width: 25%"><%# Eval("Sede") %></td>
                                                                            <td class="text-center " style="width: 25%"><%# Eval("Dias") %></td>
                                                                            <td class="text-center " style="width: 25%"><%# Eval("Horas") %></td>
                                                                            <td class="text-center " style="width: 25%"><%# Eval(" Inicio") %></td>
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
                                                    <table class="table table-sm  mb-0 mt-3 bg-light text-dark" style="font-size: 14px">
                                                        <tbody>
                                                            <tr>
                                                                <th class="text-center " scope="col" style="width: 25%"><strong>Sede</strong></th>
                                                                <th class="text-center " scope="col" style="width: 25%"><strong>Dias</strong></th>
                                                                <th class="text-center " scope="col" style="width: 25%"><strong>Horas</strong></th>
                                                                <th class="text-center " scope="col" style="width: 25%"><strong>Inicio</strong></th>
                                                            </tr>
                                                        </tbody>

                                                        <tbody>
                                                            <asp:DataList ID="DataListHorariosRegularOnline" runat="server" Width="100%">
                                                                <ItemTemplate>
                                                                    <table class="table table-sm  mb-0 bg-light text-dark" style="font-size: 14px">
                                                                        <tr>
                                                                            <td class="text-center " style="width: 25%"><%# Eval("Sede") %></td>
                                                                            <td class="text-center " style="width: 25%"><%# Eval("Dias") %></td>
                                                                            <td class="text-center " style="width: 25%"><%# Eval("Horas") %></td>
                                                                            <td class="text-center " style="width: 25%"><%# Eval("Inicio") %></td>
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
                                        <h2>Spring Program Teens  | <span class="text-primary">Pre Intermediate</span></h2>
                                        <hr />
                                    </div>
                                    <div class="col-md-2">
                                        <img src="../../../img/programas/spring.png" class="img-fluid rounded w-100" alt="">
                                    </div>
                                    <div class="col-md-10">
                                        Curso de inglés nivel pre-intermedio para adolescentes con contenidos estructurados para el desarrollo del vocabulario en ejercicios e interacción controlados; con práctica de habilidades para la comprensión y preparación de pruebas estandarizadas. Con exposición a la producción activa del idioma, el nivel pre- intermedio consolida las competencias adquiridas en los dos niveles anteriores como primer acercamiento a las funciones metalingüísticas del inglés e invita a vivir experiencias con Realidad Virtual para consolidar aprendizajes mediante el uso de Casco de VR 3D con controladores en clase.
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-12" runat="server" id="div_objetivos" visible="false">
                                <div class="mt-5">
                                    <h2>Spring Program Teens | <span class="text-primary">Objetivos</span></h2>
                                    <hr />
                                    <table class="table mb-5 mt-3 text-dark">
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Escuchar conversaciones simples y recoger información específica.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Escuchar información en relación con temas familiares y completar diagramas.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Expresar gusto y disgusto en contextos cotidianos usando lenguaje simple.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Entregar información simple sobre direcciones.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Expresar y preguntar por información personal y sobre otras personas.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Describir objetos de uso cotidiano.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Comprender información familiar directa sobre productos, señaléticas, textos o reportes.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Comprender información en etiquetas de comida, menús, señales de tránsito, y mensajes en dispositivos.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Comprender el significado general de un texto, artículo o libro simple.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Comprender textos cortos de dos párrafos para encontrar información concreta.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Comprender y leer gráficos simples.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Identificar el progreso de tareas.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Identificar vocabulario desde el contexto, e identificar el contexto a través del vocabulario.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Expresar entendimiento y pedir clarificación. </td>
                                        </tr>

                                    </table>
                                </div>

                            </div>
                        </div>

                    </div>

                </div>

                <div class="col-xl-12">
                    <div class="bg-white rounded p-5 h-100">
                        <div class="row">

                            <div class="col-sm-12 mb-5">
                                <h4><strong><span class="text-primary me-2">Cursos</span>Similares</strong></h4>
                                <hr />
                            </div>
                            <div class="col-sm-6">
                                <div class="counter-item bg-light rounded p-3 h-100">
                                    <div class="counter-counting">
                                        <div class="row g-4 justify-content-center">
                                            <div class="col-sm-8">
                                                <i class="fas fa-bookmark text-success fs-4"></i>
                                                <span class="text-dark fs-4 fw-bold">Teens - Beginner</span>
                                            </div>
                                            <div class="col-sm-4">
                                                <a class="btn btn-success py-2 px-4" href="Beginner.aspx">Saber más</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="counter-item bg-light rounded p-3 h-100">
                                    <div class="counter-counting">
                                        <div class="row g-4 justify-content-center">
                                            <div class="col-sm-8">
                                                <i class="fas fa-bookmark text-success fs-4"></i>
                                                <span class="text-dark fs-4 fw-bold">Teens - Elementary</span>
                                            </div>
                                            <div class="col-sm-4">
                                                <a class="btn btn-success py-2 px-4" href="Elementary.aspx">Saber más</a>
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


