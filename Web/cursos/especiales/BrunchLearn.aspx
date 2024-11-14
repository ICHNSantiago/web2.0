<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="BrunchLearn.aspx.cs" Inherits="Web.cursos.especiales.BrunchLearn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Norteamericano, Cursos de Inglés para adolescentes, jovenes, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Brunch & Learn | Norteamericano </title>
    <link rel="canonical" href="https://norteamericano.cl/" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <!-- Google Tag Manager (noscript) -->
    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W7349HX"
            height="0" width="0" style="display: none; visibility: hidden"></iframe>
    </noscript>
    <!-- End Google Tag Manager (noscript) -->

    <div class="container-fluid alert-secondary about py-5">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-md-12 ">
                    <div class="bg-white rounded p-5 ">
                        <div class="row ">
                            <div class="col-md-8">
                                <h4 class="text-primary">Curso</h4>
                                <h5 class="display-6">Brunch | <span class="text-primary">& Learn</span></h5>
                                <h5>
                                    <i class="fas fa-user me-2"></i>Presencial                                   
                                       <span class="me-2 ms-2">|</span>
                                    <i class="fas fa-clock me-2"></i>6 Horas 
                                </h5>
                            </div>
                            <div class="col-md-4">
                                <div class="row">
                                    <div class="col-md-12 mt-3">
                                        <table class="text-dark text-center table table-borderless mb-0" runat="server" id="table_tarifas">
                                            <tr>
                                                <td>
                                                    <h2>$</h2>
                                                </td>
                                                <td>
                                                    <h2>
                                                        <strong>175.000
                                                        </strong>
                                                    </h2>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">
                                                    <div class="d-grid gap-2">
                                                        <a href="../../Contact.aspx" class="btn btn-primary"><i class="fas fa-user-tie me-2"></i>Contáctenos </a>
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

                <div class="col-md-12 ">
                    <div class="bg-white rounded p-5 ">

                        <div class="row">
                            <div class="col-md-4">
                                <img class="img-fluid rounded" src="../../img/programas/especial.png" />
                            </div>
                            <div class="col-md-8">
                                <h5 class="display-6 mb-5">Descripción | <span class="text-primary">Bake & Learn</span></h5>

                                <p class="mb-0 text-dark" style="text-align: justify">
                                    Programa de 4 encuentros de fin de semana para conversar en inglés mientras disfrutas de un rico desayuno con un grupo en nivel experto de manejo del idioma.

                                    Incluye un consumo por $14.000 de entre opciones cerradas en el menú de Daniel’s Bakery sucursal Mall Plaza Egaña. El consumo debe ser durante la actividad del B&L para la persona inscrita con el ICHN, que debe presentar el cupón de participación con timbre.
                                </p>

                                <table class="table mt-5 text-dark">
                                    <tr>
                                        <th>Functional</th>
                                        <td>Beginner 2 a Pre Intermediate 1</td>
                                    </tr>
                                    <tr>
                                        <th>Independent</th>
                                        <td>Pre Intermediate 2 a Upper Intermediate 1</td>
                                    </tr>
                                    <tr>
                                        <th>Expert</th>
                                        <td>Upper Intermediate 2 a Advanced 2</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- About End -->

</asp:Content>


