<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Summer.aspx.cs" Inherits="Web.cursos.Summer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, jovenes, niños niñas, empresas  regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
   <title>Norteamericano - Middle Term</title>
   <link rel="canonical" href="https://norteamericano.cl/" />

    <style>
        .feature .feature-item-ichn {
            border-radius: 10px;
            background: var(--bs-white);
            transition: 0.5s;
        }

            .feature .feature-item-ichn .feature-icon {
                color: var(--bs-primary);
            }

            .feature .feature-item-ichn .feature-icon {
                position: relative;
                width: 100px;
                display: inline-flex;
                align-items: center;
                justify-content: center;
                border-bottom-left-radius: 10px;
                border-bottom-right-radius: 10px;
                background: var(--bs-light);
            }
    </style>

    <style>
        .article-card:hover {
            transform: translateY(-15px);
            box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.22);
            transition: all 500ms
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

    <!-- Feature Start -->
    <div class="container-fluid feature alert-secondary pb-5">
        <div class="container pb-5">
            <br />
            <br />
            <br />
            <div class="text-center mx-auto pb-5" style="max-width: 1000px;">
                <h1><span><i class="fas fa-sun me-2 text-warning"></i>Summer School 2026<i class="ms-2 text-success fas fa-umbrella-beach"></i></span></h1>
                     <br />
              <h5>
                    ¡Este verano aprovecha tu tiempo al máximo y lleva tu inglés <br /> al siguiente nivel con nuestro Summer School! 
              </h5>
            </div>

            <div class="row g-4 justify-content-center">

                <%--<div id="nombre" style="display: block;">--%>

                <div class="col-md-6 col-lg-6 col-xl-3" runat="server" id="div_adults" style="display: block;">
                    <div class="service-item shadow article-card">
                        <a href="adults/Index.aspx?tipo=summer">
                            <div class="service-img">
                                <img src="../img/SS_ADULTS.png" class="img-fluid rounded-top w-100" alt="">
                            </div>
                        </a>
                        <div class="service-content p-4 bg-light rounded">
                            <div class="service-content-inner text-center">
                                <a class="btn btn-primary rounded-pill py-2 px-4" href="adults/Index.aspx?tipo=summer">Saber más</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-6 col-xl-3 " runat="server" id="div_teens" style="display: block;">
                    <div class="service-item shadow article-card">
                        <a href="teen/Index.aspx?tipo=summer">
                            <div class="service-img">
                                <img src="../img/SS_TEENS.png" class="img-fluid rounded-top w-100" alt="">
                            </div>
                        </a>
                        <div class="service-content p-4 bg-light rounded">
                            <div class="service-content-inner text-center">
                                <a class="btn btn-primary rounded-pill py-2 px-4" href="teen/Index.aspx?tipo=summer">Saber más</a>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-md-6 col-lg-6 col-xl-3 " runat="server" id="div1" style="display: block;">
                    <div class="service-item shadow article-card">
                        <a href="kid/Index.aspx?tipo=summer">
                            <div class="service-img">
                                <img src="../img/SS_KIDS.png" class="img-fluid rounded-top w-100" alt="">
                            </div>
                        </a>
                        <div class="service-content p-4 bg-light rounded">
                            <div class="service-content-inner text-center">
                                <a class="btn btn-primary rounded-pill py-2 px-4" href="kid/Index.aspx?tipo=summer">Saber más</a>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>

</asp:Content>



