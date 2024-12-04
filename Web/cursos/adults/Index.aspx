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
        <div class="container py-5">
            <div class="row g-5">
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
                            <ul class="nav nav-tabs card-header-tabs" id="myTab" role="tablist" style="font-size: 20px;">
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
                                                            <div class="accordion" id="accordionExample">
                                                                <div class="accordion-item">
                                                                    <h2 class="accordion-header" id="headingOne">
                                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                                            <h5><span class="text-primary me-2">Objetivos</span>Beginner 1 (< A1)</h5>
                                                                        </button>
                                                                    </h2>
                                                                    <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                                                        <div class="accordion-body">
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Emplear expresiones de presentación, saludo y despedidas informales simples.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Identificar ocupaciones y expresar necesidad y posesión de objetos en una oficina.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Identificar y expresar la relación de miembros en una familia.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Informar y preguntar dónde viven y trabajan otras personas en diálogos cortos.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Identificar e informar la ubicación de lugares en la ciudad.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Preguntar por y describir la posición de los objetos en una habitación.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Informar una actividad de trabajo de acuerdo con la fecha y hora en la que ocurre.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Identificar acciones según instrucciones sobre cómo ir de un lugar a otro.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Describir las características del clima de acuerdo con factores determinantes de las clases del ambiente.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Identificar prendas de vestir de acuerdo con el clima de las estaciones del año.<br />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="accordion-item">
                                                                    <h2 class="accordion-header" id="headingTwo">
                                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                                            <h5><span class="text-primary me-2">Objetivos</span> Beginner 2 (A1)</h5>
                                                                        </button>
                                                                    </h2>
                                                                    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                                                                        <div class="accordion-body">

                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Preguntar por y describir la posición de los objetos en una habitación.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Informar una actividad de trabajo de acuerdo con la fecha y hora en la que ocurre.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Identificar acciones según instrucciones sobre cómo ir de un lugar a otro.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Describir las características del clima de acuerdo con factores determinantes de las clases del ambiente.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Identificar prendas de vestir de acuerdo con el clima de las estaciones del año.<br />
                                                                        </div>
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
                                                        <div class="col-md-12 mt-2" >
                                                            <div class="accordion" id="accordionExampleEle">
                                                                <div class="accordion-item">
                                                                    <h2 class="accordion-header" id="headingOneEle">
                                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOneEle" aria-expanded="true" aria-controls="collapseOne">
                                                                            <h5><span class="text-primary me-2">Objetivos</span>Elementary 1 (A2)</h5>
                                                                        </button>
                                                                    </h2>
                                                                    <div id="collapseOneEle" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExampleEle">
                                                                        <div class="accordion-body">
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para indicar acciones a través de oraciones cortas.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para describir el traslado desde un lugar a otro.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Emplear expresiones para preguntar sobre tareas y responsabilidades en el trabajo.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para describir personalidad propia y de otros.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para describir apariencia propia y de otros.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para hablar sobre habilidades propias y de otros.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para hablar sobre la ejecución de tareas domésticas.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Emplear expresiones para indicar, negar y preguntar qué están haciendo otros.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario y expresiones para hacer invitaciones.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Emplear expresiones para aceptar y rechazar invitaciones.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para hablar sobre actividades de tiempo libre.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para describir objetos tecnológicos.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para indicar posesión de objetos.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Emplear expresiones para solicitar usar o hacer algo.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Emplear expresiones para dar o rechazar el permiso de usar o hacer algo.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para hacer comparaciones entre dos objetos.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para planear actividades.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Emplear vocabulario y expresiones para organizar un plan en grupo.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Expresar predicciones y eventos en futuro cercano.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Emplear expresiones para indicar un problema que imposibilita la ejecución de un plan.
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="accordion-item">
                                                                    <h2 class="accordion-header" id="headingTwoEle">
                                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwoEle" aria-expanded="false" aria-controls="collapseTwo">
                                                                            <h5><span class="text-primary me-2">Objetivos</span>Elementary 2 (A2)</h5>
                                                                        </button>
                                                                    </h2>
                                                                    <div id="collapseTwoEle" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExampleEle">
                                                                        <div class="accordion-body">
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Emplear expresiones para hablar sobre rutinas diarias.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para indicar partes del cuerpo.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Emplear expresiones para describir y preguntar acerca de malestares y accidentes.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Expresar sugerencias de soluciones para aliviar malestares y enfermedades.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Identificar vocabulario para indicar atracciones turísticas en una ciudad.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para solicitar transporte público.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para indicar lugares en la ciudad y dentro de un edificio.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Expresar información para indicar cómo llegar a un lugar.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para describir un viaje de vacaciones.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Identificar expresiones que describen actividades típicas en un hotel.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario sobre para hablar sobre comida.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Emplear vocabulario y expresiones para indicar y preguntar sobre cantidades de comida.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para indicar los pasos en la preparación de la comida.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Identificar vocabulario en un menú y emplear expresiones para ordenar comida.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario y expresiones para hablar y preguntar sobre eventos importantes en la vida.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Emplear vocabulario para preguntar sobre acciones y eventos del pasado.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para indicar en un calendario cuándo ocurrieron eventos en el pasado .<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar expresiones de tiempo para describir eventos pasados.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Expresar objetivos y planes para el futuro cercano.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Emplear expresiones para indicar el momento de los objetivos y planes en el futuro cercano<br />
                                                                        </div>
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
                                                        <div class="col-md-12 mt-2" >
                                                            <div class="accordion" id="accordionExamplePre">
                                                                <div class="accordion-item">
                                                                    <h2 class="accordion-header" id="headingOnePre">
                                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOnePre" aria-expanded="true" aria-controls="collapseOne">
                                                                            <h5><span class="text-primary me-2">Objetivos</span>Pre Intermediate 1  (A2+)</h5>
                                                                        </button>
                                                                    </h2>
                                                                    <div id="collapseOnePre" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExamplePre">
                                                                        <div class="accordion-body">
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Hablar sobre lo que se está haciendo.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Hablar sobre la familia.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Hacer y responder a invitaciones.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Responder a asugerencias.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Describir objetos similares.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Describir características personales.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Hablar sobre cómo las personas ejecutan tareas.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Expresar desacuerdo.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Expresar estado personal.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Hablar sobre actividades del pasado.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Describir emociones.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar estrategias para cambiar el tema en una conversación.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Hablar sobre preferencias en la comida.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Hablar sobre costumbres relacionadas con la comida.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Expresar lo que se quiere y lo que se necesita.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar estrategias para demostrar duda.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Identificar problemas y soluciones.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Hablar sobre lo que se necesita hacer.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Demostrar entendimiento.<br />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="accordion-item">
                                                                    <h2 class="accordion-header" id="headingTwoPre">
                                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwoPre" aria-expanded="false" aria-controls="collapseTwo">
                                                                            <h5><span class="text-primary me-2">Objetivos</span>Pre Intermediate 2 (A2+)</h5>
                                                                        </button>
                                                                    </h2>
                                                                    <div id="collapseTwoPre" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExamplePre">
                                                                        <div class="accordion-body">
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Emplear expresiones para hablar sobre rutinas diarias.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para indicar partes del cuerpo.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Emplear expresiones para describir y preguntar acerca de malestares y accidentes.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Expresar sugerencias de soluciones para aliviar malestares y enfermedades.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Identificar vocabulario para indicar atracciones turísticas en una ciudad.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para solicitar transporte público.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para indicar lugares en la ciudad y dentro de un edificio.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Expresar información para indicar cómo llegar a un lugar.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para describir un viaje de vacaciones.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Identificar expresiones que describen actividades típicas en un hotel.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario sobre para hablar sobre comida.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Emplear vocabulario y expresiones para indicar y preguntar sobre cantidades de comida.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para indicar los pasos en la preparación de la comida.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Identificar vocabulario en un menú y emplear expresiones para ordenar comida.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario y expresiones para hablar y preguntar sobre eventos importantes en la vida.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Emplear vocabulario para preguntar sobre acciones y eventos del pasado.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar vocabulario para indicar en un calendario cuándo ocurrieron eventos en el pasado .<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar expresiones de tiempo para describir eventos pasados.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Expresar objetivos y planes para el futuro cercano.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Emplear expresiones para indicar el momento de los objetivos y planes en el futuro cercano<br />
                                                                        </div>
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
                                                            <div class="accordion" id="accordionExampleLow">
                                                                <div class="accordion-item">
                                                                    <h2 class="accordion-header" id="headingOneLow">
                                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOneLow" aria-expanded="true" aria-controls="collapseOne">
                                                                            <h5><span class="text-primary me-2">Objetivos</span> Low Intermediate 1 (B1)</h5>
                                                                        </button>
                                                                    </h2>
                                                                    <div id="collapseOneLow" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExampleLow">
                                                                        <div class="accordion-body">
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp; Sostener de manera fluída una descripción de variados temas dentro de temas de interés personal presentándolo como una secuencia linear.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Iniciar y seguir sin preparación una conversación sobre temas cotidianos, expresando opinión personal e intercambiando información  sobre temas de interés personal o cotidianos como la familia, y actividades de tiempo libre.
 <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Seguir la conversación y volver a mencionar información sobre  tema de la conversación para confirmar comprensión mutua entre los interlocutores.
 <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Expresar opinión, creencia, acuerdo y desacuerdo.
 <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar medios de comunicación para entregar mensajes sobre rutinas como la organización de una reunión, y para obtener servicios básicos como la reserva de una habitación de hotel o una cita médica.
 <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar expresiones para requerir información detallada.
 <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Describir síntomas de forma simple y pedir consejo sobre el uso de servicios de salud.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Expresar consejo sobre temas simples de acuerdo a la experiencia personal.
 <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Lidiar con situaciones rutinarias en tiendas, oficinas, banco, etc. para hacer devolución de una adquisición insatisfactoria.
 <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Expresar quejas.
 <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Comparar y contrastar alternativas discutiendo qué hacer, dónde ir, con quién y qué elegir.
 <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Relatar el resumen de un texto y describir la reacción y preferencia.
 <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Responder al flujo de preguntas en una conversación y preguntar por clarificación o repetición.
 <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Relatar fluida y razonablemente una descripción como una secuencia linear.
 <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Comprender y seguir el argumento de una discusión cotidiana o un tema predecible.
 <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Descubrir y transmitir información factual.
 <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Expresar datos detallados acerca de experiencias describiendo sentimientos y reacciones.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Relatar detalles sobre ocurrencias impredecibles como, por ejemplo, un accidente. .<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Pedir y seguir instrucciones detalladas.<br />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="accordion-item">
                                                                    <h2 class="accordion-header" id="headingTwoLow">
                                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwoLow" aria-expanded="false" aria-controls="collapseTwo">
                                                                            <h5><span class="text-primary me-2">Objetivos</span>Low Intermediate 2 (B1+)</h5>
                                                                        </button>
                                                                    </h2>
                                                                    <div id="collapseTwoLow" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExampleLow">
                                                                        <div class="accordion-body">
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Explicar los puntos principales en una idea o problema con precisión razonable.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Expresar claramente sentimientos acerca de experiencias y dar razones para explicarlos.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Dar información sobre actividades no ruitnarias y rutinarias relacionadas con intereses personales en el campo profesional.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Intercambiar, revisar y confirmar información y explicar las razones de un problema.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Iniciar una conversación sobre temas cotidianos y mantenerla  haciendo preguntas relativamente espontáneas acerca de una experiencia o evento expresando reacción y opinión .<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Seguir el flujo de la conversación sobre temas generales.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Describir cómo se hace algo dando instrucciones detalladas.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Explicar la razón de un problema, discutir la solución comparando y contrastando alternativas.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Expresar pensamientos sobre temas abstractos relacionados con la cultura.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Desarrollar un argumento que puede ser comprendido por otros sin dificultad.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Expresar empatía e interés haciendo preguntas y repondienco a enfoques simples.   
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Transmitir los puntos principales desde textos largos escritos en lenguaje simple y sobre temas de interés personal con el fin de comprender el significado de las expresiones empleadas.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Preparar presentaciones sobre un tema familiar concetado al área de trabajo e indicar similitudes y diferencias entre, por ejemplo, productos, lugares, planes.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Dar razones para justificar un punto de vista.  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Resumir, reportar, y expresar la opinión acerca de información factual sobre actividades rutinarias y no rutinarias.  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Explicar la razón de un problema.  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Comentar y resumir las perspectivas de otros sobre información factual.  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Transmitir anuncios cortos sobre temas pertinentes a ocurrencias diarias a pesar de las variantes de acento y entonación.
   <br />
                                                                        </div>
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
                                                        <div class="col-md-12 mt-2" >
                                                            <div class="accordion" id="accordionExampleUpper">
                                                                <div class="accordion-item">
                                                                    <h2 class="accordion-header" id="headingOneUpper">
                                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOneUpper" aria-expanded="true" aria-controls="collapseOne">
                                                                            <h5><span class="text-primary me-2">Objetivos</span>Upper Intermediate 1 (B2)</h5>
                                                                        </button>
                                                                    </h2>
                                                                    <div id="collapseOneUpper" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExampleUpper">
                                                                        <div class="accordion-body">
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Transmitir diferentes grados de emoción y destacar el significado de eventos y experiencias personales.   
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Presentar y describir clara y detalladamente una variedad amplia de temas de interés personal con el apoyo de ideas, puntos secundarios y ejemplos relevantes.   
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Explicar un punto de vista sobre un tema expresando ventajas y desventajas en relación con varias opciones.   
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Destacar el significado personal de eventos y experiencias sosteniendo argunmentos y explicaciones relevantes.   
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Sostener una opinión, evaluar propuestas, y responder a hipótesis.   
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Participar activamente en discusiones de registro formal.   
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Describir calarmanete y con detalles la ejecución de un procedimiento.   
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Expresar opiniones incluyendo explicación , argumentos y comentarios relevantes.  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Participar activamente en discusiones de registro informal sobre temas cotidianos incluyendo puntos de vista, haciendo y respondiendo hipótesis, y evaluando alternativas propuestas.   
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Planear lo que se quiere decir y los medios para hacerlo considerando los efectos en el receptor.   
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Describir claramente un asunto de interés o problema especulando  acerca de las causas o consecuencias, y tomando en cuenta ventajas y desventajas desde enfoques diferentes.  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Desarrollar un argumento claro incluyendo ejemplos relevantes.   
                                                                            <br />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="accordion-item">
                                                                    <h2 class="accordion-header" id="headingTwoUpper">
                                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwoUpper" aria-expanded="false" aria-controls="collapseTwo">
                                                                            <h5><span class="text-primary me-2">Objetivos</span>Upper Intermediate 2 (B2)</h5>
                                                                        </button>
                                                                    </h2>
                                                                    <div id="collapseTwoUpper" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExampleUpper">
                                                                        <div class="accordion-body">
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Participar activamente en discusiones afirmando hechos y respondiendo opiniones sobre temas de interés común.  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Transmitir información detallada y argumentos como, por ejemplo, los puntos importantes en textos estructurados y complejos sobre temas de interés profesional, académico, y personal.  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Explicar un punto de vista incluyendo la opinión sobre ventajas y desventajas entre varias opciones.  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Intervenir apropiadamente en discusiones. 
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Preparar presentaciones claras para expresar razones de apoyo a o en contra un punto de vista en particular incluyendo ventajas y desventajas en relación con variadas opciones. 
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Redactar noticias y puntos de vista de otros. 
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Redactar descripciones detalladas sobre temas relacionados con intereses personales.  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Describir con detalles el significado de eventos y experiencias personales.  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Contribuir efectivamentes en el intercambio comunicativo  en grupos con un moderador de la discusión. 
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Transmitir diferentes grados de emoción destacando el significado personal de eventos y experiencias relacionadas con acontecimientos de interés general.  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Declarar requerimientos y hacer preguntas detalladas en relación con la entrega de servicios complejos. 
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Diferenciar entre opinión y hecho.  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Explicar claramente conceptos y procedimientos con base en la expresión de comparación y contraste.  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Participar de conversaciones extendidas en una amplia gama de temas general es a pesar de las interrupciones. 
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Recibir y reponder de forma escrita a información requerida  para un propósito en particular.<br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar medios de comunicación para variados propósitos personales y profesionales respondiendo a preguntas de clarificación por elocución o terminología.                                      
                                                                        </div>
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
                                                        <div class="col-md-12 mt-2" >
                                                            <div class="accordion" id="accordionExamplePreA">
                                                                <div class="accordion-item">
                                                                    <h2 class="accordion-header" id="headingOnePreA">
                                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOnePreA" aria-expanded="true" aria-controls="collapseOne">
                                                                            <h5><span class="text-primary me-2">Objetivos</span>Pre-Advanced (B2+)</h5>
                                                                        </button>
                                                                    </h2>
                                                                    <div id="collapseOnePreA" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExamplePreA">
                                                                        <div class="accordion-body">
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Identificar la idea principal y ejemplos en historias.  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar ejemplos para explicar una historia  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar pausas efectivamente.  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Escuchar explicaciones para palabras y conceptos específicos.  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Explicar palabras y conceptos específicos.  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Fomentar la participación de una audiencia.  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Hacer preguntas mientras se escucha la información  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Dar y explicar razones.  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Uso efectivo de lenguaje corporal  
                                                                            <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Analizar, predecir, interpretar, sintetizar y evaluar información.                                                                       
                                                                        </div>
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
                                                        <div class="col-md-12 mt-2" >
                                                            <div class="accordion" id="accordionExampleAdv">
                                                                <div class="accordion-item">
                                                                    <h2 class="accordion-header" id="headingOneAdv">
                                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOneAdv" aria-expanded="true" aria-controls="collapseOne">
                                                                            <h5><span class="text-primary me-2">Objetivos</span>Advanced (C1)</h5>
                                                                        </button>
                                                                    </h2>
                                                                    <div id="collapseOneAdv" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExampleAdv">
                                                                        <div class="accordion-body">
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Comprender y expresar causas y efectos.   <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Usar variaciones de ritmo del discurso.   <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Identificar y usar marcadores discursivos de alta y baja frecuencia.   <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Preguntar por y entregar información clara.   <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Reconocer el tono y las funciones lingüísticas de los hablantes.   <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Explicar procesos y organiar información en secuencias lógicas.   <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Comprender material con contenidos específicos   <br />
                                                                            <i class="fas fa-check" style="color: #22376c;"></i>&nbsp;Inferir, personalizar, analizar, sintetizar, y aplicar contenido e información. 
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

