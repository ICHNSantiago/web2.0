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
            <div class="row g-3">
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
                            <ul class="nav nav-tabs card-header-tabs flex-column flex-sm-row" id="myTab" role="tablist" style="font-size: 20px;">
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
                                        <div class="col-md-3">
                                            <ul class="nav nav-tabs card-header-tabs flex-column bg-primary rounded" id="myTabPrograma"
                                                role="tablist">
                                                <li class="nav-item">
                                                    <a class="nav-link active " id="tab1-Beginner" data-bs-toggle="tab" href="#tabBeginner" role="tab" aria-controls="tab1" aria-selected="true">Beginner</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link " id="tab2-Elementary" data-bs-toggle="tab" href="#tabElementary" role="tab" aria-controls="tab2" aria-selected="false">Elementary</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link " id="tab2-PreIntermediate" data-bs-toggle="tab" href="#tabPreIntermediate" role="tab" aria-controls="tab2" aria-selected="false">Pre Intermediate</a>
                                                </li>

                                                <li class="nav-item">
                                                    <a class="nav-link " id="tab2-LowIntermediate" data-bs-toggle="tab" href="#tabLowIntermediate" role="tab" aria-controls="tab2" aria-selected="false">Low Intermediate</a>
                                                </li>

                                                <li class="nav-item">
                                                    <a class="nav-link " id="tab2-UpperIntermediate" data-bs-toggle="tab" href="#tabUpperIntermediate" role="tab" aria-controls="tab2" aria-selected="false">Upper Intermediate</a>
                                                </li>

                                                <li class="nav-item">
                                                    <a class="nav-link " id="tab2-PreAdvanced" data-bs-toggle="tab" href="#tabPreAdvanced" role="tab" aria-controls="tab2" aria-selected="false">Pre Advanced</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link " id="tab2-Advanced" data-bs-toggle="tab" href="#tabAdvanced" role="tab" aria-controls="tab2" aria-selected="false">Advanced</a>
                                                </li>
                                            </ul>
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
                                                                Curso de Inglés nivel inicial para adolescentes diseñado para alumnos sin contacto con contextos de habla inglesa, donde la exposición primera 
                                                             al idioma es la oportunidad para practicar en la sala de clases. De esta forma, las actividades de interacción completamente en inglés son el 
                                                             primer modelo y guía para convertirse en eventuales hablantes de este idioma. Los contenidos del curso incluyen la familiarización con el 
                                                             lenguaje en sí para el desarrollo de competencias lingüísticas que requieren la reflexión sobre las habilidades comunicativas ya adquiridas y 
                                                             transversales al currículum escolar.
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
                                                                        Comprender instrucciones básicas y ser parte de una conversación básica sobre un tema predecible.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Hacer preguntas de naturaleza factual y comprender respuestas en lenguage simple.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comprender instrucciones básicas con base en información acerca de hora de clases, fechas, números de sala, y tareas.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comprender textos de audio en bsuca de información específica.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Participar de conversaciones cortas con base en un modelo con información cotidiana.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comprender noticias simples, instrucciones o información en aeropuertos, tiendas y menús.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comprender instrucciones simples sobre medicamentos y sobre cómo llegar a un lugar.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comprender textos simplificados y artículos cortos con información predecible.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Reconocer y asociar cognados.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Usar conocimiento previo para comprender o representar información.
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
                                                                Curso de Inglés nivel elemental para dolescentes estructurado específicamente para la práctica de cuatro habilidades en contextos variados y contextualizados. 
                                                                 Provee un  ambiente mejorado  de aprendizaje para estudiantes que ya cuentan de la instrucción en el idioma como parte del curriculum escolar y requieren de un programa 
                                                                 que desarrolle sus habilidades comunicativas. Entrega, además, las herramientas necesarias para operar en ambientes de habla inglesa. 
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
                                                                        Comprender instrucciones básicas o ser parte de una conversación factual sobre un tema predecible.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Hacer preguntas simples de naturaleza factual y comprender respuestas expresadas en lenguaje simple.
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Iniciar una conversación con base en modelos de información familiar.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comprender textos de audio con información específica simple.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comprender instrucciones básicas sobre horarios, fechas, números, y sobre tareas que se deben completar.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comprender noticias, instrucciones, información en lugares públicos como aeropuertos y tiendas, en trípticos y en menús.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comprender instrucciones simples sobre medicamentos, y direcciones para lllegar a lugares.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Leer y comprender textos simplifciados y artículos que contienen información predecible.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Reconocer cognados y hacer asociaciones.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Usar conocimiento previo para comprender o representar información.
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
                                                                Curso de inglés nivel pre-intermedio para adolescentes con contenidos estructurados para el desarrollo del vocabulario en ejercicios e interacción controlados; 
                                                                 con práctica de habilidades para la comprensión y preparación de pruebas estandarizadas. Con exposición a la producción activa del idioma, el nivel pre-intermedio
                                                                 consolida las comptencias adquiridas en los dos niveles anteriores como primer acercamiento a las funciones metalingüísticas del inglés.
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
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Escuchar información en relación con temas familiares y completar diagramas.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar gusto y disgusto en contextos cotidianoes usando lenguaje simple.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Entregar información simple sobre direcciones.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar y preguntar por información personal y sobre otras personas.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Describir objetos de uso cotidiano.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comprender información familiar directa sobre productos, señaléticas, textos o reportes.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comprender información en etiquetas de comida, menús, señales de tránsito, y mensajes en dispositivos.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comprender el significado general de un texto, artículo o libro simple.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comprender textos cortos de dos párrafos para encontrar información concreta.
                                                                    </div>
                                                                </div>
                                                                <%--  <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comprender y leer gráficos simples.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Identificar el progreso de tareas.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Identificar vocabulario desde el contexto, e identificar el contexto a través del vocabulario.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar entendimiento y pedir clarificación.
                                                                    </div>
                                                                </div>--%>
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
                                                                Curso de Inglés intermedio bajo para adolescentes con base en el desarrollo de habilidades para la comprensión textos apropiados para el nivel, 
 comprensión de información, interpretación, e inferencia. Los contenidos de este nivel permiten a los estudantes trabajar en competencias para el 
 uso del idioma en la creación de relatos, explicación de situaciones, y expresión de necesidades y opiniones. El desarrollo de la escritura tiene relación 
 con los elementos necesarios para crear textos para propósitos académicos y el empleo de estrategias metacognitivas.  
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
                                                                        Comprender conversaciones para la extracción de información específica.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comprender textos sobre temas cotidianos y crear diagramas con la información extraída.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Identificar el tema principal en textos de audio.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar rquerimientos simples en contextos familiares.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar gustos y disgustos en contextios familiares usando lenguaje simple.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar opiniones simples con argumentos de acuerdo y desacuerdo.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar información propia y pedir información sobre otros.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Describir objetos cotidianos.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar ofrecimientos y hacer requerimientos.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Desarrollar y dirigir encuestas sobre temas cotidianos.
                                                                    </div>
                                                                </div>
                                                                <%--  <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comprender el significado general de un texto, libro, o arrtículo simple a un ritmo bajo de lectura.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comprender textos de 2 a 3 párrafos para extraer información concreta.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comprender historias y responder preguntas de información.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Crear formularios relacionados con información personal.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Crear textos elacionados con información personal.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Crear textos narrativos y descriptivos.
                                                                    </div>
                                                                </div>--%>
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
                                                                Curso de inglés nivel intermedio alto para adolescentes. Los contenidos se estructuran con base en un enfoque inductivo para la comprensión de la gramática comunicativa. 
 El vocabulario es reforzado en conjunto con la pronunciación y elocución desde variantes diferentes para situar el idioma en contextos naturales del habla. 
 En este nivel, los alumnos adquieren competencias que les permiten autoevaluar su progreso de manera eficiente.
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
                                                                        Usar expresiones para ofrecer ayuda.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Preguntar por y dar direcciones.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Discutir decisiones.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        usar expresiones para dejar y recibir mensajes.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Pedir y estar de acuerdo con un favor.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Hacer y aceptar invitaciones.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comprender instrucciones básicas y mensajes desde, por ejemplo, un catálogo digital de biblioteca.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comprender un texto y opinar sobre él.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Tomar notas y hacer listas con información previa a la práctica de comprensión auditiva.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Redactar artículos sobre temas relacionados con la experiencia personal y expresar opinión sobre ellos.
                                                                    </div>
                                                                </div>
                                                                <%-- <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Redactar textos cortos de registro informal sobre temas cotidianos.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Redactar un texto corto de registro formal.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Identificar vocabulario según contexto, e identificar contexto según vocabulario.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Formular reglas propias relacionadas con la adquisión del idioma con base en ejemplos de uso.
                                                                    </div>
                                                                </div>--%>
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
                                                                Curso de inglés nivel pre-avanzado para adolescentes. En el primer acercamiento a niveles avanzados, los contenidos son estructurados para consolidar y adquirir nuevos elementos sintácticos con base en un modelo comunicativos con valor en la practicalidad. Se suma el desarrollo de competencias lingüísticas de tipo discursivo y conversacional. 
                                 
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
                                                                        Describir películas y géneros del cine.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Discutir tipos de accidentes.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar preocupación por otras personas.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Hablar sobre eventos climatológicos y eventos relacionados con el clima.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Discutir estrategias de preparación para clima severo.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Discutir formas de mantenerse a salvo.
                                                                    </div>
                                                                </div>
                                                                <%--<div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar gusto musical.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comparar y contrastar gustos musicales.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Pedir y dar opinión.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar halago.
                                                                    </div>
                                                                </div>--%>
                                                            </div>

                                                            <div class="row text-center">
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Presentarse y presentar a otros entregando información específica.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Hacer sugerencias sobre actividades.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Describir y comparar hábitos propios.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comparar características de la personalidad en el pasado y el presente.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Preguntar acerca de y reaccionar a las esperiencias de otros.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar preocupación.
                                                                    </div>
                                                                </div>
                                                                <%-- <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Ofrecer disculpas y dar razones por incumplimiento.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Usar expresiones de alta frecuencia para aceptar disculpas.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Reconocer puntos de vista.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Identificar detalles de apoyo para comprender el significado de un contexto global en textos escritos.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Identificar la idea principal en textos escritos.
                                                                    </div>
                                                                </div>--%>
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
                                                                Curso de inglés nivel avanzado  para adolescentes. Una aproximación a los niveles de conversación; este nivel es la consolidación del contenido morfosintáctico del 
                                                                     programa de adolescentes. Las actividades están diseñadas para asignar significado a las formas del idioma sin necesariamente recurrir al contenido general,
                                                                     y sin la preocupación por la longitud de los diferentes tipos de texto, o de los actos y eventos de habla. El desarrollo de las competencias lingüísticas en este nivel 
                                                                     permiten a los alumnos la comprensión en situaciones naturales en las que se habla el idioma en relación con temas de interés peronal y común. Además, permiten la comprensión 
                                                                     y el uso de funciones morfosemánticas para la expresión de opinión, razón, y explicación de hechos.
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
                                                                        Identificar y adaptarse a reglas.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Reconocer y asociar características del comportamiento de otros
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar incredulidad.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 sadow" style="min-height: 80px;">
                                                                        Expresar arrepentimiento con base en lo que no se ha hecho o dicho.
                                                                    </div>
                                                                </div>
                                                                <%-- <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar insistencia de forma enfática.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Hacer sugerencias.
                                                                    </div>
                                                                </div>      --%>
                                                            </div>

                                                            <div class="row text-center">
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Hablar sobre deportes y los límites del cuerpo y la mente.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Mostrar interés y agregar énfasis en la conversación.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Hablar sobre la ayuda humanitaria y la colaboración colectiva en medios digitales.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar sugerencia, acuerdo y desacuerdo.
                                                                    </div>
                                                                </div>
                                                                <%-- <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Describir eventos que ocurrirán en el futuro.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar sugerencia, acuerdo y desacuerdo.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Hablar sobre la comida sustentable.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Ofrecer, aceptar, y rechazar consejo.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar cómo acciones y eventos podrían ser diferentes.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Describir y comparar resultados y efectos.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Hablar sobre el impacto medioambiental de la industria del entretenimiento.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Usar expresiones y estrategias para defender una opinión.
                                                                    </div>
                                                                </div>         --%>
                                                            </div>
                                                            <div class="row text-center">
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Reconocer la importancia de los exploradores de la antigüedad.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Usar expresiones para demostrar duda durante el discurso o la conversación.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Usar estrategias de "compra de tiempo" para responder preguntas.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Usar tiempos narrativos para contar una historia.
                                                                    </div>
                                                                </div>
                                                                <%-- <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Identificar el uso del artículo indefinido en la descripción de lugares.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Comparar y contrastar los conceptos de exploración de campo y virtual.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Hablar sobre plantas y animales gigantes.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Especular sobre eventos del pasado y el futuro.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Describir objetos, lugares, personas y posesión.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Reportar descrubrimientos del pasado y del presente.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Hablar sobre problemas y estrategias para resolverlos.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Identificar técnicas creativas para la resolución de problemas.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Requerir de otros defender una opinión.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar deseos y arrepentimiento.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Enfatizar diferentes niveles de descripción.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Proponer soluciones creativa a problemas globales.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Hablar sobre el arte y su incidencia en el tiempo, el espacio, en lahistoria y la cultura.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Expresar interpretación y entendimiento.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-primary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Reportar eventos, situaciones y acciones ejecutadas por otros.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <div class="alert-secondary text-dark rounded p-3 " style="min-height: 80px;">
                                                                        Reseñar piezas de arte.
                                                                    </div>
                                                                </div>--%>
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

