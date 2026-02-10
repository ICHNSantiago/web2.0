<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web.cursos.kid.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Niños | Cursos de Inglés </title>
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
                                        <span class="display-6 text-dark">Curso de Inglés | <span class="text-primary">Niños Niñas </span></span>
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
                                            <tr runat="server" id="btn_comprar">
                                                <td>
                                                    <div class="d-grid gap-2">
                                                        <a href="Shop.aspx" class="btn btn-success btn-lg"><i class="fas fa-shopping-cart me-2"></i>Comprar Curso </a>
                                                        <%--<a href="https://diagnostico.norteamericano.cl/kid" target="_blank" class="btn btn-success btn-lg"><i class="fas fa-shopping-cart me-2"></i>Comprar Curso </a>--%>
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
                                            <a runat="server" id="tab1tab" data-bs-toggle="tab" href="#ContentPlaceHolder1_tab1" role="tab" aria-controls="tab1" aria-selected="true">Descripción</a>
                                        </li>
                                        <li class="nav-item">
                                            <a runat="server" id="tab2tab" visible="false" data-bs-toggle="tab" href="#ContentPlaceHolder1_tab2" role="tab" aria-controls="tab2" aria-selected="false">Summer School</a>
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
                                                    <h4>Descripción | <span class="text-primary">Curso para niños</span></h4>
                                                    <hr />
                                                </div>
                                                <div class="col-md-12">
                                                    <div style="text-align: justify">
                                                        Curso de Inglés para niños con énfasis en la comunicación y el uso de recursos léxicos de alta frecuencia. 
                                                         <br />
                                                        <br />
                                                        Los contenidos del curso están centrados en el desarrollo de habilidades linguísticas, lógicas, inter e intrapersonales,                                                          y kinestésicas. 
                                                         <br />
                                                        <br />
                                                        Las actividades están estructuradas para la adquisición temprana de habilidades de pensamiento como la deducción, y el orden de conceptos.
                                                         <br />
                                                        <br />
                                                        Tal integración del contenido para el desarrollo las competencias lingüísticas en este nivel incluye la consolidación de
                                                         los contenidos de los niveles iniciales, y la extensión el aprendizaje para lograr la producción del idioma de forma más 
                                                         natural e inteligible.                                       
                                                    </div>
                                                </div>
                                                <div class="col-md-12 mt-5">
                                                    <h4>Lo que <span class="text-primary">aprenderás</span></h4>
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
                                                        <p>¡Este verano aprovecha tu tiempo al máximo y lleva tu inglés al siguiente nivel con nuestro Summer School 2026! Durante enero y febrero, te ofrecemos un programa intensivo pensado especialmente para que niños puedan avanzar un nivel completo de inglés en tan solo un mes.</p>

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
                                                            <h5 class="text-dark"><span class="text-primary me-2">Curso de Inglés</span>Beginner </h5>
                                                        </button>
                                                    </h2>
                                                    <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">

                                                            <div class="row">
                                                                <div class="col-md-12 mt-2" style="text-align: justify">
                                                                    <p>
                                                                        Curso de Inglés para niños nivel inicial con énfasis en la comunicación y el uso de recursos léxicos de alta frecuencia. 
                                                                Los contenidos del curso están centrados en el desarrollo de habilidades linguísticas, lógicas, inter e intrapersonales, y kinestésicas.
                                                                        Las actividades están estructuradas para la adquisición temprana de habilidades de pensamiento como la deducción, y el orden de conceptos.
                                                           
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
                                                                                Identificar y decir colores y juegos
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Identificar y usar números de 1 a 10.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Reconocer e idnetificar artículos en una sala de clases.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Expresar opinión personal e identificar valores en una historia.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Identificar y responder a instrucciones en una sala de clases.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Identificar y usar vocabulario relacionado con partes del cuerpo.
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row text-center">
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Identificar la idea principal en una historia.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Practicar la pronunciación de diptongos.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Identificar y usar números 1 a 20.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Identificar y preguntar por el material de los objetos.
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="accordion-item mt-3 shadow">
                                                    <h2 class="accordion-header" id="headingTwo">
                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                            <h5 class="text-dark"><span class="text-primary me-2">Curso de Inglés</span>Elementary </h5>
                                                        </button>
                                                    </h2>
                                                    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">
                                                            <div class="row">
                                                                <div class="col-md-12 mt-2" style="text-align: justify">
                                                                    <p>
                                                                        Curso de Inglés para niños nivel inicial como un acercamiento al desarrollo de habilidades sociales, culturales, y cognitivas, transferibles a todas 
    las áreas curriculares acorde a la edad de los niños. Los contenidos del curso tienen foco en la adquisición de las competencias comunicativas de 
    forma sistemática. Las actividades están estructuradas de forma que el aprendizaje sea colaborativo y cooperativo entre pares.
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
                                                                                Reconocer e identificar lugares en una casa.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Identificar lugares de una casa desxe una historia.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Comprender y reflexionar sobre valores desde una historia.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Encontrar palabras clave para completar una historia.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Preguntar por y responder por libros favoritos.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Usar palabras clave para redactar oraciones simples.
                                                                            </div>
                                                                        </div>

                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Redactar oraciones simples sobre el lugar se vive.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Responder cuestionarios sobre el uso de computadores.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Hacer y responder preguntas sobre el uso de Internet.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Producir y diferenciar los sonidos /eɪ/ y /ɔ/
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Producir y diferenciar los sonidos /ɪ/ y /ɑɪ/
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Producir y diferenciar los sonidos /ɪ/ e /i/.
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="accordion-item mt-3 shadow">
                                                    <h2 class="accordion-header" id="headingThree">
                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                            <h5 class="text-dark"><span class="text-primary me-2">Curso de Inglés</span>Pre Intermediate </h5>
                                                        </button>
                                                    </h2>
                                                    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">
                                                            <div class="row">
                                                                <div class="col-md-12 mt-2" style="text-align: justify">
                                                                    <p>
                                                                        Curso de Inglés para niños nivel pre-intermedio con énfasis en actividades de resolución de problemas, conocimiento digital y comprensión de la sociedad. Los contenidos están estructurados con base en el vocabulario en primer lugar para la producción de estructuras gramaticales y competencias relacionadas con el aprendizaje integrado de contenido/idioma (CLIL). Las actividades aportan a la conciencia de la cultura con ejecución de proyectos para el aprendizaje integrado de los niños para consolidar el conocimiento a través de este nivel.
                                      
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
                                                                                Escuchar conversaciones simples y recoger información específica.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Comprender textos publicitarios.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Expresar opinión personal.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Identificar frases en una historia.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Comprender información gramatical.
                                                                            </div>
                                                                        </div>

                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Expresar opinión y hacer preguntas sobre artículos que usan otras personas.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Comprender e identificar los hábitos de compras en Estados Unidos
                                                                            </div>
                                                                        </div>
                                                                        <%-- fff--%>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Hablar sobre los hábitos de un buen y mal ciclista.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Hablar sobre tipos de ejercicios.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Nombrar y describir animales.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Producir el sonido /ə/
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Nombrar y describir profesiones.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Hablar acerca de la música.
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="accordion-item mt-3 shadow">
                                                    <h2 class="accordion-header" id="heading4">
                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse4" aria-expanded="false" aria-controls="collapseThree">
                                                            <h5 class="text-dark"><span class="text-primary me-2">Curso de Inglés</span>Low Intermediate </h5>
                                                        </button>
                                                    </h2>
                                                    <div id="collapse4" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">
                                                            <div class="row">
                                                                <div class="col-md-12 mt-2" style="text-align: justify">
                                                                    <p>
                                                                        Curso de Inglés nivel intermedio bajo 1 para niños. El curso desarrolla las habilidades lingüísticas de los alumnos de forma sistemática y comprensiva. Los contenidos están estructurados para permitir a los alumnos identificar diferentes funciones del idioma adaptado a contextos e intenciones del comunicador. A través de las actividades, la exposición al idioma posibilita el uso de expresiones para crear, argumentar, y explicar ideas.
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
                                                                                Identificar el acento en sílabas.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Diferenciar y pronunciar sílabas.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Reflexionar y hablar sobre lo que se considera fácil y difícil de aprender en Inglés
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Escuchar y leers sobre diferencias y similitudes entre los idiomas.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Preparar y escribir un proyecto.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Leer un sitio web.
                                                                            </div>
                                                                        </div>
                                                                        <%--   low 2--%>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Identificar partes del discurso
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Explorar cómo tomar y componer una fotografía.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Hablar sobre emociones y sentimientos.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Identificar diferencias y similitudes entre los amigos.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                omprender y describir el carácter de otros.
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 mb-3">
                                                                            <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                                Hablar sobre viajes y exploradores.
                                                                            </div>
                                                                        </div>
                                                                    </div>
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
                                                                    <p>
                                                                        Curso de inglés nivel pre-avanzado para niños. Las actividades están diseñadas para darle a los alumnos la oportunidad constante de pensar y discutir temas desde textos escritos, y para el desarrollo de habilidades sintácticas y de la mecánica de la esctritura. Los alumnos en este nivel están expuestos a un enfoque inductivo simplificado en torno a la gramática, el vocabulario, y las habilidades auditivas, escritas, de lectura, y orales en contextos concretos. El vocabulario se adquiere desde el descubrimiento de nuevos conceptos para la apreciación y retención del nuevo conocimiento en el idioma.
                                    
                                                                    </p>
                                                                    <hr />
                                                                </div>
                                                                <div class="col-md-12 mt-2">
                                                                    <div class="row text-center">

                                                                        <div class="col-md-12 text-start mb-3">
                                                                            <h3><span class="text-primary me-2">Objetivos</span>del curso </h3>
                                                                        </div>

                                                                        div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Identificar vocabulario para describir acciones para la supervivencia.
                                                                    </div>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                            Comprender la importancia del trabajo en equipo para sobrevivir en el exterior.
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-6 mb-3">
                                                                        <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                            Expresar razones, estar en desacuerdo y tomar decisiones en grupo.
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                            Hablar sobre las habilidades de supervivencia y el manejo de emergencias.
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-6 mb-3">
                                                                        <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                            Comprender la importancia de cuidar el agua.
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                            Identificar vocabulario sobre el medio ambiente.
                                                                        </div>
                                                                    </div>

                                                                    <%--  pre 2--%>

                                                                    <div class="col-md-6 mb-3">
                                                                        <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                            Identificar inferencias desde un texto.
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                            dentificar vocabulario rlacionado con el cine
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-6 mb-3">
                                                                        <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                            Usar expresiones para recomendar una película.
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                            dentificar causas y efectos.
                                                                        </div>
                                                                    </div>
                                                                </div>
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
                                                                <p>
                                                                    Curso de inglés nivel avanzado para niños. Los niveles avanzados 1 y 2 son la consolidación de los contenidos del programa de niños. La presentación de los contenidos y actividades tienen una estructura con base en la practicalidad para el desarrollo de competencias comunicativas a través de juegos y proyectos individuales y colaborativos.
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
                                                                            Usar preguntas retóricas para crear interés en la conversación.
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                            Demostrar interés y responder a lo que se escucha en la conversación.
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                            Producir y diferenciar acentuación de primera y segunda sílaba.
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                            Identificar la entonación en preguntas polares incompletas.
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                            Conectar el discurso; uinión con /r/ de vocal-consonante.
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                            Identificar la elisión del sonido /t/
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                            Identificar el sonido /w/ intrusivo.
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                            Usar expresiones para pedir ayuda.
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
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
                                                            <div class="alert bg-white mt-3">
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
                                                            <div class="alert bg-white mt-3">
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
                                                            <div class="alert bg-white mt-3">
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
                                                            <div class="alert bg-white mt-3">
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
                                    <img src="../../img/programas/kids.jpg" class="img-fluid rounded w-100" alt="">
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
                                        <a href="../../Contact.aspx?programa=kid" class="btn btn-primary">Contáctenos </a>
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
                                    <td class="text-end text-muted">7 a 11 Años
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fas fa-clock me-2 text-primary"></i>Duración
                                    </td>
                                    <td class="text-end text-muted">4 meses
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

