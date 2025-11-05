<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Fundacion.aspx.cs" Inherits="Web.Fundacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Norteamericano, Cursos de Inglés para adolescentes, jovenes, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Fundación | Norteamericano </title>
    <link rel="canonical" href="https://norteamericano.cl/" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Work+Sans:ital,wght@0,100..900;1,100..900&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Crimson+Pro:ital,wght@0,200..900;1,200..900&family=Work+Sans:ital,wght@0,100..900;1,100..900&display=swap');
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
    <div class="container-fluid alert-secondary text-dark about py-5">
        <div class="container py-5">
            <div class="row g-5" runat="server" id="div_main">
                <div class="col-md-12 text-center">
                    <span class="text-dark" style="font-family: Crimson Pro; font-weight: 600; font-size: 60px; line-height: 130%; letter-spacing: 0%;">El inglés es solo el comienzo</span>
                    <br />
                    <span class="text-dark" style="font-family: Crimson Pro; font-weight: 600; font-size: 30px; line-height: 130%; letter-spacing: 0%;">Transformamos la eduacación con innovación y propósito</span>
                </div>

                <div class="col-md-12 rounded" style="background: #396B95;">
                    <div class="row g-5">
                        <div class="col-md-12 mt-5"></div>
                        <div class="col-md-1"></div>
                        <div class="col-md-5 ">
                            <br />
                            <img class="img-fluid rounded" src="img/ATE/ate_1.webp" />
                        </div>
                        <div class="col-md-5 text-white" style="font-size: 20px;">
                            <div class="row">

                                <div class="col-md-12" style="font-family: Work Sans; font-weight: 400; font-size: 30px; line-height: 130%; letter-spacing: 0%;">
                                    Quiénes somos
                                       <br />
                                </div>

                                <div class="col-md-12" style="font-family: Work Sans; font-weight: 400; font-size: 18px; line-height: 130%; letter-spacing: 0%;">
                                    Somos una Asistencia Técnica Educativa que combina experiencia pedagógica, datos e innovación para fortalecer la gestión y los aprendizajes en cada comunidad escolar.
                                    <br />
                                    <br />
                                    Creemos que el inglés es mucho más que un idioma: es una herramienta de movilidad social y una vía para transformar la educación con sentido y propósito.
                                    <br />
                                    <br />
                                    Acompañamos a los colegios en las cuatro dimensiones de la gestión educativa con cercanía y profesionalismo, promoviendo una cultura educativa basada en la colaboración, la mejora continua y el liderazgo pedagógico.        
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 mt-5 text-center">
                            <a style="text-transform: uppercase" data-bs-toggle="modal" data-bs-target="#portfolioModal1" class="btn btn-danger rounded-pill py-2 px-4">
                                <span class="me-3 ms-3" style="font-family: Work Sans; font-weight: 600; font-size: 16px; line-height: 100%; letter-spacing: 10%; text-align: center; text-transform: uppercase;">Quiero saber más </span></a>
                        </div>
                        <div class="col-md-12 mb-5 mt-3 text-center">
                        </div>
                    </div>
                </div>

                <div class="col-md-4 text-center"></div>
                <div class="col-md-4 text-center">
                    <a href="../FundacionPage/ATE.aspx" target="_blank" style="cursor: pointer">
                        <img class="img-fluid" src="../../img/Fundacion/F05.jpg" />
                    </a>
                </div>
                <div class="col-md-4 text-center"></div>

                <%--     <div class="col-md-12 text-center">
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-10 text-center">
                            <div class="row">
                                <div class="col-md-4 text-center">
                                    <div class="alert" style="font-family: Work Sans; font-size: 16px; line-height: 130%; letter-spacing: 0%;">
                                        <img src="../../img/Fundacion/icono01.png" style="width: 65px" />
                                        <br />
                                        <br />
                                        <strong>Vínculo cultural Chile - EE.UU.</strong><br />
                                        <span>Promovemos el entendimiento mutuo a través del intercambio educativo y cultural.</span>
                                    </div>
                                </div>
                                <div class="col-md-4 text-center">
                                    <div class="alert" style="font-family: Work Sans; font-size: 16px; line-height: 130%; letter-spacing: 0%;">
                                        <img src="../../img/Fundacion/icono02.png" style="width: 78px" />
                                        <br />
                                        <br />
                                        <strong>Educación y aprendizaje del inglés </strong>
                                        <br />
                                        <span>Impulsamos el dominio del idioma como herramienta clave para el desarrollo personal y profesional.</span>
                                    </div>
                                </div>
                                <div class="col-md-4 text-center">
                                    <div class="alert" style="font-family: Work Sans; font-size: 16px; line-height: 130%; letter-spacing: 0%;">
                                        <img src="../../img/Fundacion/icono03.png" style="width: 65px" />
                                        <br />
                                        <br />
                                        <strong>Formación y desarrollo global</strong><br />
                                        <span>Fortalecemos competencias del siglo XXI en docentes, estudiantes y comunidades escolares.</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>


                <div class="col-md-12 text-center">
                    <span class="text-dark" style="font-family: Crimson Pro; font-weight: 600; font-size: 40px; line-height: 130%; letter-spacing: 0%;">¿Cómo transformamos tus desafíos en oportunidades?</span>
                </div>

                <div class="col-md-12">
                    <style>
                        .article-card:hover {
                            transform: translateY(-10px);
                            box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.22);
                            transition: all 500ms
                        }
                    </style>

                    <div class="row">
                        <div class="col-md-4 mb-5">
                            <div class="service-item bg-light shadow rounded article-card">

                                <div class="service-img">
                                    <img src="../../img/ate/ate_3.webp" class="img-fluid rounded-top w-100" alt="">
                                </div>

                                <div class="service-content p-4">

                                    <div class="service-content-inner mb-5">
                                        <span style="font-family: Work Sans; font-weight: 600; font-size: 24px; line-height: 130%; letter-spacing: 0%;">Asesorías
                                        </span>
                                    </div>
                                    <div class="service-content-inner mb-5" style="min-height: 100px; font-family: Work Sans; font-weight: 400; font-size: 16px; line-height: 130%; letter-spacing: 0%;">
                                        Acompañamos a los equipos directivos y docentes para enriquecer su práctica y fortalecer su gestión hacia los aprendizajes.
                                    </div>

                                    <%--   <div class="d-grid gap-2">
                                        <asp:LinkButton PostBackUrl="~/FundacionPage/NorteamericanoEXP.aspx" class="btn btn-danger rounded-pill py-2 px-4" Style="text-transform: uppercase" ID="LinkButtonPE" runat="server">
                                              <span class="me-3 ms-3" style="font-family: Work Sans;  font-weight: 600; font-size: 16px; line-height: 100%; letter-spacing: 10%; text-align: center; text-transform: uppercase;">Saber más
                                                  </span>
                                        </asp:LinkButton>
                                    </div>--%>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 mb-5">
                            <div class="service-item bg-light shadow rounded article-card">

                                <div class="service-img">
                                    <img src="../../img/ate/ate_4.webp" class="img-fluid rounded-top w-100" alt="">
                                </div>

                                <div class="service-content p-4">

                                    <div class="service-content-inner mb-5">
                                        <span style="font-family: Work Sans; font-weight: 600; font-size: 24px; line-height: 130%; letter-spacing: 0%;">Capacitaciones
                                        </span>
                                    </div>
                                    <div class="service-content-inner mb-5" style="min-height: 100px; font-family: Work Sans; font-weight: 400; font-size: 16px; line-height: 130%; letter-spacing: 0%;">
                                        Creamos experiencias formativas que inspiran, actualizan y transforman la práctica docente desde la evidencia y la colaboración.
                                          
                                    </div>
                                    <%-- <div class="d-grid gap-2">
                                        <asp:LinkButton PostBackUrl="~/FundacionPage/Docentes.aspx" class="btn btn-danger rounded-pill py-2 px-4" Style="text-transform: uppercase" ID="LinkButtonFE" runat="server">
                                              <span class="me-3 ms-3" style="font-family: Work Sans;  font-weight: 600; font-size: 16px; line-height: 100%; letter-spacing: 10%; text-align: center; text-transform: uppercase;">
                                                  Saber más
                                                  </span>
                                        </asp:LinkButton>
                                    </div>--%>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 mb-5">
                            <div class="service-item bg-light shadow rounded article-card">

                                <div class="service-img">
                                    <img src="../../img/ate/ate_5.webp" class="img-fluid rounded-top w-100" alt="">
                                </div>

                                <div class="service-content p-4">

                                    <div class="service-content-inner mb-5">
                                        <span style="font-family: Work Sans; font-weight: 600; font-size: 24px; line-height: 130%; letter-spacing: 0%;">Evaluaciones
                                        </span>
                                    </div>
                                    <div class="service-content-inner mb-5" style="min-height: 100px; font-family: Work Sans; font-weight: 400; font-size: 16px; line-height: 130%; letter-spacing: 0%;">
                                        Realizamos diagnósticos formativos y certificaciones que entregan información clave para orientar la mejora y el crecimiento educativo.                                   
                                    </div>
                                    <%--<div class="d-grid gap-2">
                                        <asp:LinkButton PostBackUrl="~/FundacionPage/Asesorias.aspx" class="btn btn-danger rounded-pill py-2 px-4" Style="text-transform: uppercase" ID="LinkButton1" runat="server">
                                              <span class="me-3 ms-3" style="font-family: Work Sans;  font-weight: 600; font-size: 16px; line-height: 100%; letter-spacing: 10%; text-align: center; text-transform: uppercase;">Saber más
                                                  </span>

                                        </asp:LinkButton>
                                    </div>--%>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>


                <div class="col-md-12 text-center">
                    <span class="text-dark" style="font-family: Crimson Pro; font-weight: 600; font-size: 40px; line-height: 130%; letter-spacing: 0%;">Dimensiones de la Gestión Educativa</span>
                </div>

                <div class="col-md-12">
                    <style>
                        .article-card:hover {
                            transform: translateY(-10px);
                            box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.22);
                            transition: all 500ms
                        }
                    </style>

                    <div class="row">
                        <div class="col-md-2 mb-5"></div>

                        <div class="col-md-4 mb-5">
                            <div class="service-item shadow rounded article-card" style="background-color: #396b95">

                                <div class="service-img">
                                    <img src="../../img/ate/ate_6.webp" class="img-fluid rounded-top w-100" alt="">
                                </div>

                                <div class="service-content p-4">

                                    <div class="service-content-inner mb-5 text-white">
                                        <span style="font-family: Work Sans; font-weight: 600; font-size: 20px; line-height: 130%; letter-spacing: 0%;">Dimensión Pedagógica Curricular
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 mb-5">
                            <div class="service-item shadow rounded article-card" style="background-color: #59cef6">

                                <div class="service-img">
                                    <img src="../../img/ate/ate_7.webp" class="img-fluid rounded-top w-100" alt="">
                                </div>

                                <div class="service-content p-4">

                                    <div class="service-content-inner mb-5">
                                        <span style="font-family: Work Sans; font-weight: 600; font-size: 20px; line-height: 130%; letter-spacing: 0%;">Convivencia Escolar
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-2 mb-5"></div>

                            <div class="col-md-4 mb-5">
                                <div class="service-item shadow rounded article-card" style="background-color: #cd353b">

                                    <div class="service-img">
                                        <img src="../../img/ate/ate_8.webp" class="img-fluid rounded-top w-100" alt="">
                                    </div>

                                    <div class="service-content p-4">
                                        <div class="service-content-inner text-white mb-5">
                                            <span style="font-family: Work Sans; font-weight: 600; font-size: 20px; line-height: 130%; letter-spacing: 0%;">Liderazgo Educativo
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 mb-5">
                                <div class="service-item shadow rounded article-card" style="background-color: #7ebca3">

                                    <div class="service-img">
                                        <img src="../../img/ate/ate_9.webp" class="img-fluid rounded-top w-100" alt="">
                                    </div>

                                    <div class="service-content p-4">
                                        <div class="service-content-inner mb-5">
                                            <span style="font-family: Work Sans; font-weight: 600; font-size: 20px; line-height: 130%; letter-spacing: 0%;">Recursos Educativos
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 mb-5 text-center">
                    <a style="text-transform: uppercase" href="FundacionPage/Brochure.aspx" target="_blank" class="btn btn-danger rounded-pill py-4 px-4 cursor: pointer">
                        <span class="me-3 ms-3" style="font-family: Work Sans; font-weight: 600; font-size: 24px; line-height: 100%; letter-spacing: 10%; text-align: center; text-transform: uppercase;">Descargar Brochure <i class="ms-2 fas fa-file-download"></i></span></a>
                </div>

                <div class="col-md-12 rounded text-white" style="background: #396B95;">
                    <div class="row g-5">
                        <div class="col-md-12 mt-5"></div>
                        <div class="col-md-1"></div>

                        <div class="col-md-5" style="font-size: 20px;">
                            <div class="row">

                                <div class="col-md-12" style="font-family: Work Sans; font-weight: 400; font-size: 40px; line-height: 130%; letter-spacing: 0%;">
                                    Nuestro compromiso  
                                    <br />
                                    <br />
                                </div>

                                <div class="col-md-12 mb-4" style="font-family: Work Sans; font-weight: 400; font-size: 20px; line-height: 130%; letter-spacing: 0%;">
                                    <table class="table text-white table-borderless">
                                        <tr>
                                            <td style="width: 10%">
                                                <img class="img-fluid" src="img/ATE/Checkblanco.png" />
                                            </td>
                                            <td>Acompañamos a las comunidades educativas con cercanía, innovación y propósito.
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="col-md-12 mb-4" style="font-family: Work Sans; font-weight: 400; font-size: 20px; line-height: 130%; letter-spacing: 0%;">
                                    <table class="table  text-white table-borderless">
                                        <tr>
                                            <td style="width: 10%">
                                                <img class="img-fluid" src="img/ATE/Checkblanco.png" />
                                            </td>
                                            <td>Creemos en el poder del inglés y en la educación como fuerza transformadora.
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="col-md-12" style="font-family: Work Sans; font-weight: 400; font-size: 20px; line-height: 130%; letter-spacing: 0%;">

                                    <table class="table text-white table-borderless">
                                        <tr>
                                            <td style="width: 10%">
                                                <img class="img-fluid" src="img/ATE/Checkblanco.png" />
                                            </td>
                                            <td>Certificamos en inglés y trabajamos junto a los colegios para generar impacto real y construir futuro.</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="mt-5">
                                <img class="img-fluid rounded" src="../../img/ATE/ate_10.webp" />
                            </div>
                        </div>


                        <div class="col-md-12 mb-5 mt-3 text-center">
                        </div>

                    </div>
                </div>

                <div class="col-md-12 text-center">
                    <br />
                    <br />
                    <span class="text-dark" style="font-family: Crimson Pro; font-weight: 600; font-size: 40px; line-height: 130%; letter-spacing: 0%;">Estamos acreditados</span>
                    <br />
                    <br />
                </div>

                <div class="col-md-12 mb-5">
                    <div class="row text-center">
                        <div class="col-md-4 mb-5">
                            <img class="img-fluid rounded w-75" src="img/ATE/11.png" />
                        </div>
                        <div class="col-md-4 mb-5">
                            <img class="img-fluid rounded w-75" src="img/ATE/12.png" />
                        </div>
                        <div class="col-md-4">
                            <img class="img-fluid rounded w-75" src="img/ATE/13.png" />
                        </div>
                    </div>
                </div>

                <div class="col-md-12 mt-5 text-center">
                    <div class="row">
                        <div class="col-md-3">
                        </div>
                        <div class="col-md-6 text-center" style="font-family: Work Sans; font-weight: 400; font-size: 16px; line-height: 170%; letter-spacing: 0%; text-align: center;">
                            <div class="alert" style="background: var(--Crema-oscuro, #D1B58C); color: #222D42">
                                <br />
                                <img src="../../img/Fundacion/icono04.png" />
                                <br />
                                <br />
                                <span style="font-family: Work Sans; font-weight: 600; font-size: 24px;">Para más información contactar a: </span>
                                <br />
                                <br />
                                <br />
                                <strong>Sebastián Vásquez</strong>
                                <br />
                                <span>Director de Innovación y Proyectos Educativos </span>
                                <br />
                                <span>+56 227127130 (anexo 121)</span>
                                <br />
                                <span>fundacion@norteamericano.cl</span>
                                <br />
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- About End -->

    <script type="text/javascript">            
        function ShowModalContacto() {
            $(window).on("load", function () {
                $('#portfolioModal1').modal('show');
            });
        }
    </script>

    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content text-dark">
                <div class="modal-header">
                    <h5 class="modal-title">Contacto - Fundación Ichn</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <table class="table table-borderless text-dark">
                        <tr>
                            <td>Nombre</td>
                            <td>
                                <asp:TextBox ID="TextBoxNombre" CssClass="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Apellido</td>
                            <td>
                                <asp:TextBox ID="TextBoxApellido" CssClass="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Institución</td>
                            <td>
                                <asp:TextBox ID="TextBoxInstituto" CssClass="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Correo</td>
                            <td>
                                <asp:TextBox ID="TextBoxMail" CssClass="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Teléfono</td>
                            <td>
                                <asp:TextBox ID="TextBoxFono" CssClass="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Programa</td>
                            <td>
                                <asp:DropDownList ID="ListaProgramas" CssClass="form-select" runat="server"></asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>Mensaje (opcional)</td>
                            <td>
                                <textarea id="TextAreaMensaje" runat="server" class="form-control" cols="20" rows="2"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-end">
                                <button type="button" class="btn btn-secondary text-white" data-bs-dismiss="modal">Cancelar</button>
                                <asp:LinkButton class="btn btn-success" ID="LinkButtonEnviar" runat="server" OnClick="LinkButtonEnviar_Click"><span class="me-5 ms-5">Enviar</span></asp:LinkButton>
                            </td>
                        </tr>
                        <tr runat="server" id="error_contacto" visible="false">
                            <td colspan="2" class="text-center text-danger">
                                <strong>
                                    <asp:Label ID="LabelMnjForm" runat="server" Text="Label"></asp:Label></strong>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">            
        function ShowModalMensaje() {
            $(window).on("load", function () {
                $('#modalMensaje').modal('show');
            });
        }
    </script>


    <div class="modal fade" id="modalMensaje" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Contacto Fundación</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center">
                    <div class="row">
                        <div class="col-md-2 text-center">
                            <span runat="server" id="error_icono"><strong><i class="bx bx-error text-primary" style="font-size: 60px"></i></strong></span>
                            <span runat="server" id="ok_icono"><strong><i class="bx bx-check-circle text-success" style="font-size: 60px"></i></strong></span>
                        </div>
                        <div class="col-md-10 text-dark" style="display: flex; align-items: center;">
                            <div>
                                <strong>
                                    <asp:Label ID="LabelMensajeError" runat="server" Text=""></asp:Label>
                                </strong>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:LinkButton ID="LinkButton2" class="btn btn-secondary text-white" OnClick="LinkButtonCargarPagina_Click" runat="server">Aceptar</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>


</asp:Content>


