<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Kid.aspx.cs" Inherits="Web.cursos.MiddleTerm.Kid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <meta name="description" content="Norteamericano, Cursos de Inglés para adolescentes, jovenes, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Middle Term | Kid</title>
    <link rel="canonical" href="https://norteamericano.cl/" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <!-- Google Tag Manager (noscript) -->
    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W7349HX"
            height="0" width="0" style="display: none; visibility: hidden"></iframe>
    </noscript>
    <!-- End Google Tag Manager (noscript) -->


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
    <div class="container-fluid alert-secondary about py-5">
        <div class="container py-5">
            <div class="row g-3">
                <div class="col-md-12 ">
                    <div class="rounded bg-light p-5">
                        <div class="row ">
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-md-12">
                                        <span class="display-6 text-dark">Middle Term | <span class="text-primary">Kids </span></span>
                                    </div>
                                    <div class="col-md-12 mt-2">
                                        <span class="h5">
                                            <i class="fas fa-user me-2"></i>Presencial 
                                            <span class="me-2 ms-2">|</span>
                                            <i class="fas fa-laptop me-2"></i>Online
                                        </span>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-3">
                                <div class="row">
                                    <div class="col-md-12">
                                        <table class="text-dark text-center table table-borderless mb-0" runat="server" id="table_tarifas">                                           
                                            <tr>
                                                <td>
                                                    <div class="d-grid gap-2">
                                                        <a href="../../Contact.aspx?programa=Middle_Term_Kid" class="btn btn-primary"><i class="fas fa-user-tie me-2"></i>Contáctenos </a>
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
                                      <%--  <li class="nav-item">
                                            <a class="nav-link" id="tab5-tab" data-bs-toggle="tab" href="#tab4" role="tab" aria-controls="tab4" aria-selected="false">Horarios</a>
                                        </li>--%>
                                    </ul>

                                    <div class="tab-content" id="myTabContent">
                                        <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab1-tab">
                                            <div class="row mt-5  mb-5 text-dark">
                                                <div class="col-md-12">
                                                    <h4>Descripción | <span class="text-primary">Curso para niños</span></h4>
                                                    <hr />
                                                </div>
                                                <div class="col-md-12">
                                                    <div style="text-align: justify">
                                                      Curso de inglés para niños enfocado en la comunicación y el uso de vocabulario frecuente. Desarrolla habilidades lingüísticas, lógicas, inter e intrapersonales, y kinestésicas.
                                                        <br />
                                                        <br />
                                                       Se enfoca en el "aprender a aprender" mediante la autonomía, responsabilidad y auto-motivación.
                                                        <br />
                                                        <br />
                                                       Los contenidos están estructurados con base en el vocabulario en primer lugar para la producción de estructuras gramaticales y competencias relacionadas con el aprendizaje integrado de contenido/idioma (CLIL).
                                                    </div>
                                                </div>
                                                <div class="col-md-12 mt-5">
                                                    <h4>Lo que <span class="text-primary">aprenderás</span></h4>
                                                    <hr />
                                                    <table class="table mb-5 mt-3 text-dark">
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Decir y preguntar a otros por nombre y edad.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Identificar y decir colores y juegos.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Identificar diferentes tipos de climas.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Identificar la idea principal en una historia.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Identificar miembros de la familia en una historia.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Identificar vocabulario relacionado con comida.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Identificar animales salvajes de Chile y de Estados Unidos.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Identificar y usar vocabulario sobre juguetes.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Identificar y nombrar las estaciones del año.</td>
                                                        </tr>
                                                      
                                                    </table>
                                                </div>
                                            </div>
                                        </div>

                                     
                                        <div class="tab-pane fade" id="tab3" role="tabpanel" aria-labelledby="tab3-tab">

                                            <div class="accordion accordion-flush mt-5" id="accordionExample">
                                                <div class="accordion-item shadow">
                                                    <h2 class="accordion-header" id="headingOne">
                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                            <h5 class="text-dark"><span class="text-primary me-2">Curso de Inglés</span>Beginner</h5>
                                                        </button>
                                                    </h2>
                                                    <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">

                                                            <div class="row">
                                                                <div class="col-md-12 mt-2" style="text-align: justify">
                                                                    <span class="text-end text-dark">Nivel CEFR: -A1</span>
                                                                    <hr />
                                                                   Curso de inglés inicial para niños enfocado en la comunicación y el uso de vocabulario frecuente. Desarrolla habilidades lingüísticas, lógicas, inter e intrapersonales, y kinestésicas. Las actividades promueven el pensamiento temprano, como la deducción y la organización de conceptos. Es un curso orientado al desarrollo de habilidades sociales, culturales y cognitivas, con un enfoque en adquirir competencias comunicativas de manera sistemática. Las actividades fomentan un aprendizaje colaborativo y cooperativo entre los niños e invita a vivir 3 talleres de Metodología STEM con foco en “aprender haciendo proyectos” en clase.
                                                                </div>                                                               
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="accordion-item mt-3 shadow">
                                                    <h2 class="accordion-header" id="headingTwo">
                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                            <h5 class="text-dark"><span class="text-primary me-2">Curso de Inglés</span>Elementary</h5>
                                                        </button>
                                                    </h2>
                                                    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">
                                                            <div class="row">
                                                                <div class="col-md-12 mt-2" style="text-align: justify">
                                                                    <span class="text-end text-dark">Nivel CEFR: A1</span>
                                                                    <hr />

                                                                    <p style="text-align: justify;">
                                                                       Este curso de inglés para niños en nivel elemental utiliza el enfoque CLIL (aprendizaje integrado de contenido/idioma) para consolidar y extender el conocimiento previo, logrando una producción del idioma más natural e inteligible. Se enfoca en el "aprender a aprender" mediante la autonomía, responsabilidad y auto-motivación. Las actividades incluyen la comprensión de estructuras, la ampliación del vocabulario, y el aprendizaje a través de la exploración, la creación de historias y juegos colaborativos e invita a vivir 3 talleres de Metodología STEM con foco en “aprender haciendo proyectos” en clase.
                                                                    </p>
                                                                    <hr />
                                                                </div>
                                                               
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="accordion-item mt-3 shadow">
                                                    <h2 class="accordion-header" id="headingThree">
                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                            <h5 class="text-dark"><span class="text-primary me-2">Curso de Inglés</span>Pre Intermediate</h5>
                                                        </button>
                                                    </h2>
                                                    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">
                                                            <div class="row">
                                                                <div class="col-md-12 mt-2" style="text-align: justify">
                                                                    <span class="text-end text-dark">Nivel CEFR: A1+</span>
                                                                    <hr />

                                                                    <p style="text-align: justify;">
                                                                       Curso de Inglés para niños nivel pre-intermedio con énfasis en actividades de resolución de problemas, conocimiento digital y comprensión de la sociedad. Los contenidos están estructurados con base en el vocabulario en primer lugar para la producción de estructuras gramaticales y competencias relacionadas con el aprendizaje integrado de contenido/idioma (CLIL). Las actividades aportan a la conciencia de la cultura con ejecución de proyectos para el aprendizaje integrado de los niños para consolidar el conocimiento a través de este nivel e invita a vivir 3 talleres de Metodología STEM con foco en “aprender haciendo proyectos” en clase.
                                                                    </p>
                                                                    <hr />
                                                                </div>                                                              
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                        <div class="tab-pane fade" id="tab4" role="tabpanel" aria-labelledby="tab5-tab">
                                            <div class="row mt-2">
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
                                    <img src="../../img/programas/BANNERKIDS1.png" class="img-fluid rounded w-100" alt="">
                                </div>
                              <%--  <div class="col-md-12" runat="server" id="div_inicio">
                                    <div class="d-grid gap-2">
                                        <div class="btn btn-warning text-center mt-1" style="font-size: 16px">

                                            <asp:Label ID="LabelInicios" runat="server" Text="Label"></asp:Label>
                                        </div>
                                    </div>
                                </div>--%>
                               <%-- <div class="col-md-12 mt-3">
                                    <div class="d-grid gap-2">
                                        <a href="Shop.aspx" class="btn btn-success">Comprar Curso </a>
                                    </div>
                                </div>--%>
                                <div class="col-md-12 mt-3">
                                    <div class="d-grid gap-2">
                                        <a href="../../Contact.aspx?programa=Middle_Term_Kid" class="btn btn-primary">Contáctenos </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="bg-light rounded">
                        <div class="alert">
                            <table class="table table-borderless text-dark" style="font-size: 14px">
                                <tr>
                                    <td colspan="2">
                                        <h4>Sobre este curso</h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fas fa-user me-2 text-primary"></i>Edad
                                    </td>
                                    <td class="text-end text-muted">7 a 11 Años
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fas fa-clock me-2 text-primary"></i>Duración
                                    </td>
                                    <td class="text-end text-muted">3 meses
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
                                    <td class="text-end text-muted">Si
                                    </td>
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


