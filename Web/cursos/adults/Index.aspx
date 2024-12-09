<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web.cursos.adults.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Adultos  | Cursos de Inglés </title>
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
        <div class="container">
            <div class="row g-3">
                <div class="col-md-12 ">
                    <div class="bg-white rounded p-5 shadow">
                        <div class="row ">
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-md-12">
                                        <span class="display-6 text-dark">Curso de Inglés | <span class="text-primary">Adultos </span></span>
                                    </div>
                                    <div class="col-md-12 mt-2">
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
                                    <div class="col-md-12" runat="server" id="div_inicio">
                                        <div class="row">
                                            <div class="col-md-6 text-center">
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
                            <div class="col-md-3">
                                <div class="row">
                                    <div class="col-md-12">
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


                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header bg-primary">
                            <ul class="nav nav-tabs card-header-tabs flex-column flex-sm-row" id="myTab" role="tablist" style="font-size: 20px;">
                                <li class="nav-item">
                                    <a class="nav-link active" id="tab1-tab" data-bs-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="true">Descripción</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link " id="tab2-tab" data-bs-toggle="tab" href="#tab2" role="tab" aria-controls="tab2" aria-selected="false">Summer School</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="tab3-tab" data-bs-toggle="tab" href="#tab3" role="tab" aria-controls="tab3" aria-selected="false">Objetivos</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="tab4-tab" data-bs-toggle="tab" href="#tab4" role="tab" aria-controls="tab3" aria-selected="false">Cursos</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="tab5-tab" data-bs-toggle="tab" href="#tab5" role="tab" aria-controls="tab3" aria-selected="false">Horarios</a>
                                </li>
                              
                            </ul>
                        </div>

                        <div class="card-body">
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab1-tab">
                                    <div class="row mt-5 mb-5 text-dark">
                                        <div class="col-md-12">
                                            <h2>Curso de Inglés | <span class="text-primary">Adults</span></h2>
                                            <hr />
                                        </div>
                                        <div class="col-md-2">
                                            <img src="../../img/programas/adulto.webp" class="img-fluid rounded w-100" alt="">
                                        </div>
                                        <div class="col-md-10">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <h5 class="text-primary">Modalidad</h5>
                                                </div>
                                                <div class="col-md-4">
                                                    <h5>Regular</h5>
                                                </div>
                                                <div class="col-md-4">
                                                    <h5>Intensivo</h5>
                                                </div>
                                            </div>
                                            <div class="row mt-3">
                                                <div class="col-md-3">
                                                    <h5 class="text-primary">Clases</h5>
                                                </div>
                                                <div class="col-md-3">
                                                    <h5>Presencial | <a class="text-decoration-underline" href="../../Sedes.aspx" target="_blank">ver sedes</a> </h5>
                                                </div>
                                                <div class="col-md-3">
                                                    <h5>Online</h5>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-12" style="text-align: justify; text-justify: none;">
                                                    <hr />
                                                    Curso de inglés para aplicar vocabulario y expresiones para soluciones comunicativas prácticas y 
                                                     para el uso funcional de expresiones de presentación, saludo y despedida; entrega de datos propios, de otras personas, 
                                                     de lugares, actividades e instrucciones; e intercambio de ideas e información en tiempo real en situaciones contextualizadas
                                                     a través del uso interactivo de las competencias comunicativas de los participantes como muestra del cumplimiento de los objetivos.
                          
                                                </div>
                                            </div>
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
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="tab4" role="tabpanel" aria-labelledby="tab4-tab">
                                    <div class="row mt-5">
                                        <div class="col-md-3">
                                            <div class="alert rounded bg-primary">
                                                <ul class="nav nav-tabs card-header-tabs flex-column" id="myTabPrograma"
                                                    role="tablist">
                                                    <li class="nav-item">
                                                        <a class="nav-link active rounded" id="tab1-Beginner" data-bs-toggle="tab" href="#tabBeginner" role="tab" aria-controls="tab1" aria-selected="true">Beginner</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link rounded" id="tab2-Elementary" data-bs-toggle="tab" href="#tabElementary" role="tab" aria-controls="tab2" aria-selected="false">Elementary</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link rounded" id="tab2-PreIntermediate" data-bs-toggle="tab" href="#tabPreIntermediate" role="tab" aria-controls="tab2" aria-selected="false">Pre Intermediate</a>
                                                    </li>

                                                    <li class="nav-item">
                                                        <a class="nav-link rounded" id="tab2-LowIntermediate" data-bs-toggle="tab" href="#tabLowIntermediate" role="tab" aria-controls="tab2" aria-selected="false">Low Intermediate</a>
                                                    </li>

                                                    <li class="nav-item">
                                                        <a class="nav-link rounded" id="tab2-UpperIntermediate" data-bs-toggle="tab" href="#tabUpperIntermediate" role="tab" aria-controls="tab2" aria-selected="false">Upper Intermediate</a>
                                                    </li>

                                                    <li class="nav-item">
                                                        <a class="nav-link rounded" id="tab2-PreAdvanced" data-bs-toggle="tab" href="#tabPreAdvanced" role="tab" aria-controls="tab2" aria-selected="false">Pre Advanced</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link rounded" id="tab2-Advanced" data-bs-toggle="tab" href="#tabAdvanced" role="tab" aria-controls="tab2" aria-selected="false">Advanced</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>

                                        <div class="col-md-9">
                                            <div class="tab-content" id="myTabContentPrograma">
                                                <div class="tab-pane fade show active" id="tabBeginner" role="tabpanel" aria-labelledby="tab1-tab">

                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <h3><span class="text-primary me-2">Curso de Inglés</span>Beginner </h3>
                                                            <hr />
                                                        </div>
                                                        <div class="col-md-12 mt-2" style="text-align: justify">
                                                            <p>
                                                                Curso de inglés para aplicar vocabulario y expresiones para soluciones comunicativas prácticas y 
                                                               para el uso funcional de expresiones de presentación, saludo y despedida; entrega de datos propios, 
                                                               de otras personas, de lugares, actividades e instrucciones; e intercambio de ideas e información en 
                                                               tiempo real en situaciones contextualizadas a través del uso interactivo de las competencias comunicativas
                                                               de los participantes como muestra del cumplimiento de los objetivos.
                                                            </p>
                                                            <hr />
                                                        </div>
                                                        <div class="col-md-12 mt-3">
                                                            <div class="row text-center">

                                                                <div class="col-md-12 text-start mb-3">
                                                                    <h3><span class="text-primary me-2">Objetivos</span>del curso </h3>
                                                                </div>

                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Emplear expresiones de presentación, saludo y despedidas informales simples.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Identificar ocupaciones y expresar necesidad y posesión de objetos en una oficina.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Identificar y expresar la relación de miembros en una familia.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Informar y preguntar dónde viven y trabajan otras personas en diálogos cortos.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Identificar e informar la ubicación de lugares en la ciudad.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Preguntar por y describir la posición de los objetos en una habitación.
                                                                    </div>
                                                                </div>
                                                                <%-- <div class="col-md-6 mb-3">
                                                                        <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                            Informar una actividad de trabajo de acuerdo con la fecha y hora en la que ocurre.
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                            Identificar acciones según instrucciones sobre cómo ir de un lugar a otro.
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                            Describir las características del clima de acuerdo con factores determinantes de las clases del ambiente.
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                            Identificar prendas de vestir de acuerdo con el clima de las estaciones del año.
                                                                        </div>
                                                                    </div>--%>
                                                            </div>

                                                            <div class="row text-center">
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Informar una actividad de trabajo de acuerdo con la fecha y hora en la que ocurre.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Identificar acciones según instrucciones sobre cómo ir de un lugar a otro.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Describir las características del clima de acuerdo con factores determinantes de las clases del ambiente.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Identificar prendas de vestir de acuerdo con el clima de las estaciones del año.
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>

                                                    </div>
                                                </div>

                                                <div class="tab-pane fade" id="tabElementary" role="tabpanel" aria-labelledby="tab1-tab">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <h3><span class="text-primary me-2">Curso de Inglés</span>Elementary </h3>
                                                            <hr />
                                                        </div>
                                                        <div class="col-md-12 mt-2" style="text-align: justify">
                                                            <p>
                                                                Curso de Inglés elemental para la comprensión y el uso de expresiones en contextos familiares que 
                                                                 apunten a satisfacer necesidades de tipo concreto. El desarrollo de la habilidades comprende la interacción 
                                                                 entre pares para presentarse y presentar a otros, responder y hacer preguntas sobre detalles personales, 
                                                                 como por ejemplo, donde viven, gente que conocen, cosas que poseen. La adquisición de los contenidos 
                                                                 permiten interactuar de manera simple.
                                                            </p>
                                                            <hr />
                                                        </div>
                                                        <div class="col-md-12 mt-2">
                                                            <div class="row text-center">

                                                                <div class="col-md-12 text-start mb-3">
                                                                    <h3><span class="text-primary me-2">Objetivos</span>del curso </h3>
                                                                </div>

                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Usar vocabulario para indicar acciones a través de oraciones cortas.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Usar vocabulario para describir el traslado desde un lugar a otro.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Emplear expresiones para preguntar sobre tareas y responsabilidades en el trabajo.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Usar vocabulario para describir personalidad propia y de otros.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Usar vocabulario para describir apariencia propia y de otros.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Usar vocabulario para hablar sobre habilidades propias y de otros.
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Emplear expresiones para hablar sobre rutinas diarias.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Usar vocabulario para indicar partes del cuerpo.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Emplear expresiones para describir y preguntar acerca de malestares y accidentes.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar sugerencias de soluciones para aliviar malestares y enfermedades.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Usar vocabulario para describir un viaje de vacaciones.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Usar vocabulario sobre para hablar sobre comida.
                                                                    </div>
                                                                </div>

                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="tab-pane fade" id="tabPreIntermediate" role="tabpanel" aria-labelledby="tab1-tab">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <h3><span class="text-primary me-2">Curso de Inglés</span>Pre Intermediate </h3>
                                                            <hr />
                                                        </div>
                                                        <div class="col-md-12 mt-2" style="text-align: justify">
                                                            <p>
                                                                Curso de Inglés para adultos nivel pre-intermedio para la adquisición de habilidades que permiten comprender 
                                                                 textos auténticos y expresar ideas de manera espontánea. El nivel es una primera aproximación a las competencias 
                                                                 intermedias. Los contenidos están estructurados para el desarrollo de habilidades que permiten a los alumnos 
                                                                 la comprensión del idioma en interacción social. Las actividades del curso permiten la comprensión del significado 
                                                                 y el uso de las formas en la comunicación controlada para el estímulo sistemático del lenguaje como tal; esto incluye 
                                                                 vocabulario, sintaxis, estrategias conversacionales y discursivas, comprensión auditiva, pronunciación (prescriptiva y descriptiva),
                                                                 comprensión lectora, escritura, creación de proyectos, y estrategias para la el aprendizaje.
                                                            </p>
                                                            <hr />
                                                        </div>
                                                        <div class="col-md-12 mt-2">
                                                            <div class="row text-center">

                                                                <div class="col-md-12 text-start mb-3">
                                                                    <h3><span class="text-primary me-2">Objetivos</span>del curso </h3>
                                                                </div>

                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Hablar sobre lo que se está haciendo.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Hablar sobre la familia.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Hacer y responder a invitaciones.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Responder a asugerencias.
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Describir objetos similares.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Describir características personales.
                                                                    </div>
                                                                </div>
                                                                <%-- fff--%>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Emplear expresiones para hablar sobre rutinas diarias.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Usar vocabulario para indicar partes del cuerpo.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Emplear expresiones para describir y preguntar acerca de malestares y accidentes.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar sugerencias de soluciones para aliviar malestares y enfermedades.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Usar vocabulario para solicitar transporte público.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Identificar expresiones que describen actividades típicas en un hotel.
                                                                    </div>
                                                                </div>
                                                            </div>


                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="tab-pane fade" id="tabLowIntermediate" role="tabpanel" aria-labelledby="tab1-tab">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <h3><span class="text-primary me-2">Curso de Inglés</span>Low Intermediate</h3>
                                                            <hr />
                                                        </div>
                                                        <div class="col-md-12 mt-2" style="text-align: justify">
                                                            <p>
                                                                Curso de inglés nivel intermedio bajo para adultos con contenidos integrados según el objetivo de establecer la comunicación
                                                              práctica alineada con los intereses de los estudiantes para la expresión del idioma con significado y propósito.
                                                              Las actividades del curso están estructuradas con alta frecuencia con respecto a la función social del lenguage 
                                                              para su uso sistemático en situaciones reales de interacción con otros hablantes. El nivel permite la práctica 
                                                              de las habilidades adquiridas en una modalidad controlada para la estimulación sistemática del expresiones propias 
                                                              del idioma con base en temas de interés personal y colectivo. Desde este nivel (Low Intermediate 2), los alumnos
                                                              pueden optar a rendir examen nacional ETAAPP (English Test Adaptive for Academic and Professional Purposes)
                                                            </p>
                                                            <hr />
                                                        </div>
                                                        <div class="col-md-12 mt-2">

                                                            <div class="row text-center">

                                                                <div class="col-md-12 text-start mb-3">
                                                                    <h3><span class="text-primary me-2">Objetivos</span>del curso </h3>
                                                                </div>

                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Sostener de manera fluída una descripción de variados temas dentro de temas de interés personal presentándolo como una secuencia linear.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Seguir la conversación y volver a mencionar información sobre tema de la conversación para confirmar comprensión mutua entre los interlocutores.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar opinión, creencia, acuerdo y desacuerdo.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Usar expresiones para requerir información detallada.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar quejas.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar datos detallados acerca de experiencias describiendo sentimientos y reacciones.
                                                                    </div>
                                                                </div>
                                                                <%--   low 2--%>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Explicar los puntos principales en una idea o problema con precisión razonable.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar claramente sentimientos acerca de experiencias y dar razones para explicarlos.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Seguir el flujo de la conversación sobre temas generales.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Describir cómo se hace algo dando instrucciones detalladas.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Desarrollar un argumento que puede ser comprendido por otros sin dificultad.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Dar razones para justificar un punto de vista.
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="tab-pane fade" id="tabUpperIntermediate" role="tabpanel" aria-labelledby="tab1-tab">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <h3><span class="text-primary me-2">Curso de Inglés</span>Upper Intermediate</h3>
                                                            <hr />
                                                        </div>
                                                        <div class="col-md-12 mt-2" style="text-align: justify">
                                                            <p>
                                                                Curso de Inglés nivel intermedio alto para adultos. Los contenidos están estructurados para el desarrollo de las habilidades 
                                                                con significativa e inmediata retroalimentación para la gramática remedial. Incluye, además, la práctica de elocución variada. 
                                                                El vocabulario se contextualiza en temas de interés general, y cubre las necesidades para adquirir competencias lingüísticas 
                                                                de acercamiento a los niveles avanzados. Desde este nivel (Upper-Intermediate 2), los alumnos pueden optar a curso de preparación 
                                                                de examen internacional TOEFL (Test of English as a Foreign Language) para obtener un resultado promedio de 80 puntos. 
                                                            </p>
                                                            <hr />
                                                        </div>
                                                        <div class="col-md-12 mt-2">


                                                            <div class="row text-center">

                                                                <div class="col-md-12 text-start mb-3">
                                                                    <h3><span class="text-primary me-2">Objetivos</span>del curso </h3>
                                                                </div>


                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Transmitir diferentes grados de emoción y destacar el significado de eventos y experiencias personales.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Explicar un punto de vista sobre un tema expresando ventajas y desventajas en relación con varias opciones.
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Destacar el significado personal de eventos y experiencias sosteniendo argunmentos y explicaciones relevantes.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Planear lo que se quiere decir y los medios para hacerlo considerando los efectos en el receptor.
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Desarrollar un argumento claro incluyendo ejemplos relevantes.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Participar activamente en discusiones de registro formal.
                                                                    </div>
                                                                </div>
                                                                <%--   upper 2--%>

                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Participar activamente en discusiones afirmando hechos y respondiendo opiniones sobre temas de interés común.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Explicar un punto de vista incluyendo la opinión sobre ventajas y desventajas entre varias opciones.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Redactar descripciones detalladas sobre temas relacionados con intereses personales.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Describir con detalles el significado de eventos y experiencias personales.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Explicar claramente conceptos y procedimientos con base en la expresión de comparación y contraste.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Participar de conversaciones extendidas en una amplia gama de temas general es a pesar de las interrupciones.
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="tab-pane fade" id="tabPreAdvanced" role="tabpanel" aria-labelledby="tab1-tab">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <h3><span class="text-primary me-2">Curso de Inglés</span>Pre Advanced</h3>
                                                            <hr />
                                                        </div>
                                                        <div class="col-md-12 mt-2" style="text-align: justify">
                                                            <p>
                                                                Curso de inglés nivel pre-avanzado para adultos con énfasis en el desarrollo de competencias lingüísticas asociadas al pensamiento crítico
                                                                 y la entrega de información en presentaciones en contextos académicos. Las actividades están estructuradas para el uso práctico del idioma 
                                                                 a través de modelos auténticos de comunicación efectiva. Desde este nivel (pre-advanced 2), los alumnos pueden optar a curso de preparación
                                                                 TOEFL para obtener un resultado promedio de 90 puntos.
                                                            </p>
                                                            <hr />
                                                        </div>
                                                        <div class="col-md-12 mt-2">

                                                            <div class="row text-center">

                                                                <div class="col-md-12 text-start mb-3">
                                                                    <h3><span class="text-primary me-2">Objetivos</span>del curso </h3>
                                                                </div>


                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Identificar la idea principal y ejemplos en historias.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Usar ejemplos para explicar una historia
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Usar pausas efectivamente.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Escuchar explicaciones para palabras y conceptos específicos.
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Explicar palabras y conceptos específicos.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Fomentar la participación de una audiencia.
                                                                    </div>
                                                                </div>

                                                                <%--  pre 2--%>

                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Hacer preguntas mientras se escucha la información
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Dar y explicar razones.
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Uso efectivo de lenguaje corporal
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Analizar, predecir, interpretar, sintetizar y evaluar información.
                                                                    </div>
                                                                </div>


                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="tab-pane fade" id="tabAdvanced" role="tabpanel" aria-labelledby="tab1-tab">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <h3><span class="text-primary me-2">Curso de Inglés</span>Advanced</h3>
                                                            <hr />
                                                        </div>
                                                        <div class="col-md-12 mt-2" style="text-align: justify">
                                                            <p>
                                                                Curso de inglés nivel avanzado para adultos. La estructura del curso tiene base en las funciones académicas del 
                                                                         idioma para potenciar los conocimientos en contextos interdisciplinarios. Desde este nivel (Advanced 2), los alumnos 
                                                                         pueden optar a curso de preparación TOEFL con un resultado promedio desde 95 puntos.
                                                            </p>
                                                            <hr />
                                                        </div>
                                                        <div class="col-md-12 mt-2">

                                                            <div class="row text-center">

                                                                <div class="col-md-12 text-start mb-3">
                                                                    <h3><span class="text-primary me-2">Objetivos</span>del curso </h3>
                                                                </div>


                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comprender y expresar causas y efectos.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Usar variaciones de ritmo del discurso.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Identificar y usar marcadores discursivos de alta y baja frecuencia.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Preguntar por y entregar información clara.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Reconocer el tono y las funciones lingüísticas de los hablantes.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Explicar procesos y organiar información en secuencias lógicas.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comprender material con contenidos específicos.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Inferir, personalizar, analizar, sintetizar, y aplicar contenido e información.
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

                                <div class="tab-pane fade" id="tab5" role="tabpanel" aria-labelledby="tab5-tab">
                                    <div class="row mt-5">
                                        <div class="col-md-3">
                                            <div class="alert rounded bg-primary">
                                                <ul class="nav nav-tabs card-header-tabs flex-column" id="myTabSede"
                                                    role="tablist">
                                                    <li class="nav-item" runat="server" id="btn_m" visible="false">
                                                        <a class="nav-link active rounded" id="tab1-moneda" data-bs-toggle="tab" href="#tabM" role="tab" aria-controls="tab1" aria-selected="true">Moneda</a>
                                                    </li>
                                                    <li class="nav-item" runat="server" id="btn_p" visible="false">
                                                        <a class="nav-link rounded" id="tab2-provi" data-bs-toggle="tab" href="#tabP" role="tab" aria-controls="tab2" aria-selected="false">Providencia</a>
                                                    </li>
                                                    <li class="nav-item" runat="server" id="btn_f" visible="false">
                                                        <a class="nav-link rounded" id="tab3-florida" data-bs-toggle="tab" href="#tabF" role="tab" aria-controls="tab3" aria-selected="false">La florida</a>
                                                    </li>
                                                    <li class="nav-item" runat="server" id="btn_o" visible="false">
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

