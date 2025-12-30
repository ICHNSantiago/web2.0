<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, jovenes, niños  regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Cursos de Inglés - Norteamericano </title>
    <link rel="canonical" href="https://norteamericano.cl/" />
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .header-carousel .owl-nav .owl-next {
            bottom: 200px;
            right: 1%;
            transform: translateX(70%);
            margin-right: 30px;
        }

        .header-carousel .owl-nav .owl-prev {
            bottom: 200px;
            left: 1%;
            transform: translateX(-50%);
            margin-left: 30px;
        }

        .header-carousel .owl-nav .owl-prev,
        .header-carousel .owl-nav .owl-next {
            position: absolute;
            width: 60px;
            height: 60px;
            border-radius: 60px;
            background: var(--bs-light);
            color: var(--bs-primary);
            font-size: 65px;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: 0.5s;
        }
    </style>

    <style>
        .article-card:hover {
            transform: translateY(-15px);
            box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.22);
            transition: all 500ms
        }
    </style>


    <!-- Google Tag Manager (noscript) -->
    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W7349HX"
            height="0" width="0" style="display: none; visibility: hidden"></iframe>
    </noscript>
    <!-- End Google Tag Manager (noscript) -->

    <!-- <script type="text/javascript">
        $(window).load(function () {

            let fecha = new Date().getTime();
            let birthday = new Date("2025-05-03").getTime();
            var diff = fecha - birthday;
            var days = diff / (1000 * 60 * 60 * 24);

            if (days <= 0) {
                $('#staticBackdrop').modal('show');
            }
            else {
                $('#staticBackdrop').modal('hide');
            }
        });
    </script>

        -->


    <!-- Carousel Start -->

    <div class="header-carousel owl-carousel">
        <div class="item" runat="server" id="div_banner_01">
            <a runat="server" id="link_banner_01">
                <img runat="server" id="banner_01" class="d-block w-100" />

            </a>
        </div>
        <div class="item" runat="server" id="div_banner_02">
            <a runat="server" id="link_banner_02">
                <img runat="server" id="banner_02" class="d-block w-100" /></a>
        </div>
        <div class="item" runat="server" id="div_banner_03">
            <a runat="server" id="link_banner_03">
                <img runat="server" id="banner_03" class="d-block w-100" /></a>
        </div>
        <div class="item" runat="server" id="div_banner_04">
            <a runat="server" id="link_banner_04">
                <img runat="server" id="banner_04" class="d-block w-100" /></a>
        </div>
        <div class="item" runat="server" id="div_banner_05">
            <a runat="server" id="link_banner_05">
                <img runat="server" id="banner_05" class="d-block w-100" /></a>
        </div>
     <%--   <div class="item" runat="server" id="div_banner_06">
            <a runat="server" id="link_banner_06">
                <img runat="server" id="banner_06" class="d-block w-100" /></a>
        </div>--%>
    </div>
    <!-- Carousel End -->



    <!-- programas Start -->
    <div class="container-fluid service text-center py-5" runat="server" id="div_programa">
        <div class="container">
            <div class="row g-4 justify-content-center mb-5 wow fadeInUp" data-wow-delay="0.2s" style="margin-top: 50px;">

                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <div class="text-center mx-auto pb-5" runat="server" id="div_titulo_b">
                        <br />
                        <br />
                        <h1 class="display-4 mb-4">Programas
                        </h1>
                        <p class="mb-0 text-dark">
                            El Instituto Chileno Norteamericano cree en la capacidad e interés de las personas para aprender y desarrollarse. Estamos convencidos del poder que tiene la educación para mejorar la calidad de vida de las personas. Por ello proveemos el mejor ambiente para el aprendizaje.
                        </p>
                    </div>
                    <div class="text-center mx-auto pb-5" visible="false" runat="server" id="div_titulo_w">
                        <br />
                        <br />
                        <h1 class="display-4 mb-4 text-white">Programas</h1>
                        <p class="mb-0 text-white">
                            El Instituto Chileno Norteamericano cree en la capacidad e interés de las personas para aprender y desarrollarse. Estamos convencidos del poder que tiene la educación para mejorar la calidad de vida de las personas. Por ello proveemos el mejor ambiente para el aprendizaje.
                        </p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-xl-3">
                    <div class="service-item bg-light shadow  article-card">
                        <a href="cursos/adults/Index.aspx">
                            <div class="service-img">
                                <img src="img/programas/adulto.webp" class="img-fluid rounded-top w-100" alt="">
                            </div>
                        </a>
                        <div class="service-content p-4">
                            <div class="service-content-inner text-center">
                                <a class="btn btn-primary rounded-pill py-2 px-4" href="cursos/adults/Index.aspx">Saber más</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-xl-3 ">
                    <div class="service-item bg-light shadow  article-card">
                        <a href="cursos/teen/Index.aspx">
                            <div class="service-img">
                                <img src="img/programas/teens.webp" class="img-fluid rounded-top w-100" alt="">
                            </div>
                        </a>
                        <div class="service-content p-4">
                            <div class="service-content-inner text-center">
                                <a class="btn btn-primary rounded-pill py-2 px-4" href="cursos/teen/Index.aspx">Saber más</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-xl-3 ">
                    <div class="service-item bg-light shadow  article-card">
                        <a href="cursos/kid/Index.aspx">
                            <div class="service-img">
                                <img src="img/programas/kids.webp" class="img-fluid rounded-top w-100" alt="">
                            </div>
                        </a>
                        <div class="service-content p-4">
                            <div class="service-content-inner text-center">
                                <a class="btn btn-primary rounded-pill py-2 px-4" href="cursos/kid/Index.aspx">Saber más</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-xl-3 ">
                    <div class="service-item bg-light shadow  article-card">
                        <a href="cursos/pre/Index.aspx">
                            <div class="service-img">
                                <img src="img/programas/preschool.webp" class="img-fluid rounded-top w-100" alt="">
                            </div>
                        </a>
                        <div class="service-content p-4">
                            <div class="service-content-inner text-center">
                                <a class="btn btn-primary rounded-pill py-2 px-4" href="cursos/pre/Index.aspx">Saber más</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 mt-3 mb-5 text-center wow fadeInUp" data-wow-delay="0.6s">
                    <a class="btn btn-success rounded-pill py-3 px-5" href="Programas.aspx">Más Programas</a>
                </div>
            </div>
        </div>
    </div>
    <!-- programas End -->

    <!-- About Start -->
    <div class="container-fluid bg-light about pb-5">
        <div class="container pb-5">
            <div class="row g-5">

                <div class="col-xl-6 wow fadeInLeft" data-wow-delay="0.2s">
                    <div class="about-item-content bg-white rounded p-5 h-100" runat="server" id="contacto_lead">
                        <h4 class="text-primary">Acerca de nuestros programas</h4>
                        <h3>No esperes más tiempo, da tu primer paso para aprender inglés</h3>
                        <h1 class="display-4 mb-4">Contáctanos</h1>

                        <table class="table table-borderless text-center">
                            <tr>
                                <td colspan="2">
                                    <asp:TextBox ID="TextBoxNombre" placeholder="Nombre" Font-Bold="true" class="form-control " runat="server" Autocomplete="OFF"></asp:TextBox>
                                    <strong>
                                        <asp:Label ID="LabelErrorNombre" Visible="false" CssClass="text-danger" runat="server" Text="Este campo es obligatorio"></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:TextBox ID="TextBoxCorreo" placeholder="Correo" Font-Bold="true" class="form-control " runat="server" Autocomplete="OFF"></asp:TextBox>
                                    <strong>
                                        <asp:Label ID="LabelErrorMail" Visible="false" CssClass="text-danger" runat="server" Text="Este campo es obligatorio"></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-center" style="width: 30%">
                                    <asp:TextBox ID="TextBox1" placeholder="+56" Font-Bold="true" class="form-control " runat="server" ReadOnly="true"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBoxFono" MaxLength="9" placeholder="Teléfono" Font-Bold="true" class="form-control " runat="server" onkeypress="return valideKey(event)" Autocomplete="OFF"></asp:TextBox>
                                    <strong>
                                        <asp:Label ID="LabelErrorFono" Visible="false" CssClass="text-danger" runat="server" Text="Este campo es obligatorio"></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:DropDownList ID="ListaPrograma" Font-Bold="true" class="form-select" runat="server"></asp:DropDownList>
                                    <strong>
                                        <asp:Label ID="LabelErrorPrograma" Visible="false" CssClass="text-danger" runat="server" Text="Este campo es obligatorio"></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="text-center">
                                    <div class="d-grid gap-2">
                                        <asp:LinkButton ID="LinkButtonEnviar" class="btn btn-primary rounded-pill py-3 px-5" runat="server" OnClick="LinkButtonEnviar_Click">Enviar</asp:LinkButton>
                                    </div>
                                </td>
                            </tr>
                        </table>

                    </div>

                    <div class="about-item-content bg-white rounded p-5 h-100" runat="server" id="mensaje_lead" visible="false">
                        <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s">
                            <h1 class="display-4 mb-4">Gracias por contactarnos</h1>
                        </div>
                        <div class="row g-5">
                            <div class="col-xl-12 wow fadeInRight" data-wow-delay="0.2s">
                                <div class="alert alert-light text-center">
                                    <span style="font-size: 60px">
                                        <i class="fas fa-check-circle text-primary"></i>
                                    </span>
                                    <hr />
                                    <h4>Recibimos tu solicitud y en breve nos pondremos en contacto contigo
                                    </h4>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-xl-6 wow fadeInRight" data-wow-delay="0.2s">
                    <div class="bg-white rounded p-5 h-100">
                        <div class="row g-4 justify-content-center">
                            <div class="col-12">
                                <div class="rounded bg-light">
                                    <img src="img/nivel2.webp" class="img-fluid rounded w-100" alt="">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="counter-item bg-light rounded p-3 h-100 text-center">
                                    <h1 class="mb-0 text-primary">¡Mide tu nivel de inglés!</h1>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="counter-item bg-primary text-white rounded p-3 h-100 text-center">
                                    <a target="_blank" href="https://diagnostico.norteamericano.cl/adultos/">
                                        <span class="mb-0 text-white">Adultos</span>
                                    </a>
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <div class="counter-item bg-info rounded p-3 h-100 text-center">
                                    <a target="_blank" href="https://diagnostico.norteamericano.cl/adolescentes/">
                                        <span class="mb-0 text-dark">Adolescentes</span>
                                    </a>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="counter-item bg-danger rounded p-3 h-100 text-center">
                                    <a target="_blank" href="https://diagnostico.norteamericano.cl/kid/">
                                        <span class="mb-0 text-white">Niños</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->



    <!-- Blog Start -->
    <div class="container-fluid blog py-5">
        <div class="container py-5">
            <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s">
                <h4 class="text-primary">From Blog</h4>
                <h1 class="display-4 mb-4">Noticias y actualizaciones</h1>
            </div>
            <div class="row g-4 justify-content-center" style="min-height: 500px">
                <div class="col-lg-6 col-xl-12 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="blog-item">
                        <div class="blog-content p-4">
                            <div class="ratio ratio-16x9">
                                <iframe allow="fullscreen" style="min-height: 500px;" src="https://americanspacesantiago.blogspot.com/"></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Blog End -->

    <!-- FAQs Start -->
    <%-- <div class="container-fluid faq-section bg-light py-5">
        <div class="container py-5">
            <div class="row g-5 align-items-center">
                <div class="col-xl-6 wow fadeInLeft" data-wow-delay="0.2s">
                    <div class="h-100">
                        <div class="mb-5">
                            <h4 class="text-primary">FAQ's</h4>
                            <h1 class="display-4 mb-0">Preguntas frecuentes</h1>
                        </div>
                        <div class="accordion" id="accordionExample">
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="headingOne">
                                    <button class="accordion-button border-0" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        Q: What happens during Freshers' Week?
                                    </button>
                                </h2>
                                <div id="collapseOne" class="accordion-collapse collapse show active" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                    <div class="accordion-body rounded">
                                        A: Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the holistic world view of disruptive innovation via workplace diversity and empowerment.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="headingTwo">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        Q: What is the transfer application process?
                                    </button>
                                </h2>
                                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        A: Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the holistic world view of disruptive innovation via workplace diversity and empowerment.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="headingThree">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        Q: Why should I attend community college?
                                    </button>
                                </h2>
                                <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        A: Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the holistic world view of disruptive innovation via workplace diversity and empowerment.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 wow fadeInRight" data-wow-delay="0.4s">
                    <img src="img/contacto2.webp" class="img-fluid w-100" alt="">
                </div>
            </div>
        </div>
    </div>--%>
    <!-- FAQs End -->

    <!-- Team Start -->
    <%--  <div class="container-fluid team py-5">
        <div class="container pb-5">
            <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px;">
                <h4 class="text-primary">Nuestro equipo</h4>
                <h1 class="display-4 mb-4">Conozca a los miembros de nuestro equipo</h1>
                <p class="mb-0">
                    Somos un equipo humano altamente preparado y motivado para acoger y apoyar a las personas y organizaciones en el logro de sus metas de conocimiento
                    de los idiomas inglés y español como segunda lengua.
                </p>
            </div>
            <div class="row g-4">
                <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="team-item">
                        <div class="team-img text-center">
                            <img src="img/Jefes/moneda.png" class="img-fluid rounded-top w-100" alt="">
                          
                        </div>
                        <div class="team-title p-4">
                            <h4 class="mb-0">Arturo Palacios</h4>
                            <p class="mb-0">Jefe Sede Moneda</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="team-item">
                        <div class="team-img text-center">
                            <img src="img/Jefes/online.png" class="img-fluid rounded-top w-100" alt="">
                        </div>
                        <div class="team-title p-4">
                            <h4 class="mb-0">Constanza Salazar</h4>
                            <p class="mb-0">Jefe Sede Online</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="team-item">
                        <div class="team-img text-center">
                            <img src="img/Jefes/provi.png" class="img-fluid rounded-top w-100" alt="">
                          
                        </div>
                        <div class="team-title p-4">
                            <h4 class="mb-0">Lucia Salas</h4>
                            <p class="mb-0">Jefe Sede Providencia</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="team-item">
                        <div class="team-img text-center">
                            <img src="img/Jefes/florida.png" class="img-fluid rounded-top w-100" alt="">
                           
                        </div>
                        <div class="team-title p-4">
                            <h4 class="mb-0">Gladys Alonso</h4>
                            <p class="mb-0">Jefe Sede La florida</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <!-- Team End -->

    <!-- Colaboradores Start -->
    <div class="container-fluid testimonial pb-5">
        <div class="container pb-5">
            <br />
            <br />
            <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px;">
                <h1 class="display-4">Colaboradores</h1>
            </div>
            <div class="owl-carousel testimonial-carousel wow fadeInUp" runat="server" id="div_carousel" data-wow-delay="0.2s">
                <div class="testimonial-item bg-light ">
                    <div class="row g-0">
                        <div class="col-4  text-center col-lg-4 col-xl-8">
                            <div class="h-100">
                                <img src="img/colaboradores/abla.webp" class="img-fluid h-100 " style="object-fit: cover;" alt="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="testimonial-item bg-light ">
                    <div class="row g-0">
                        <div class="col-4 text-center col-lg-4 col-xl-8">
                            <div class="h-100">
                                <img src="img/colaboradores/amcham.webp" class="img-fluid h-100 " style="object-fit: cover;" alt="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="testimonial-item bg-light ">
                    <div class="row g-0">
                        <div class="col-4 text-center col-lg-4 col-xl-8">
                            <div class="h-100">
                                <img src="img/colaboradores/americanspaces.webp" class="img-fluid h-100 " style="object-fit: cover;" alt="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="testimonial-item bg-light ">
                    <div class="row g-0">
                        <div class="col-4 text-center col-lg-4 col-xl-8">
                            <div class="h-100">
                                <img src="img/colaboradores/educationusa.webp" class="img-fluid h-100 " style="object-fit: cover;" alt="">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="testimonial-item bg-light ">
                    <div class="row g-0">
                        <div class="col-4 text-center col-lg-4 col-xl-8">
                            <div class="h-100">
                                <img src="img/colaboradores/embajadausa.webp" class="img-fluid h-100 " style="object-fit: cover;" alt="">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="testimonial-item bg-light ">
                    <div class="row g-0">
                        <div class="col-4 text-center col-lg-4 col-xl-8">
                            <div class="h-100">
                                <img src="img/colaboradores/tiec.webp" class="img-fluid h-100 " style="object-fit: cover;" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Colaboradores End -->


    <!-- Modal -->



    <style>
        .bodyICHN {
            align-items: center;
            /*background-color: #ffd54f;*/
            display: flex;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", sans-serif;
        }

        .containerICHN {
            color: #333;
            margin: 0 auto;
            text-align: center;
        }

        .h1ICHN {
            font-weight: bold;
        }

        .liICHN {
            display: inline-block;
            font-size: 1.5em;
            list-style-type: none;
            padding: 0em;
            text-transform: uppercase;
        }

            .liICHN span {
                display: block;
                font-size: 3.5rem;
            }

        .emoji {
            display: none;
            padding: 1rem;
        }

            .emoji span {
                font-size: 4rem;
                padding: 0 .5rem;
            }

        @media all and (max-width: 768px) {
            .ICHNh1 {
                font-size: calc(1.5rem * var(--smaller));
            }

            .liICHN {
                font-size: calc(1.125rem * var(--smaller));
            }

                .liICHN span {
                    font-size: calc(3.375rem * var(--smaller));
                }
        }

        .modal-footer {
            display: -ms-flexbox;
            display: flex;
            -ms-flex-align: center;
            align-items: center;
            -ms-flex-pack: end;
            justify-content: flex-end;
            padding: 1rem;
            border-top: 0px;
            border-bottom-right-radius: 0.3rem;
            border-bottom-left-radius: 0.3rem;
            /*background-color: #ffd54f;*/
        }
    </style>

    <div class="modal fade" id="staticBackdrop" data-bs-toggle="modal" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <%-- <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content" style="background: rgb(2,0,36); background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(24,1,48,1) 50%, rgba(53,50,201,1) 100%);">
                <div class="modal-body">
                    <button type="button" class="btn btn-light float-end" data-bs-dismiss="modal">Close</button>
                    <div class="container text-center">

                        <h1 class="mt-4 mb-4 text-white" id="headline">Inicio de Clases</h1>
                        <h5 class="text-white" id="headline2">Inscripciones Abiertas | Inicio  28 Septiembre</h5>
                        <div class="mt-4" id="countdown">
                            <ul>
                                <li class="liICHN">
                                    <div class="alert bg-primary text-white" style="width: 130px;"><span id="days"></span><small>days</small></div>
                                </li>
                                <li class="liICHN">
                                    <div class="alert bg-primary text-white" style="width: 130px;"><span id="hours"></span><small>Hours</small></div>
                                </li>
                                <li class="liICHN">
                                    <div class="alert bg-primary text-white" style="width: 130px;"><span id="minutes"></span><small>Minutes</small></div>
                                </li>
                                <li class="liICHN">
                                    <div class="alert bg-primary text-white" style="width: 130px;"><span id="seconds"></span><small>Seconds</small></div>
                                </li>
                            </ul>

                         
                        </div>
                        <div id="content" class="emoji">
                          
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>


        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content" style="background-image: url('img/CartelAviso.png'); width: 396px; height: 522px;">
                <div class="modal-body text-center">
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        function ShowPopupMensaje() {
            $("#staticBackdrop").modal("show");
        }
    </script>
    <!-- modal Start -->

</asp:Content>
