<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="AmericanSpace.aspx.cs" Inherits="Web.AmericanSpace" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Norteamericano, sede, sedes, dirección , sucursal, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>American Space | Norteamericano - Cursos de Inglés </title>
    <link rel="canonical" href="https://norteamericano.cl/" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <style>
      .american-carousel .owl-nav .owl-next {
          bottom: 180px;
          right: 1%;
          transform: translateX(70%);
          margin-right: 30px;
      }

      .american-carousel .owl-nav .owl-prev {
          bottom: 180px;
          left: 1%;
          transform: translateX(-50%);
          margin-left: 30px;
      }

      .american-carousel .owl-nav .owl-prev,
      .american-carousel .owl-nav .owl-next {
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

        <!-- Google Tag Manager (noscript) -->
    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W7349HX"
            height="0" width="0" style="display: none; visibility: hidden"></iframe>
    </noscript>
    <!-- End Google Tag Manager (noscript) -->

    <!-- Carousel Start -->

    <div class="american-carousel owl-carousel">
        <div class="item" runat="server" id="div_banner_01">
            <a runat="server" id="link_banner_01">
                <img runat="server"  id="banner_01" class="d-block w-100" /></a>
        </div>
        <div class="item" runat="server" id="div_banner_02">
            <a runat="server" id="link_banner_02">
                <img runat="server" id="banner_02" class="d-block w-100" /></a>
        </div>
        <div class="item" runat="server" id="div_banner_03">
            <a runat="server" id="link_banner_03">
                <img runat="server"  id="banner_03" class="d-block w-100" /></a>
        </div>
        <div class="item" runat="server" id="div_banner_04">
            <a runat="server" id="link_banner_04">
                <img runat="server"  id="banner_04" class="d-block w-100" /></a>
        </div>
        <div class="item" runat="server" id="div_banner_05">
            <a runat="server" id="link_banner_05">
                <img runat="server"  id="banner_05" class="d-block w-100" /></a>
        </div>
    </div>

    <div runat="server" visible="false">

    </div>
    <!-- Carousel End -->

    <!-- About Start -->
    <div class="container-fluid bg-white about py-5">
        <div class="container py-5">
            <div class="row g-4 justify-content-center">
                <div class="col-lg-3">
                    <img class="img-fluid rounded mt-5" src="img/americanspaces.png" />
                </div>

                <div class="col-lg-9">
                    <div class="mx-auto pb-5 " style="max-width: 1000px;">
                        <h4 class="text-primary">Educación y Cultura</h4>
                        <h1 class="display-4 mb-4">American Spaces</h1>
                        <p class="mb-0 text-dark" style="text-align: justify">
                            El American Space es un Centro de Información moderno e innovador dedicado a servir a la comunidad diversa en Santiago, brindar oportunidades y recursos de aprendizaje y promover la investigación. Además de ser un importante centro de formación y capacitación para profesores de inglés, fomenta el desarrollo y acceso a programas de aprendizaje de inglés, STEAM y el empoderamiento de mujeres y niñas.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Blog Start -->
    <div class="container-fluid  bg-light py-5">
        <div class="container py-5">
            <div class="row g-4 justify-content-center">
                <div class="col-lg-9 text-center">
                    <h1 class="text-end"><span class="text-primary"><strong>American Space</strong></span> | Misión</h1>
                    <hr />
                    <p style="text-align: justify" class="text-dark mt-3">
                        El American Space se dedica a servir la comunidad de Santiago al ofrecer un espacio de colaboración, innovación y aprendizaje. 
                        El Info Commons y su staff proveen recursos gratuitos para todos los miembros de la comunidad además, en un ambiente moderno, 
                        seguro y acogedor que permite aprender de los Estados Unidos, el idioma inglés y temas importantes para la política pública chilena 
                        y estadounidense. Está enfocado en generar programación variada y de alta calidad incluyendo capacitación a profesores y estudiantes de inglés, 
                        club de robótica, Makerspace, eventos culturales y una oficina de asesoría de EducationUSA.
                    </p>
                </div>
                <div class="col-lg-3">
                    <img class="img-fluid rounded" src="img/about01.png" />
                </div>

            </div>
        </div>
    </div>
    <!-- Blog End -->

    <!-- Blog Start -->
    <div class="container-fluid  bg-white py-5" style="min-height: 2000px;">
        <div class="container py-5">
            <div class="row g-4 justify-content-center">
                <div class="ratio" style="--bs-aspect-ratio: 50%;">
                    <iframe allow="fullscreen" style="min-height: 1700px;" src="https://americanspacesantiago.blogspot.com/"></iframe>
                </div>
            </div>
        </div>
    </div>



    <!-- Blog Start -->
    <div class="container-fluid  bg-light py-5">
        <div class="container py-5">
            <div class="row g-4 justify-content-center">

                <div class="col-lg-12 text-center">
                    <h1 class="text- mb-5"><span class="text-primary"><strong>American Spaces </strong></span>| Nuestras Instalaciones</h1>
                    <hr />
                </div>

                <div class="col-lg-6 text-center mb-3">
                    <div class="ratio" style="--bs-aspect-ratio: 50%;">
                        <iframe class="embed_iframe" src="https://s.insta360.com/p/788e861e40eb3897c662bd0437f26067?e=true&locale=en-us" frameborder="0" width="666" height="413"></iframe>
                    </div>
                </div>

                <div class="col-lg-6 text-center mb-3">
                    <div class="ratio" style="--bs-aspect-ratio: 50%;">
                        <iframe class="embed_iframe" src="https://s.insta360.com/p/b4d0359ceb4ea773320515e85b6ef3da?e=true&locale=en-us" frameborder="0" width="666" height="413"></iframe>
                    </div>
                </div>

                <div class="col-lg-12 text-center">
                    <div class="ratio" style="--bs-aspect-ratio: 50%;">
                        <iframe class="embed_iframe" src="https://s.insta360.com/p/05e9a0b8b342c0646c58b1bc3d61b902?e=true&locale=en-us" frameborder="0" width="666" height="413"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Blog End -->

    <div class="container-fluid  bg-white py-5">
        <div class="container py-5">
            <div class="row g-4 justify-content-center">

                <div class="col-lg-12 text-center">
                    <h1 class="text- mb-5"><span class="text-primary"><strong>American Spaces </strong></span>| Dónde encontrarnos</h1>
                    <hr />
                </div>


                <div class="col-sm-4">
                    <h3>Norteamericano <span class="text-primary">Moneda</span></h3>
                    <img src="img/sedes/moneda2024.png" class="img-fluid rounded w-100 mt-2" alt="">
                </div>
                <div class="col-sm-8">
                    <div class="row">
                        <div class="col-lg-12">
                            <table class="table table-borderless table-sm text-dark">
                                <tr>
                                    <td>
                                        <i class="fas fa-home me-2"></i>Moneda 1467, Santiago 
                                    </td>
                                    <td>
                                        <i class="fas fa-clock me-2"></i>Lunes a Viernes 9:00 a 19:00 hrs
                                    </td>
                                    <td>
                                        <i class="fas fa-mobile-alt me-2"></i>+56 227127130 - Anexo 119
                                    </td>
                                </tr>
                            </table>
                            <hr />
                        </div>
                        <div class="col-lg-12">
                            <iframe width="100%" height="300px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1048.6492414183515!2d-70.65765996530345!3d-33.44269198806315!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9662c5a61dcd7b61%3A0x2e6f65a0c9935211!2sInstituto%20Chileno%20Norteamericano%20sede%20Moneda!5e0!3m2!1ses!2sus!4v1578337576914!5m2!1ses!2sus"></iframe>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mt-5 g-4 justify-content-center">


                <div class="col-sm-4">
                    <h3>Norteamericano <span class="text-primary">Providencia</span></h3>
                    <img src="img/sedes/provi2024.png" class="img-fluid rounded w-100" alt="">
                </div>
                <div class="col-sm-8">
                    <div class="row">
                        <div class="col-lg-12">
                            <table class="table table-borderless table-sm text-dark">
                                <tr>
                                    <td>
                                        <i class="fas fa-home me-2"></i>San Pío x 2485, Providencia
                                    </td>
                                    <td>
                                        <i class="fas fa-clock me-2"></i>Lunes a Viernes 9:00 a 19:00 hrs
                                    </td>
                                </tr>
                            </table>
                            <hr />
                        </div>
                        <div class="col-lg-12">
                            <iframe width="100%" height="300px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1247.369108919398!2d-70.60381171531644!3d-33.42126352192149!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa0d866e2a8924508!2sInstituto%20Chileno%20Norteamericano%20sede%20Providencia!5e0!3m2!1ses!2sus!4v1578337504697!5m2!1ses!2sus"></iframe>
                        </div>

                    </div>
                </div>
            </div>

            <div class="row mt-5 g-4 justify-content-center">
                <div class="col-sm-4">
                    <div class="row">
                        <div class="col-lg-12">
                           <h3>Norteamericano <span class="text-primary">La Florida</span></h3>
                        </div>                      
                        <div class="col-lg-12">
                            <img src="img/sedes/florida2024.png" class="img-fluid rounded w-100" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="row">
                        <div class="col-lg-12">
                            <table class="table table-borderless table-sm text-dark">
                                <tr>
                                    <td>
                                        <i class="fas fa-home me-2"></i>Av. Vicuña Mackenna Poniente 6069, La Florida
                                    </td>
                                    <td>
                                        <i class="fas fa-clock me-2"></i>Lunes a Viernes 9:00 a 19:00 hrs
                                    </td>
                                </tr>                               
                            </table>
                            <hr />
                        </div>
                        <div class="col-lg-12">
                            <iframe width="100%" height="335px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1615.939531869412!2d-70.61074222245492!3d-33.51229439088148!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9662d071d03a7b8b%3A0x2ec7152544e32dfb!2sInstituto%20Chileno%20Norteamericano%20sede%20La%20Florida!5e0!3m2!1ses!2sus!4v1578337286426!5m2!1ses!2sus"></iframe>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

