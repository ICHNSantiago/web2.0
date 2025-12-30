<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Summer.aspx.cs" Inherits="Web.Summer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, jovenes, niños  regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Summer School | Norteamericano </title>
    <link rel="canonical" href="https://norteamericano.cl/" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Header Start -->
    <div class="container-fluid" style="background-color: #ffffff">
        <div class="text-center">
            <img class="img-fluid" src="img/bannsumm2026.png" />
        </div>
    </div>
    <!-- Header End -->

    <!-- Feature Start -->
    <div class="container-fluid service bg-light">
        <div class="container py-5">
            <div class="text-center mx-auto pb-5 wow fadeInUp mt-5" data-wow-delay="0.2s" style="max-width: 1200px;">
                <h1><i class="fas fa-sun me-2 text-warning"></i>Summer School 2026 <i class="ms-2 text-success fas fa-umbrella-beach"></i></h1>
                <br />
                <p class="mb-0 h5">
                    ¡Este verano aprovecha tu tiempo al máximo y lleva tu inglés al siguiente nivel 
                    con nuestro Summer School 2026! Durante enero y febrero, te ofrecemos un programa intensivo pensado 
                    especialmente para que adultos, jovenes y niños  puedan avanzar un nivel completo de inglés en tan solo un mes.
                </p>

            </div>
            <div class="row g-4 justify-content-center">

                <div class="col-md-6 col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="service-item shadow">
                        <div class="service-img">
                            <img src="img/programas/banneshopsummer.png" class="img-fluid rounded-top w-100" alt="">

                            <div class="service-icon p-3 text-center" runat="server" id="div_descto_Adultos_regular" visible="false">
                                <strong>
                                    <asp:Label ID="LabelAdultosDesctoRegular" runat="server" Text="Label"></asp:Label>% dscto.</strong>
                            </div>
                        </div>
                        <div class="p-4 bg-white rounded-bottom">
                            <div class="service-content-inner">
                                <table class="table text-dark">
                                    <tr class="text-center">
                                        <th colspan="2">
                                            <h5>Curso de Inglés <strong class="text-primary">Regular</strong></h5>
                                        </th>
                                    </tr>
                                    <tr class="text-center">
                                        <th class="text-end">
                                            <h3 class="text-primary">$<asp:Label ID="LabelTarifaAdultosRegularDescto" runat="server" Text="Label"></asp:Label></h3>
                                        </th>
                                        <th class="text-start">
                                            <del><small>$<asp:Label ID="LabelTarifaAdultosRegularOld" runat="server" Text="Label"></asp:Label></small></del>
                                        </th>

                                    </tr>
                                    <tr class="text-center" runat="server" id="row_sin_promo_regular_Adultos">
                                        <th colspan="2">
                                            <h1>$ 
                                                <asp:Label ID="LabelTarifaAdultosRegular" runat="server" Text="Label"></asp:Label>
                                            </h1>
                                            <h4>&nbsp;  </h4>
                                        </th>
                                    </tr>
                                    <tr class="text-center">
                                        <th colspan="2">
                                            <div class="d-grid gap-2">
                                                <a class="btn btn-primary btn-sm py-2 px-4" href="cursos/adults/Index.aspx">Saber más </a>
                                            </div>
                                        </th>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="service-item shadow">
                        <div class="service-img">
                            <img src="../../img/programas/adulto_largo.webp" class="img-fluid rounded-top w-100" alt="">
                            <div class="service-icon p-3 text-center" runat="server" id="div_descto_intensivo_Adultos" visible="false">
                                <strong>
                                    <asp:Label ID="LabelDesctoIntensivoAdultos" runat="server" Text="Label"></asp:Label>% dscto.</strong>
                            </div>
                        </div>
                        <div class="p-4 bg-white rounded-bottom">
                            <div class="service-content-inner">
                                <table class="table text-dark">
                                    <tr class="text-center">
                                        <th colspan="2">
                                            <h5>Curso de Inglés <strong class="text-primary">Intensivo</strong>
                                            </h5>
                                        </th>
                                    </tr>
                                    <tr class="text-center">
                                        <th class="text-end">
                                            <h3 class="text-primary">$
                                                <asp:Label ID="LabelTarifaAdultosintensivoDescto" runat="server" Text="Label"></asp:Label>
                                            </h3>
                                        </th>
                                        <th class="text-start">
                                            <del>
                                                <small>$
                                                    <asp:Label ID="LabelTarifaAdultosintensivoOld" runat="server" Text="Label"></asp:Label></small>
                                            </del>
                                        </th>
                                    </tr>
                                    <tr class="text-center">
                                        <th colspan="2">
                                            <div class="d-grid gap-2">
                                                <a class="btn btn-primary btn-sm  py-2 px-4" href="cursos/adults/Index.aspx">Saber más </a>
                                            </div>
                                        </th>
                                    </tr>
                                    <tr class="text-center" runat="server" id="row_sin_promo_intensivo_Adultos">
                                        <th colspan="2">
                                            <h1>$
                                                <asp:Label ID="LabelTarifaAdultosintensivo" runat="server" Text="Label"></asp:Label></h1>
                                            <h4>&nbsp;  </h4>
                                        </th>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.2s" runat="server">
                    <div class="service-item shadow">
                        <div class="service-img">
                            <img src="../../img/programas/adulto_largo.webp" class="img-fluid rounded-top w-100" alt="">
                            <div class="service-icon p-3 text-center" runat="server" id="div_descto_summer_Adultos" visible="false">
                                <strong>
                                    <asp:Label ID="LabelDesctoSummerAdultos" runat="server" Text="Label"></asp:Label>% dscto.</strong>
                            </div>
                        </div>
                        <div class="p-4 bg-white rounded-bottom">
                            <div class="service-content-inner">
                                <table class="table text-dark">
                                    <tr class="text-center">
                                        <th colspan="2">
                                            <h5>Curso Inglés <strong class="text-primary">Summer School</strong></h5>
                                        </th>
                                    </tr>
                                    <tr class="text-center" runat="server" id="row_sin_promo_summer_Adultos">
                                        <th colspan="2">
                                            <h1>$
                                                <asp:Label ID="LabelTarifaAdultosSummer" runat="server" Text="Label"></asp:Label></h1>
                                            <h4>&nbsp;  </h4>
                                        </th>
                                    </tr>
                                    <tr class="text-center" runat="server" id="row_con_promo_summer">
                                        <th class="text-end">
                                            <h3 class="text-primary">$  
                                                <asp:Label ID="LabelTarifaAdultosSummerDescto" runat="server" Text="Label"></asp:Label></h3>
                                        </th>
                                        <th class="text-start">
                                            <del><small>$
                                                <asp:Label ID="LabelTarifaAdultosSummerOld" runat="server" Text="Label"></asp:Label></small>  </del>
                                        </th>
                                    </tr>
                                    <tr class="text-center">
                                        <th colspan="2">
                                            <div class="d-grid gap-2">
                                                <a class="btn btn-primary btn-sm py-2 px-4" href="cursos/adults/Index.aspx?tipo=summer">Saber más </a>
                                            </div>
                                        </th>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Feature End -->

    <div class="container-fluid feature bg-white">
        <div class="container py-5">
            <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 1200px;">
                <h1><span class="text-primary">¿Qué encontrarás en nuestro </span>Summer School?</h1>
            </div>
            <div class="row g-4">

                <div class="col-md-2 text-center">
                    <i class="fas fa-calendar text-primary  mt-3" style="font-size: 50px"></i>
                </div>
                <div class="col-md-10">
                    <h4 class="text-primary">Modalidad de Clases</h4>
                    <span class="text-dark">Clases de lunes a jueves, en modalidad presencial u online, para que elijas lo que más te acomode.</span>
                    <hr />
                </div>

                <div class="col-md-2 text-center">
                    <i class="fas fa-user text-primary  mt-4" style="font-size: 50px"></i>
                </div>
                <div class="col-md-10">
                    <h4 class="text-primary">Summer School - ADULTS  </h4>
                    <span class="text-dark">Nuestro programa está diseñado para que los estudiantes avancen rápidamente gracias a una experiencia dinámica y totalmente práctica. Consta de 10 niveles, desde principiante hasta avanzado, donde los participantes desarrollan las 4 habilidades del idioma a través de actividades colaborativas, comunicativas y centradas en el uso real del inglés.</span>
                    <hr />
                </div>

                <div class="col-md-2 text-center">
                    <i class="fas fa-user text-success  mt-4" style="font-size: 50px"></i>
                </div>
                <div class="col-md-10">
                    <h4 class="text-success">Summer School - TEENS   </h4>
                    <span class="text-dark">Un programa especialmente diseñado para jóvenes que buscan mejorar su inglés de manera práctica y entretenida en solo un mes.                          
                        El curso se centra en el desarrollo de la comunicación oral, el pensamiento crítico y las habilidades esenciales del idioma en contextos reales y relevantes para adolescentes.
                        
                    </span>
                    <hr />
                </div>

                <div class="col-md-2 text-center">
                    <i class="fas fa-user text-danger  mt-4" style="font-size: 50px"></i>
                </div>
                <div class="col-md-10">
                    <h4 class="text-danger">Summer School - KIDS    </h4>
                    <span class="text-dark">Talleres presenciales u online donde los niños aprenden inglés de manera inicial mediante juegos, proyectos, canciones, trabajo en equipo y/o actividades guiadas por un profesor especializado.
Los estudiantes desarrollan vocabulario básico y expresiones simples a través de sesiones temáticas que promueven un clima amigable, seguro y motivante.
                    </span>
                    <hr />
                </div>
            </div>

        </div>
    </div>
</asp:Content>

