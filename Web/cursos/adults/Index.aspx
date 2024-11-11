<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web.cursos.adults.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Adultos  | Cursos de Inglés </title>
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
                                        <span class="display-6 text-dark">Curso de Inglés | <span class="text-primary">Adultos </span></span>
                                    </div>
                                    <div class="col-sm-12 mt-2">
                                        <span class="h5">
                                            <i class="fas fa-clock me-2"></i>Regular
                                     <span class="me-2 ms-2">|</span>
                                            <i class="fas fa-clock me-2"></i>Intensivo
                                    <span class="me-2 ms-2">|</span>
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
                                            <tr>
                                                <td>
                                                    <div class="d-grid gap-2">
                                                        <a href="Shop.aspx" class="btn btn-success btn-lg"><i class="fas fa-shopping-cart me-2"></i>Comprar Curso </a>
                                                        <%--<a href="https://diagnostico.norteamericano.cl/adultos/" target="_blank" class="btn btn-success btn-lg"><i class="fas fa-shopping-cart me-2"></i>Comprar Curso </a>--%>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="d-grid gap-2">
                                                        <a href="../../Contact.aspx?programa=Adultos" class="btn btn-primary"><i class="fas fa-user-tie me-2"></i>Contáctenos </a>
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
                                                                            <td class="text-center " style="width: 20%"><%# Convert.ToString(Eval("Programa")) == "ADULTS INTENSIVO" ? "<span class='badge rounded-pill bg-success'  style='font-size: 14px'>Intensivo</span>" : Convert.ToString(Eval("Programa")) == "ADULTS REGULAR" ? "<span class='badge rounded-pill bg-primary' style='font-size: 14px'>Regular</span>" : "<span class='badge rounded-pill bg-warning text-dark' style='font-size: 14px'>Summer</span>"  %></td>
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
                                                                            <td class="text-center " style="width: 20%"><%# Convert.ToString(Eval("Programa")) == "ADULTS INTENSIVO" ? "<span class='badge rounded-pill bg-success'  style='font-size: 14px'> Intensivo</span>" : Convert.ToString(Eval("Programa")) == "ADULTS REGULAR" ? "<span class='badge rounded-pill bg-primary' style='font-size: 14px'>Regular</span>" : "<span class='badge rounded-pill bg-warning text-dark' style='font-size: 14px'>Summer</span>"  %></td>
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
                                                                            <td class="text-center " style="width: 20%"><%# Convert.ToString(Eval("Programa")) == "ADULTS INTENSIVO" ? "<span class='badge rounded-pill bg-success'  style='font-size: 14px'> Intensivo</span>" : Convert.ToString(Eval("Programa")) == "ADULTS REGULAR" ? "<span class='badge rounded-pill bg-primary' style='font-size: 14px'>Regular</span>" : "<span class='badge rounded-pill bg-warning text-dark' style='font-size: 14px'>Summer</span>"  %></td>
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
                                                                            <td class="text-center " style="width: 20%"><%# Convert.ToString(Eval("Programa")) == "ADULTS INTENSIVO" ? "<span class='badge rounded-pill bg-success'  style='font-size: 14px'> Intensivo</span>" : Convert.ToString(Eval("Programa")) == "ADULTS REGULAR" ? "<span class='badge rounded-pill bg-primary' style='font-size: 14px'> Regular</span>" : "<span class='badge rounded-pill bg-warning text-dark' style='font-size: 14px'>Summer</span>"  %></td>
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
                                        <h2>Curso de Inglés | <span class="text-primary">Adults</span></h2>
                                        <hr />
                                    </div>
                                    <div class="col-md-2">
                                        <img src="../../img/programas/adulto.webp" class="img-fluid rounded w-100" alt="">
                                    </div>
                                    <div class="col-md-10">

                                        <table class="table text-dark">
                                            <tr>
                                                <td style="width: 20%">
                                                    <h5 class="text-primary">Modalidad</h5>
                                                </td>
                                                <th>
                                                    <h5>Regular (2 clases por semana)</h5>
                                                </th>
                                                <th>
                                                    <h5>Intensivo (4 clases por semana)</h5>
                                                </th>
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
                                           
                                            <tr style="text-align: justify">
                                                <td colspan="3">Curso de inglés para aplicar vocabulario y expresiones para soluciones comunicativas prácticas y 
                                                   para el uso funcional de expresiones de presentación, saludo y despedida; entrega de datos propios, de otras personas, 
                                                   de lugares, actividades e instrucciones; e intercambio de ideas e información en tiempo real en situaciones contextualizadas
                                                   a través del uso interactivo de las competencias comunicativas de los participantes como muestra del cumplimiento de los objetivos.
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
                                            <td>Emplear expresiones de presentación, saludo y despedidas informales simples.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Identificar ocupaciones y expresar necesidad y posesión de objetos en una oficina.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Identificar y expresar la relación de miembros en una familia.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Informar una actividad de trabajo de acuerdo con la fecha y hora en la que ocurre.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Identificar acciones según instrucciones sobre cómo ir de un lugar a otro.</td>
                                        </tr>

                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Preguntar por y describir la posición de los objetos en una habitación.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Informar una actividad de trabajo de acuerdo con la fecha y hora en la que ocurre.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Identificar acciones según instrucciones sobre cómo ir de un lugar a otro.</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                            <td>Identificar prendas de vestir de acuerdo con el clima de las estaciones del año.</td>
                                        </tr>
                                    </table>

                                </div>

                            </div>

                            <div class="col-xl-12" runat="server" id="div_niveles" visible="false">
                                <div class="row mt-5">
                                    <div class="col-md-12">
                                        <img class="img-fluid rou" src="../../img/programas/adultos_niveles.webp" />
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
                                        <img src="../../img/programas/summer_adults.webp" class="img-fluid rounded w-100" alt="">
                                    </div>
                                    <div class="col-md-9">

                                        <table class="table text-dark">                                            
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
                                                    <h5>Integración del drama y la improvisación para aprender idiomas</h5>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <h5>Este verano lleva tu inglés a un nuevo nivel. El programa incluye talleres de improvisación teatral, simulaciones y juegos de roles.
                                                    </h5>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">Observación: Estudiantes que llegan por renovación deben solicitar homologación hacia el nivel más próximo abierto por temporada de verano.
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
    <!-- About End -->

</asp:Content>

