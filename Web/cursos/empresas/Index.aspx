<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web.cursos.empresas.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta name="description" content="Norteamericano, Cursos de Inglés para adolescentes, jovenes, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Empresas | Norteamericano </title>
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
    <div class="container-fluid alert-secondary about py-5">
        <div class="container py-5">
            <div class="row g-5" runat="server" id="div_main">
                <div class="col-md-12 text-center">
                    <span class="text-dark" style="font-family: Crimson Pro; font-weight: 600; font-size: 40px; line-height: 130%; letter-spacing: 0%; text-align: center;">Norteamericano in Company</span>
                </div>
                <div class="col-md-12 mb-5 rounded" style="background: #222D42;">
                    <div class="row g-5">
                        <div class="col-md-12 mt-5"></div>
                        <div class="col-md-1"></div>
                        <div class="col-md-6">
                            <img class="img-fluid rounded" src="../../img/empresa/emp.jpg" />
                        </div>
                        <div class="col-md-4 text-white" style="font-size: 20px">
                            <div class="row">
                                <div class="col-md-12 mt-3" style="font-family: Work Sans; font-weight: 400; font-size: 20px; line-height: 130%; letter-spacing: 0%;">
                                    Ofrecemos soluciones de capacitación en inglés a empresas, destacando la personalización, la calidad de los profesores y la  flexibilidad de los programas posicionándonos como un socio estratégico en el desarrollo del talento corporativo.
                                </div>
                                <div class="col-md-12 mt-5">
                                    <div class="d-grid gap-2">
                                        <a style="font-family: Work Sans; font-weight: 600; font-size: 16px; line-height: 100%; letter-spacing: 10%; text-align: center; text-transform: uppercase;"
                                            href="../../Contact.aspx?programa=Empresas" class="btn btn-danger rounded-pill py-2 px-4">Quiero saber más </a>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-12 mt-3"></div>
                        <div class="col-md-1"></div>
                        <div class="col-md-10">
                            <div class="row">
                                <div class="col-md-4 text-center">
                                    <div class="alert text-white">
                                        <img src="../../img/empresa/icono02.png" style="width: 65px" />
                                        <br />
                                        <br />
                                        <span style="font-family: Work Sans; font-weight: 600; font-size: 16px; line-height: 130%; letter-spacing: 0%; text-align: center;">Programas especializados por industria y nivel de inglés</span><br />
                                        <span style="font-family: Work Sans; font-weight: 400; font-size: 16px; line-height: 130%; letter-spacing: 0%; text-align: center;">Ajustamos contenidos y formatos según tus equipos: operaciones, ventas, logística, TI o dirección.</span>
                                    </div>
                                </div>
                                <div class="col-md-4 text-center">
                                    <div class="alert text-white">
                                        <img src="../../img/empresa/icono01.png" style="width: 65px" />
                                        <br />
                                        <br />
                                        <span style="font-family: Work Sans; font-weight: 600; font-size: 16px; line-height: 130%; letter-spacing: 0%; text-align: center;">Profesores certificados con experiencia en empresas</span><br />
                                        <span style="font-family: Work Sans; font-weight: 400; font-size: 16px; line-height: 130%; letter-spacing: 0%; text-align: center;">Docentes con trayectoria en entornos corporativos reales. Clases enfocadas en comunicación y situaciones laborales reales.</span>
                                    </div>
                                </div>
                                <div class="col-md-4 text-center">
                                    <div class="alert text-white">
                                        <img src="../../img/empresa/icono03.png" style="width: 65px" />
                                        <br />
                                        <br />
                                        <span style="font-family: Work Sans; font-weight: 600; font-size: 16px; line-height: 130%; letter-spacing: 0%; text-align: center;">Aprendizaje garantizado</span><br />
                                        <span style="font-family: Work Sans; font-weight: 400; font-size: 16px; line-height: 130%; letter-spacing: 0%; text-align: center;">Un estudiante que concluya su curso y no logre aprobarlo, podrá volver a cursar ese mismo nivel sin costo alguno, siempre y cuando haya asistido al 95% del total de las clases.</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12 mb-3"></div>
                    </div>
                </div>

                <div class="col-md-12 mt-5 mb-5 text-center text-dark">
                    <span style="font-family: Crimson Pro; font-weight: 600; font-size: 36px; line-height: 130%; letter-spacing: 0%; text-align: center;">
                        <a style="font-family: Work Sans; font-weight: 600; font-size: 22px; line-height: 100%; letter-spacing: 10%; text-align: center; text-transform: uppercase;"
                            href="../../Contact.aspx?programa=Empresas" class="btn btn-danger rounded-pill py-2 px-4">Cotiza el programa que necesites</a>
                    </span>
                </div>
                <%-- <div class="col-md-2 ">
                </div>
                <div class="col-md-8 ">

                    <style>
                        .article-card:hover {
                            transform: translateY(-10px);
                            box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.22);
                            transition: all 500ms
                        }
                    </style>

                    <div class="row text-dark">
                        <div class="col-md-6 mb-5">
                            <div class="service-item bg-light shadow rounded article-card">
                                <a href="ProEnglish.aspx">
                                    <div class="service-img">
                                        <img src="../../img/empresa/empresa02.png" class="img-fluid rounded-top w-100" alt="">
                                    </div>
                                </a>
                                <div class="service-content p-4">

                                    <div class="service-content-inner mb-5 text-dark">
                                        <span style="font-family: Work Sans; font-weight: 600; font-size: 24px; line-height: 130%; letter-spacing: 0%;">Professional English</span>
                                    </div>
                                    <div class="service-content-inner mb-5" style="min-height: 145px; font-family: Work Sans; font-weight: 400; font-size: 16px; line-height: 130%; letter-spacing: 0%;">
                                        Professional English Courses es una solución disponible en Modalidad Blended, que promueve el aprendizaje con apoyo de un docente especialista.
                                    </div>

                                    <div class="d-grid gap-2">
                                        <asp:LinkButton PostBackUrl="~/cursos/empresas/ProEnglish.aspx" class="btn btn-danger rounded-pill py-2 px-4" 
                                            Style="font-family: Work Sans; font-weight: 600;font-size: 16px; line-height: 100%;letter-spacing: 10%;text-align: center;text-transform: uppercase;" 
                                            ID="LinkButtonPE" runat="server">Saber más</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 mb-5">
                            <div class="service-item bg-light shadow rounded article-card">
                                <a href="FastEnglish.aspx">
                                    <div class="service-img">
                                        <img src="../../img/empresa/empresa03.png" class="img-fluid rounded-top w-100" alt="">
                                    </div>
                                </a>
                                <div class="service-content p-4">

                                    <div class="service-content-inner mb-5" style="font-family: Work Sans; font-weight: 600; font-size: 24px; line-height: 130%; letter-spacing: 0%;">
                                       Fast English 
                                    </div>
                                    <div class="service-content-inner mb-5" style="min-height: 145px; font-family: Work Sans; font-weight: 400; font-size: 16px; line-height: 130%;letter-spacing: 0%;
">
                                        Fast English Courses es una solución disponible en Modalidad Autónoma, que promueve el aprendizaje individual con apoyo de un tutor bilingüe entrenado que te acompañará durante 8 semanas.
                                    </div>
                                    <div class="d-grid gap-2">
                                        <asp:LinkButton PostBackUrl="~/cursos/empresas/FastEnglish.aspx" class="btn btn-danger rounded-pill py-2 px-4" 
                                            Style="font-family: Work Sans; font-weight: 600;font-size: 16px; line-height: 100%;letter-spacing: 10%;text-align: center;text-transform: uppercase;"
                                            ID="LinkButtonFE" runat="server">Saber más</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>
            </div>
        </div>
    </div>
    <!-- About End -->

</asp:Content>

