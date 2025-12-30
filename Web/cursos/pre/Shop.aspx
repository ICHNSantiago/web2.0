<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="Web.cursos.pre.Shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Preescolares  | Cursos de Inglés </title>
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


       <!-- Service Start -->
    <div class="container-fluid bg-light service py-5">
        <div class="container py-5">
            <div class="text-center mx-auto pb-5">
                <h1><span class="text-primary"><strong>Compra</strong></span> Online</h1>
                <hr />
            </div>
            <div class="row g-4 justify-content-center">

                <div class="col-md-6 col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="service-item shadow">
                        <div class="service-img">
                            <img src="../../img/programas/preschool_largo.webp" class="img-fluid rounded-top w-100" alt="">
                            <div class="service-icon p-3 text-center" runat="server" id="div_descto_regular" visible="false">
                                <strong>
                                    <asp:Label ID="LabelDesctoRegular" runat="server" Text="Label"></asp:Label>% dscto.</strong>
                            </div>
                        </div>
                        <div class="p-4 bg-white rounded-bottom">
                            <div class="service-content-inner">
                                <table class="table text-dark">
                                    <tr class="text-center">
                                        <th colspan="2">
                                            <h3>Curso de Inglés<br />
                                                <strong class="text-primary">Regular</strong>
                                            </h3>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td>Edad</td>
                                        <th><i class="fas fa-user me-2"></i>4 a 6 años</th>
                                    </tr>
                                    <tr>
                                        <td>Duración</td>
                                        <th><i class="fas fa-clock me-2"></i>6 meses</th>
                                    </tr>                                  
                                    <tr>
                                        <td>Inicios *</td>
                                        <th><i class="fas fa-calendar me-2"></i>Mar | Ago</th>
                                    </tr>
                                    <tr class="text-center" runat="server" id="row_sin_promo_regular">
                                        <th colspan="2">
                                            <h1>$ 
                                                <asp:Label ID="LabelTarifaRegular" runat="server" Text="Label"></asp:Label>
                                            </h1>
                                            <h4>&nbsp;  </h4>
                                        </th>
                                    </tr>
                                    <tr class="text-center" runat="server" id="row_con_promo_regular">
                                        <th colspan="2">                                          
                                            <del>
                                                <h4>$ 
                                                    <asp:Label ID="LabelTarifaRegularOld" runat="server" Text="Label"></asp:Label>
                                                </h4>
                                            </del>
                                              <h1 class="text-primary">$ <asp:Label ID="LabelTarifaRegularDescto" runat="server" Text="Label"></asp:Label></h1>
                                        </th>
                                    </tr>
                                    <tr class="text-center">
                                        <th colspan="2">
                                            <div class="d-grid gap-2">
                                                <a class="btn btn-primary rounded-pill py-2 px-4" href="ShopCart.aspx?tipo=regular"><i class="fas fa-shopping-cart me-2"></i>Seleccionar</a>
                                            </div>
                                        </th>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.2s" runat="server" id="div_summer" visible="false">
                    <div class="service-item shadow">
                        <div class="service-img">
                            <img src="../../img/programas/preschool_largo.webp" class="img-fluid rounded-top w-100" alt="">
                            <div class="service-icon p-3 text-center" runat="server" id="div_descto_summer" visible="false">
                                <strong>
                                    <asp:Label ID="LabelDesctoSummer" runat="server" Text="Label"></asp:Label>% dscto.</strong>
                            </div>
                        </div>
                        <div class="p-4 bg-white rounded-bottom">
                            <div class="service-content-inner">
                                <table class="table text-dark">
                                    <tr class="text-center">
                                        <th colspan="2">
                                            <h3>Curso de Inglés<br />
                                                <strong class="text-primary">Summer School</strong>
                                            </h3>
                                        </th>
                                    </tr>                                 
                                    <tr>
                                        <td>Edad</td>
                                        <th><i class="fas fa-user me-2"></i>4 a 6 años</th>
                                    </tr>
                                    <tr>
                                        <td>Duración</td>
                                        <th><i class="fas fa-clock me-2"></i>1 mes</th>
                                    </tr>                                   
                                    <tr>
                                        <td>Inicio</td>
                                        <th><i class="fas fa-calendar me-2"></i>Ene | Feb
                                            <asp:Label ID="LabelYearSummer" runat="server" Text="Label"></asp:Label></th>
                                    </tr>
                                    <tr class="text-center" runat="server" id="row_sin_promo_summer">
                                        <th colspan="2">
                                            <h1>$ 
                                             <asp:Label ID="LabelTarifaSummer" runat="server" Text="Label"></asp:Label>
                                            </h1>
                                            <h4>&nbsp;  </h4>
                                        </th>
                                    </tr>
                                    <tr class="text-center" runat="server" id="row_con_promo_summer">
                                        <th colspan="2">                                          
                                            <del>
                                                <h4>$ 
                                                <asp:Label ID="LabelTarifaSummerOld" runat="server" Text="Label"></asp:Label>
                                                </h4>
                                            </del>
                                              <span class="text-primary h1">$ <asp:Label ID="LabelTarifaSummerDescto" runat="server" Text="Label"></asp:Label>  </span>
                                        </th>
                                    </tr>
                                    <tr class="text-center">
                                        <th colspan="2">
                                            <div class="d-grid gap-2">
                                                <a class="btn btn-primary rounded-pill py-2 px-4" href="ShopCart.aspx?tipo=summer"><i class="fas fa-shopping-cart me-2"></i>Seleccionar</a>
                                            </div>
                                        </th>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-md-6 col-lg-6 col-xl-12 text-dark text-center" data-wow-delay="0.2s">
                    <h5>* Para más opciones de inicio comunícate con nuestro ejecutivos </h5>
                </div>
            </div>
        </div>
    </div>
    <!-- Service End -->


</asp:Content>


