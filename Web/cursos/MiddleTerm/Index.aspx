<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web.cursos.MiddleTerm.Index" %>
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
                <h4 class="text-primary">Programas</h4>
                <h1 class="display-4 mb-4">Middle Term</h1>
               <%-- <p class="mb-0 text-dark">
                    El Instituto Chileno Norteamericano cree en la capacidad e interés de las personas para aprender y desarrollarse. Estamos convencidos del poder que tiene la educación para mejorar la calidad de vida de las personas. Por ello proveemos el mejor ambiente para el aprendizaje.
                </p>--%>
            </div>

            <div class="row g-4 justify-content-center">

                <%--<div id="nombre" style="display: block;">--%>

                <div class="col-md-6 col-lg-6 col-xl-3" runat="server" id="div_adults" style="display: block;">
                    <div class="service-item shadow article-card">
                        <a href="kid.aspx">
                            <div class="service-img">
                                <img src="../../img/programas/BANNERKIDS1.png" class="img-fluid rounded-top w-100" alt="">
                            </div>
                        </a>
                        <div class="service-content p-4 bg-light rounded">
                            <div class="service-content-inner text-center">
                                <a class="btn btn-primary rounded-pill py-2 px-4" href="Kid.aspx">Saber más</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-6 col-xl-3 " runat="server" id="div_teens" style="display: block;">
                    <div class="service-item shadow article-card">
                        <a href="Teen.aspx">
                            <div class="service-img">
                                <img src="../../img/programas/BANNERTEENS2.png" class="img-fluid rounded-top w-100" alt="">
                            </div>
                        </a>
                        <div class="service-content p-4 bg-light rounded">
                            <div class="service-content-inner text-center">
                                <a class="btn btn-primary rounded-pill py-2 px-4" href="Teen.aspx">Saber más</a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>


