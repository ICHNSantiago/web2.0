<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Programas.aspx.cs" Inherits="Web.Programas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, jovenes, niños niñas, empresas  regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Norteamericano - Programas</title>
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


    <script>
        function mostrarAdultos() {
            document.getElementById("ContentPlaceHolder1_div_adults").style.display = "block";
            document.getElementById("ContentPlaceHolder1_div_teens").style.display = "none";
            document.getElementById("ContentPlaceHolder1_div_kids").style.display = "none";
            document.getElementById("ContentPlaceHolder1_div_preschool").style.display = "none";
            document.getElementById("ContentPlaceHolder1_div_empresas").style.display = "block";
            document.getElementById("ContentPlaceHolder1_div_preparacion").style.display = "block";
            document.getElementById("ContentPlaceHolder1_div_fall").style.display = "none";
        }

        function mostrarTodos() {
            document.getElementById("ContentPlaceHolder1_div_adults").style.display = "block";
            document.getElementById("ContentPlaceHolder1_div_teens").style.display = "block";
            document.getElementById("ContentPlaceHolder1_div_kids").style.display = "block";
            document.getElementById("ContentPlaceHolder1_div_preschool").style.display = "block";
            document.getElementById("ContentPlaceHolder1_div_empresas").style.display = "block";
            document.getElementById("ContentPlaceHolder1_div_preparacion").style.display = "block";
            document.getElementById("ContentPlaceHolder1_div_fall").style.display = "block";
        }

        function mostrarEmpresas() {
            document.getElementById("ContentPlaceHolder1_div_adults").style.display = "none";
            document.getElementById("ContentPlaceHolder1_div_teens").style.display = "none";
            document.getElementById("ContentPlaceHolder1_div_kids").style.display = "none";
            document.getElementById("ContentPlaceHolder1_div_preschool").style.display = "none";
            document.getElementById("ContentPlaceHolder1_div_empresas").style.display = "block";
            document.getElementById("ContentPlaceHolder1_div_preparacion").style.display = "block";
            document.getElementById("ContentPlaceHolder1_div_fall").style.display = "none";
        }


        function mostrarTKP() {
            document.getElementById("ContentPlaceHolder1_div_adults").style.display = "none";
            document.getElementById("ContentPlaceHolder1_div_teens").style.display = "block";
            document.getElementById("ContentPlaceHolder1_div_kids").style.display = "block";
            document.getElementById("ContentPlaceHolder1_div_preschool").style.display = "block";
            document.getElementById("ContentPlaceHolder1_div_empresas").style.display = "none";
            document.getElementById("ContentPlaceHolder1_div_preparacion").style.display = "none";
            document.getElementById("ContentPlaceHolder1_div_fall").style.display = "block";
        }
    </script>


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
                <h4 class="text-primary">Cursos de inglés</h4>
                <h1 class="display-4 mb-4">Programas</h1>
                <p class="mb-0 text-dark">
                    El Instituto Chileno Norteamericano cree en la capacidad e interés de las personas para aprender y desarrollarse. Estamos convencidos del poder que tiene la educación para mejorar la calidad de vida de las personas. Por ello proveemos el mejor ambiente para el aprendizaje.
                </p>
            </div>

            <div class="row g-4 justify-content-center">


                <div class="col-md-12">
                    <div class="alert bg-white text-center">
                        <div class="btn-group " role="group" aria-label="Basic outlined example" runat="server" visible="false">
                            <asp:LinkButton ID="LinkButtonA" class="btn btn-outline-primary" runat="server" OnClick="LinkButtonA_Click">Adultos</asp:LinkButton>
                            <asp:LinkButton ID="LinkButtonJ" class="btn btn-outline-danger" runat="server" OnClick="LinkButtonJ_Click">Jovenes y Niños</asp:LinkButton>
                            <asp:LinkButton ID="LinkButtonE" class="btn btn-outline-success" runat="server" OnClick="LinkButtonE_Click">Empresas</asp:LinkButton>
                            <asp:LinkButton ID="LinkButtonT" class="btn btn-outline-dark" runat="server" OnClick="LinkButtonT_Click">Todos</asp:LinkButton>
                        </div>

                        <div class="btn-group" role="group" aria-label="Basic example">
                            <button type="button" onclick="mostrarAdultos()" class="btn btn-outline-primary">Adultos</button>
                            <button type="button" onclick="mostrarTKP()" class="btn btn-outline-danger">Jovenes y Niños</button>
                            <button type="button" onclick="mostrarEmpresas()" class="btn btn-outline-success">Empresas</button>
                            <button type="button" onclick="mostrarTodos()" class="btn btn-outline-dark">Todos</button>
                        </div>

                    </div>
                </div>

                <%--<div id="nombre" style="display: block;">--%>

                <div class="col-md-6 col-lg-6 col-xl-3" runat="server" id="div_adults" style="display: block;">
                    <div class="service-item shadow article-card">
                        <a href="cursos/adults/Index.aspx">
                            <div class="service-img">
                                <img src="img/programas/adulto.webp" class="img-fluid rounded-top w-100" alt="">
                            </div>
                        </a>
                        <div class="service-content p-4 bg-light rounded">
                            <div class="service-content-inner text-center">
                                <a class="btn btn-primary rounded-pill py-2 px-4" href="cursos/adults/Index.aspx">Saber más</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-6 col-xl-3 " runat="server" id="div_teens" style="display: block;">
                    <div class="service-item shadow article-card">
                        <a href="cursos/teen/Index.aspx">
                            <div class="service-img">
                                <img src="img/programas/teens.webp" class="img-fluid rounded-top w-100" alt="">
                            </div>
                        </a>
                        <div class="service-content p-4 bg-light rounded">
                            <div class="service-content-inner text-center">
                                <a class="btn btn-primary rounded-pill py-2 px-4" href="cursos/teen/Index.aspx">Saber más</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-6 col-xl-3 " runat="server" id="div_kids" style="display: block;">
                    <div class="service-item shadow article-card">
                        <a href="cursos/kid/Index.aspx">
                            <div class="service-img">
                                <img src="img/programas/kids.webp" class="img-fluid rounded-top w-100" alt="">
                            </div>
                        </a>
                        <div class="service-content p-4 bg-light rounded">
                            <div class="service-content-inner text-center">
                                <a class="btn btn-primary rounded-pill py-2 px-4" href="cursos/kid/Index.aspx">Saber más</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-6 col-xl-3 " runat="server" id="div_preschool" style="display: block;">
                    <div class="service-item shadow article-card">
                        <a href="cursos/pre/Index.aspx">
                            <div class="service-img">
                                <img src="img/programas/preschool.webp" class="img-fluid rounded-top w-100" alt="">
                            </div>
                        </a>
                        <div class="service-content p-4 bg-light rounded">
                            <div class="service-content-inner text-center">
                                <a class="btn btn-primary rounded-pill py-2 px-4" href="cursos/pre/Index.aspx">Saber más</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-6 col-xl-3 " runat="server" id="div_empresas" style="display: block;">
                    <div class="service-item shadow article-card">
                        <a href="cursos/empresas/Index.aspx">
                            <div class="service-img">
                                <img src="img/programas/corp1.webp" class="img-fluid rounded-top w-100" alt="">
                            </div>
                        </a>
                        <div class="service-content p-4 bg-light rounded">
                            <div class="service-content-inner text-center">
                                <a class="btn btn-primary rounded-pill py-2 px-4" href="cursos/empresas/Index.aspx">Saber más</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-6 col-xl-3 " runat="server" id="div_preparacion" style="display: block;">
                    <div class="service-item shadow article-card">
                        <a href="cursos/preparacion/Index.aspx">
                            <div class="service-img">
                                <img src="img/programas/preparar1.webp" class="img-fluid rounded-top w-100" alt="">
                            </div>
                        </a>
                        <div class="service-content p-4 bg-light rounded">
                            <div class="service-content-inner text-center">
                                <a class="btn btn-primary rounded-pill py-2 px-4" href="cursos/preparacion/Index.aspx">Saber más</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-6 col-xl-3 " runat="server" visible="false" id="div_fall" style="display: block;">
                    <div class="service-item shadow article-card">
                        <a href="cursos/MiddleTerm/Index.aspx">
                            <div class="service-img">
                                <img src="img/programas/fall4.png" class="img-fluid rounded-top w-100" alt="">
                            </div>
                        </a>
                        <div class="service-content p-4 bg-light rounded">
                            <div class="service-content-inner text-center">
                                <a class="btn btn-primary rounded-pill py-2 px-4" href="cursos/MiddleTerm/Index.aspx">Saber más</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-6 col-xl-3 " runat="server" id="div1" style="display: block;">
                    <div class="service-item shadow article-card">
                        <a href="cursos/Summer.aspx">
                            <div class="service-img">
                                <img src="img/summerprogram.png" class="img-fluid rounded-top w-100" alt="">
                            </div>
                        </a>
                        <div class="service-content p-4 bg-light rounded">
                            <div class="service-content-inner text-center">
                                <a class="btn btn-primary rounded-pill py-2 px-4" href="cursos/Summer.aspx">Saber más</a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
