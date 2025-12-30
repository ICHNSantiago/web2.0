<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web.cursos.adults.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Adultos  | Cursos de Inglés </title>
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
                                        <span class="display-6 text-dark">Curso de Inglés | <span class="text-primary">Adultos </span></span>
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

                <div class="col-md-9">
                    <div class="bg-light rounded">
                        <div class="alert">
                            <div class="row">
                                <div class="col-md-12">
                                    <ul class="nav nav-tabs card-header-tabs flex-column flex-sm-row bg-light" id="myTab" role="tablist">
                                        <li class="nav-item">
                                            <a  runat="server" id="tab1tab" data-bs-toggle="tab"  href="#ContentPlaceHolder1_tab1" role="tab" aria-controls="tab1" aria-selected="true">Descripción</a>
                                        </li>
                                        <li class="nav-item">
                                            <a  runat="server" id="tab2tab" data-bs-toggle="tab" href="#ContentPlaceHolder1_tab2" role="tab" aria-controls="tab2" aria-selected="false">Summer School</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="tab4-tab" data-bs-toggle="tab" href="#tab3" role="tab" aria-controls="tab3" aria-selected="false">Niveles</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="tab5-tab" data-bs-toggle="tab" href="#tab4" role="tab" aria-controls="tab4" aria-selected="false">Horarios</a>
                                        </li>
                                    </ul>

                                    <div class="tab-content" id="myTabContent">
                                        <div class="" runat="server" id="tab1" role="tabpanel" aria-labelledby="tab1-tab">
                                            <div class="row mt-5  mb-5 text-dark">
                                                <div class="col-md-12">
                                                    <h4>Descripción | <span class="text-primary">Curso para Adultos</span></h4>
                                                    <hr />
                                                </div>
                                                <div class="col-md-12">
                                                    <div style="text-align: justify">
                                                        Curso de Inglés para adultos esta diseñado para aplicar vocabulario y expresiones para soluciones comunicativas prácticas y 
                                            para el uso funcional de expresiones de presentación, saludo y despedida; entrega de datos propios, 
                                            de otras personas, de lugares, actividades e instrucciones; e intercambio de ideas e información en 
                                            tiempo real en situaciones contextualizadas a través del uso interactivo de las competencias comunicativas
                                            de los participantes como muestra del cumplimiento de los objetivos.
                                                        <br />
                                                        <br />
                                                        El desarrollo de la habilidades comprende la interacción 
                                                entre pares para presentarse y presentar a otros, responder y hacer preguntas sobre detalles personales, 
                                                como por ejemplo, donde viven, gente que conocen, cosas que poseen. La adquisición de los contenidos 
                                                permiten interactuar de manera simple.
                                                        <br />
                                                        <br />
                                                        Las actividades del curso permiten la comprensión del significado 
                                                y el uso de las formas en la comunicación controlada para el estímulo sistemático del lenguaje como tal; esto incluye 
                                                vocabulario, sintaxis, estrategias conversacionales y discursivas, comprensión auditiva, pronunciación (prescriptiva y descriptiva),
                                                    </div>
                                                </div>
                                                <div class="col-md-12 mt-5">
                                                    <h4>Lo que <span class="text-primary">aprenderás</span></h4>
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
                                                            <td>Usar vocabulario para indicar acciones a través de oraciones cortas.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Usar vocabulario para indicar acciones a través de oraciones cortas.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Emplear expresiones para hablar sobre rutinas diarias.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Expresar información para indicar cómo llegar a un lugar.</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-bookmark text-primary"></i></td>
                                                            <td>Identificar expresiones que describen actividades típicas en un hotel.</td>
                                                        </tr>

                                                    </table>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="" runat="server" id="tab2" role="tabpanel" aria-labelledby="tab2-tab">
                                            <div class="row mt-5 text-dark">

                                                <div class="col-md-3">
                                                    <img src="../../img/summer2026.png" class="img-fluid rounded w-100" alt="">
                                                </div>
                                                <div class="col-md-9">
                                                    <div class="mt-5">
                                                        <h2><span class="text-primary">2026</span> | <span><i class="fas fa-sun me-2 text-warning"></i>Summer School <i class="ms-2 text-success fas fa-umbrella-beach"></i></span></h2>
                                                        <hr />
                                                        <p>¡Este verano aprovecha tu tiempo al máximo y lleva tu inglés al siguiente nivel con nuestro Summer School 2026! Durante enero y febrero, te ofrecemos un programa intensivo pensado especialmente para que adultos puedan avanzar un nivel completo de inglés en tan solo un mes.</p>

                                                    </div>
                                                </div>

                                                <div class="col-md-12 mt-4">
                                                    <h4>¿Qué encontrarás en nuestro <span class="text-primary">Summer School?</span></h4>
                                                    <hr />

                                                    <table class="table tabke-sm text-dark table-borderless">
                                                        <tr>
                                                            <td>Clases de lunes a jueves, en modalidad presencial u online, para que elijas lo que más te acomode.
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Un programa adaptado a las necesidades del idioma de hoy en día.
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Los participantes desarrollan las 4 habilidades del idioma a través de actividades colaborativas, comunicativas y centradas en el uso real del inglés.</td>
                                                        </tr>
                                                    </table>
                                                </div>

                                                <div class="col-md-12 mt-2">

                                                    <h4>Fechas<span class="text-primary ms-1">importantes:</span></h4>
                                                    <hr />

                                                    <table class="table  text-dark table-borderless">
                                                        <tr>
                                                            <th>Enero</th>
                                                            <td>Lunes 05 de enero de 2026</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Febrero</th>
                                                            <td>Lunes 02 de Febrero de 2026.</td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <hr />
                                                <div class="col-md-12 text-center mt-2 mb-5">
                                                    <h5>Con el Summer School del Chileno Norteamericano, no solo aprovechas tus vacaciones para aprender: también das un paso adelante en tu camino con el inglés y llegas más preparado al nuevo año académico.</h5>
                                                    <br />
                                                    <h2>¡Inscríbete, vive una experiencia única este verano y sube un peldaño más en tu inglés!</h2>
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
                                                                    <span class="text-end text-dark">Nivel CEFR: A1</span>
                                                                    <hr />

                                                                    Curso de inglés para aplicar vocabulario y expresiones para soluciones comunicativas prácticas y para el uso funcional de expresiones de presentación, saludo y despedida; entrega de datos propios, 
                                                                     de otras personas, de lugares, actividades e instrucciones; e intercambio de ideas e información en tiempo real en situaciones contextualizadas a través del uso interactivo de las competencias comunicativasde los participantes como muestra del cumplimiento de los objetivos.
                                                                    <hr />
                                                                </div>
                                                                <div class="col-md-12 text-start">
                                                                    <h5>Objetivos</h5>
                                                                    <hr />
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Preguntar por y describir la posición de los objetos en una habitación.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Informar una actividad de trabajo de acuerdo con la fecha y hora en la que ocurre.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Identificar acciones según instrucciones sobre cómo ir de un lugar a otro.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Describir las características del clima de acuerdo con factores determinantes de las clases del ambiente.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Identificar prendas de vestir de acuerdo con el clima de las estaciones del año.
                                                                    </p>

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
                                                                    <span class="text-end text-dark">Nivel CEFR: A2</span>
                                                                    <hr />

                                                                    <p style="text-align: justify;">
                                                                        Curso de Inglés elemental para la comprensión y el uso de expresiones en contextos familiares que 
                                                                              apunten a satisfacer necesidades de tipo concreto. El desarrollo de la habilidades comprende la interacción 
                                                                              entre pares para presentarse y presentar a otros, responder y hacer preguntas sobre detalles personales, 
                                                                              como por ejemplo, donde viven, gente que conocen, cosas que poseen. La adquisición de los contenidos 
                                                                              permiten interactuar de manera simple.
                                                                    </p>
                                                                    <hr />
                                                                </div>
                                                                <div class="col-md-12 text-start">
                                                                    <h5>Objetivos</h5>
                                                                    <hr />
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Emplear expresiones para hablar sobre rutinas diarias.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Usar vocabulario para indicar partes del cuerpo.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Emplear expresiones para describir y preguntar acerca de malestares y accidentes.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Expresar sugerencias de soluciones para aliviar malestares y enfermedades.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Identificar vocabulario para indicar atracciones turísticas en una ciudad.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Usar vocabulario para solicitar transporte público.
                                                                    </p>

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
                                                                    <span class="text-end text-dark">Nivel CEFR: A2+</span>
                                                                    <hr />

                                                                    <p style="text-align: justify;">
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
                                                                <div class="col-md-12 text-start">
                                                                    <h5>Objetivos</h5>
                                                                    <hr />

                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Expresar preferecncia sobre comidas.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Hablar sobre artículos de regalo.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Hablar sobre eventos pasados.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Hablar sobre un viaje.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Identificar el tema de conversación.
                                                                    </p>


                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="accordion-item mt-3 shadow">
                                                    <h2 class="accordion-header" id="heading4">
                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse4" aria-expanded="false" aria-controls="collapseThree">
                                                            <h5 class="text-dark"><span class="text-primary me-2">Curso de Inglés</span>Low Intermediate</h5>
                                                        </button>
                                                    </h2>
                                                    <div id="collapse4" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">
                                                            <div class="row">
                                                                <div class="col-md-12 mt-2" style="text-align: justify">
                                                                    <span class="text-end text-dark">Nivel CEFR: B1</span>
                                                                    <hr />

                                                                    <p style="text-align: justify;">
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
                                                                <div class="col-md-12 text-start">
                                                                    <h5>Objetivos</h5>
                                                                    <hr />

                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Explicar los puntos principales en una idea o problema con precisión razonable.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Expresar claramente sentimientos acerca de experiencias y dar razones para explicarlos.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Dar información sobre actividades no ruitnarias y rutinarias relacionadas con intereses personales en el campo profesional.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Intercambiar, revisar y confirmar información y explicar las razones de un problema.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Iniciar una conversación sobre temas cotidianos y mantenerla  haciendo preguntas relativamente espontáneas acerca de una experiencia o evento expresando reacción y opinión .
                                        
                                                                    </p>


                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="accordion-item mt-3 shadow">
                                                    <h2 class="accordion-header" id="heading5">
                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse5" aria-expanded="false" aria-controls="collapseThree">
                                                            <h5 class="text-dark"><span class="text-primary me-2">Curso de Inglés</span>Upper Intermediate</h5>
                                                        </button>
                                                    </h2>
                                                    <div id="collapse5" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">
                                                            <div class="row">
                                                                <div class="col-md-12 mt-2" style="text-align: justify">
                                                                    <span class="text-end text-dark">Nivel CEFR: B2</span>
                                                                    <hr />

                                                                    <p style="text-align: justify;">
                                                                        Curso de Inglés nivel intermedio alto para adultos. Los contenidos están estructurados para el desarrollo de las habilidades 
                                                                         con significativa e inmediata retroalimentación para la gramática remedial. Incluye, además, la práctica de elocución variada. 
                                                                         El vocabulario se contextualiza en temas de interés general, y cubre las necesidades para adquirir competencias lingüísticas 
                                                                         de acercamiento a los niveles avanzados. Desde este nivel (Upper-Intermediate 2), los alumnos pueden optar a curso de preparación 
                                                                         de examen internacional TOEFL (Test of English as a Foreign Language) para obtener un resultado promedio de 80 puntos. 
                                                                    </p>
                                                                    <hr />
                                                                </div>
                                                                <div class="col-md-12 text-start">
                                                                    <h5>Objetivos</h5>
                                                                    <hr />

                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Participar activamente en discusiones afirmando hechos y respondiendo opiniones sobre temas de interés común. 
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Transmitir información detallada y argumentos como, por ejemplo, los puntos importantes en textos estructurados y complejos sobre temas de interés profesional, académico, y personal. 
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Explicar un punto de vista incluyendo la opinión sobre ventajas y desventajas entre varias opciones. 
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Intervenir apropiadamente en discusiones.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Preparar presentaciones claras para expresar razones de apoyo a o en contra un punto de vista en particular incluyendo ventajas y desventajas en relación con variadas opciones.
                                                                    </p>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="accordion-item mt-3 shadow">
                                                    <h2 class="accordion-header" id="heading6">
                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse6" aria-expanded="false" aria-controls="collapseThree">
                                                            <h5 class="text-dark"><span class="text-primary me-2">Curso de Inglés</span>Pre Advanced</h5>
                                                        </button>
                                                    </h2>
                                                    <div id="collapse6" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">
                                                            <div class="row">
                                                                <div class="col-md-12 mt-2" style="text-align: justify">
                                                                    <span class="text-end text-dark">Nivel CEFR: B2+</span>
                                                                    <hr />

                                                                    <p style="text-align: justify;">
                                                                        Curso de inglés nivel pre-avanzado para adultos con énfasis en el desarrollo de competencias lingüísticas asociadas al pensamiento crítico
                                                y la entrega de información en presentaciones en contextos académicos. Las actividades están estructuradas para el uso práctico del idioma 
                                                a través de modelos auténticos de comunicación efectiva. Desde este nivel (pre-advanced 2), los alumnos pueden optar a curso de preparación
                                                TOEFL para obtener un resultado promedio de 90 puntos.
                                                                    </p>
                                                                    <hr />
                                                                </div>
                                                                <div class="col-md-12 text-start">
                                                                    <h5>Objetivos</h5>
                                                                    <hr />

                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Identificar la idea principal y ejemplos en historias.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Usar ejemplos para explicar una historia
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Usar pausas efectivamente.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Escuchar explicaciones para palabras y conceptos específicos.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Explicar palabras y conceptos específicos.
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="accordion-item mt-3 shadow">
                                                    <h2 class="accordion-header" id="heading7">
                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse7" aria-expanded="false" aria-controls="collapseThree">
                                                            <h5 class="text-dark"><span class="text-primary me-2">Curso de Inglés</span>Advanced</h5>
                                                        </button>
                                                    </h2>
                                                    <div id="collapse7" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">
                                                            <div class="row">
                                                                <div class="col-md-12 mt-2" style="text-align: justify">
                                                                    <span class="text-end text-dark">Nivel CEFR: C1</span>
                                                                    <hr />

                                                                    <p style="text-align: justify;">
                                                                        Curso de inglés nivel avanzado para adultos. La estructura del curso tiene base en las funciones académicas del 
                                                                           idioma para potenciar los conocimientos en contextos interdisciplinarios. Desde este nivel (Advanced 2), los alumnos 
                                                                           pueden optar a curso de preparación TOEFL con un resultado promedio desde 95 puntos.
                                                                    </p>
                                                                    <hr />
                                                                </div>
                                                                <div class="col-md-12 text-start">
                                                                    <h5>Objetivos</h5>
                                                                    <hr />
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Comprender y expresar causas y efectos.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Usar variaciones de ritmo del discurso.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Identificar y usar marcadores discursivos de alta y baja frecuencia.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Preguntar por y entregar información clara.
                                                                    </p>
                                                                    <p style="text-align: justify;">
                                                                        <i class="fas fa-angle-right me-3 text-primary"></i>Reconocer el tono y las funciones lingüísticas de los hablantes.
                                                                    </p>

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
                                                            <div class="alert bg-white  mt-3">
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
                                                                    <div class="col-md-12 mt-5">
                                                                        <small>* Para más opciones de inicio comunícate con nuestros ejecutivos </small>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tab-pane fade  " id="tabP" role="tabpanel" aria-labelledby="tab1-tab">
                                                            <div class="alert bg-white  mt-3">
                                                                <div class="row" runat="server" id="div_p">
                                                                    <div class="col-md-12">
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
                                                                    <div class="col-md-12 mt-5">
                                                                        <small>* Para más opciones de inicio comunícate con nuestros ejecutivos </small>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tab-pane fade  " id="tabF" role="tabpanel" aria-labelledby="tab1-tab">
                                                            <div class="alert bg-white  mt-3">
                                                                <div class="row" runat="server" id="div_f">
                                                                    <div class="col-md-12">
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
                                                                    <div class="col-md-12 mt-5">
                                                                        <small>* Para más opciones de inicio comunícate con nuestros ejecutivos </small>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tab-pane fade  " id="tabO" role="tabpanel" aria-labelledby="tab1-tab">
                                                            <div class="alert bg-white  mt-3">
                                                                <div class="row" runat="server" id="div_o">
                                                                    <div class="col-md-12">
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
                                                                    <div class="col-md-12 mt-5">
                                                                        <small>* Para más opciones de inicio comunícate con nuestros ejecutivos </small>
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
                                    <img src="../../img/programas/adulto.jpg" class="img-fluid rounded w-100" alt="">
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
                                        <a href="Shop.aspx" class="btn btn-success">Comprar Curso </a>
                                    </div>
                                </div>
                                <div class="col-md-12 mt-3">
                                    <div class="d-grid gap-2">
                                        <a href="../../Contact.aspx?programa=Adultos" class="btn btn-primary">Contáctenos </a>
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
                                    <td class="text-end text-muted">Desde 17 Años
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fas fa-clock me-2 text-primary"></i>Duración
                                    </td>
                                    <td class="text-end text-muted">2 o 4 meses
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

 




    <script type="text/javascript">
        function ShowTabSummer() {
           $('#myTab a[href="#tab2"]').tab('show');

           
        }
    </script>
    <!-- About End -->
</asp:Content>

