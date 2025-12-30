<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="BlackFriday.aspx.cs" Inherits="Web.BlackFriday" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, jovenes, niños  regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Black Friday | Norteamericano </title>
    <link rel="canonical" href="https://norteamericano.cl/" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Header Start -->
     <div class="container-fluid" style="background-color: #000000">
        <div class="container text-center">
            <img class="img-fluid" src="img/postBF.jpg" />
        </div>
    </div>
    <!-- Header End -->
   
    <!-- Feature Start -->
    <div class="container-fluid service bg-light">
        <div class="container py-5">
            <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 1200px;">
                <h1 class="display-4 mb-4">Black Friday </h1>
                <p class="mb-0 h5">
                   ¿Todavía no compraste a precios de BlackFriday?
                    <br />
                    Es tu momento para adelantar tus compras. Ahorra en nuestros programas ¡Prepárate!               
                </p>
            </div>
            <div class="row g-4 justify-content-center">

                <div class="col-md-6 col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="service-item shadow">
                        <div class="service-img">
                            <img src="../../img/programas/adulto_largo.webp" class="img-fluid rounded-top w-100" alt="">

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

                <div class="col-md-6 col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.2s" runat="server" id="div_summer" visible="false">
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

            <div class="row g-4 mt-5 justify-content-center">
                <div class="col-md-6 col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="service-item shadow">
                        <div class="service-img">
                            <img src="../../img/programas/teens_largo.webp" class="img-fluid rounded-top w-100" alt="">

                            <div class="service-icon p-3 text-center" runat="server" id="div_descto_Teens_regular" visible="false">
                                <strong>
                                    <asp:Label ID="LabelTeensDesctoRegular" runat="server" Text="Label"></asp:Label>% dscto.</strong>
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
                                            <h3 class="text-primary">$<asp:Label ID="LabelTarifaTeensRegularDescto" runat="server" Text="Label"></asp:Label></h3>
                                        </th>
                                        <th class="text-start">
                                            <del><small>$<asp:Label ID="LabelTarifaTeensRegularOld" runat="server" Text="Label"></asp:Label></small></del>
                                        </th>

                                    </tr>
                                    <tr class="text-center" runat="server" id="row_sin_promo_regular_Teens">
                                        <th colspan="2">
                                            <h1>$ 
                                     <asp:Label ID="LabelTarifaTeensRegular" runat="server" Text="Label"></asp:Label>
                                            </h1>
                                            <h4>&nbsp;  </h4>
                                        </th>
                                    </tr>
                                    <tr class="text-center">
                                        <th colspan="2">
                                            <div class="d-grid gap-2">
                                                <a class="btn btn-primary btn-sm py-2 px-4" href="cursos/teen/Index.aspx">Saber más </a>
                                            </div>
                                        </th>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.2s" runat="server" id="div_summer_teens" visible="false">
                    <div class="service-item shadow">
                        <div class="service-img">
                            <img src="../../img/programas/teens_largo.webp" class="img-fluid rounded-top w-100" alt="">
                            <div class="service-icon p-3 text-center" runat="server" id="div_descto_summer_Teens" visible="false">
                                <strong>
                                    <asp:Label ID="LabelDesctoSummerTeens" runat="server" Text="Label"></asp:Label>% dscto.</strong>
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
                                    <tr class="text-center" runat="server" id="row_sin_promo_summer_Teens">
                                        <th colspan="2">
                                            <h1>$
                                     <asp:Label ID="LabelTarifaTeensSummer" runat="server" Text="Label"></asp:Label></h1>
                                            <h4>&nbsp;  </h4>
                                        </th>
                                    </tr>
                                    <tr class="text-center" runat="server" id="Tr1">
                                        <th class="text-end">
                                            <h3 class="text-primary">$  
                                     <asp:Label ID="LabelTarifaTeensSummerDescto" runat="server" Text="Label"></asp:Label></h3>
                                        </th>
                                        <th class="text-start">
                                            <del><small>$
                                     <asp:Label ID="LabelTarifaTeensSummerOld" runat="server" Text="Label"></asp:Label></small>  </del>
                                        </th>
                                    </tr>
                                    <tr class="text-center">
                                        <th colspan="2">
                                            <div class="d-grid gap-2">
                                                <a class="btn btn-primary btn-sm py-2 px-4" href="cursos/teen/Index.aspx?tipo=summer">Saber más </a>
                                            </div>
                                        </th>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row g-4 mt-5 justify-content-center">
                <div class="col-md-6 col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="service-item shadow">
                        <div class="service-img">
                            <img src="../../img/programas/Kids_largo.webp" class="img-fluid rounded-top w-100" alt="">

                            <div class="service-icon p-3 text-center" runat="server" id="div_descto_Kids_regular" visible="false">
                                <strong>
                                    <asp:Label ID="LabelKidsDesctoRegular" runat="server" Text="Label"></asp:Label>% dscto.</strong>
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
                                            <h3 class="text-primary">$<asp:Label ID="LabelTarifaKidsRegularDescto" runat="server" Text="Label"></asp:Label></h3>
                                        </th>
                                        <th class="text-start">
                                            <del><small>$<asp:Label ID="LabelTarifaKidsRegularOld" runat="server" Text="Label"></asp:Label></small></del>
                                        </th>

                                    </tr>
                                    <tr class="text-center" runat="server" id="row_sin_promo_regular_Kids">
                                        <th colspan="2">
                                            <h1>$ 
                            <asp:Label ID="LabelTarifaKidsRegular" runat="server" Text="Label"></asp:Label>
                                            </h1>
                                            <h4>&nbsp;  </h4>
                                        </th>
                                    </tr>
                                    <tr class="text-center">
                                        <th colspan="2">
                                            <div class="d-grid gap-2">
                                                <a class="btn btn-primary btn-sm py-2 px-4" href="cursos/kid/Index.aspx">Saber más </a>
                                            </div>
                                        </th>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.2s" runat="server" id="div_summer_Kids" visible="false">
                    <div class="service-item shadow">
                        <div class="service-img">
                            <img src="../../img/programas/Kids_largo.webp" class="img-fluid rounded-top w-100" alt="">
                            <div class="service-icon p-3 text-center" runat="server" id="div_descto_summer_Kids" visible="false">
                                <strong>
                                    <asp:Label ID="LabelDesctoSummerKids" runat="server" Text="Label"></asp:Label>% dscto.</strong>
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
                                    <tr class="text-center" runat="server" id="row_sin_promo_summer_Kids">
                                        <th colspan="2">
                                            <h1>$
                            <asp:Label ID="LabelTarifaKidsSummer" runat="server" Text="Label"></asp:Label></h1>
                                            <h4>&nbsp;  </h4>
                                        </th>
                                    </tr>
                                    <tr class="text-center" runat="server" id="Tr2">
                                        <th class="text-end">
                                            <h3 class="text-primary">$  
                            <asp:Label ID="LabelTarifaKidsSummerDescto" runat="server" Text="Label"></asp:Label></h3>
                                        </th>
                                        <th class="text-start">
                                            <del><small>$
                            <asp:Label ID="LabelTarifaKidsSummerOld" runat="server" Text="Label"></asp:Label></small>  </del>
                                        </th>
                                    </tr>
                                    <tr class="text-center">
                                        <th colspan="2">
                                            <div class="d-grid gap-2">
                                                <a class="btn btn-primary btn-sm py-2 px-4" href="cursos/kid/Index.aspx?tipo=summer">Saber más </a>
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
                <h1><span class="text-primary">Términos </span>y Condiciones</h1>
            </div>
            <div class="row g-4">
                <div class="col-md-2 text-center">
                    <i class="fas fa-shopping-bag text-primary mt-2" style="font-size: 50px"></i>
                </div>
                <div class="col-md-10">
                    <h4 class="text-primary">Programas y cursos disponibles</h4>
                    <h5>El comprador podrá comprar cualquiera de los programas y cursos disponibles en la web durante las fechas del evento a un valor rebajado en 30% de los precios de lista.</h5>
                    <hr />
                </div>

                <div class="col-md-2 text-center">
                    <i class="fas fa-percent  text-primary  mt-2" style="font-size: 50px"></i>
                </div>
                <div class="col-md-10">
                    <h4 class="text-primary">Promoción</h4>
                    <h5>La promoción a la que acceda no será acumulable con otros convenios o descuentos.</h5>
                    <hr />
                </div>
                <div class="col-md-2 text-center">
                    <i class="fas fa-user text-primary  mt-2" style="font-size: 50px"></i>
                </div>
                <div class="col-md-10">
                    <h4 class="text-primary">Personas naturales </h4>
                    <h5>La promoción de Black Friday aplica solamente a personas naturales y sin derecho a uso de franquicia tributable SENCE.</h5>
                    <hr />
                </div>
                <div class="col-md-2 text-center">
                    <i class="fas fa-calendar text-primary  mt-3" style="font-size: 50px"></i>
                </div>
                <div class="col-md-10">
                    <h4 class="text-primary">Uso del curso</h4>
                    <h5>El comprador o beneficiario final del curso deberá hacer uso del curso comprado dentro de los siguientes 12 meses después de la compra.</h5>
                    <hr />
                </div>
                <div class="col-md-2 text-center">
                    <i class="fas fa-calendar text-primary  mt-3" style="font-size: 50px"></i>
                </div>
                <div class="col-md-10">
                    <h4 class="text-primary">Uso del programa</h4>
                    <h5>El beneficiario del curso podrá hacer uso del curso en el programa respectivo comprado y no otro. Por ejemplo: Summer School Teens.</h5>
                    <hr />
                </div>
                <div class="col-md-2 text-center">
                    <i class="fas fa-pencil-alt text-primary  mt-3" style="font-size: 50px"></i>
                </div>
                <div class="col-md-10">
                    <h4 class="text-primary">Test Diagnóstico</h4>
                    <h5>El beneficiario del curso deberá rendir el Test Diagnóstico oficial de EL INSTITUTO una vez que haya comprado su curso y antes de poder matricularse.</h5>
                    <hr />
                </div>
                <div class="col-md-2 text-center">
                    <i class="fas fa-file-alt text-primary  mt-3" style="font-size: 50px"></i>
                </div>
                <div class="col-md-10">
                    <h4 class="text-primary">Inscripción del Curso</h4>
                    <h5>El beneficiario del curso deberá realizar el trámite formal de matrícula escogiendo sede, días y horarios disponibles para el nivel indicado en el resultado del Test Diagnóstico al menos 48 horas hábiles antes de asistir a clases.
                    </h5>
                    <hr />
                </div>
                <div class="col-md-2 text-center">
                    <i class="fas fa-envelope text-primary  mt-3" style="font-size: 50px"></i>
                </div>
                <div class="col-md-10">
                    <h4 class="text-primary">Inscripción del Curso</h4>
                    <h5>El comprador o beneficiario se informará de las fechas, horarios y niveles disponibles para cursos, según programa comprado, a través de los canales oficiales de la institución disponibles más abajo en términos y condiciones del servicio.
                    </h5>
                    <hr />
                </div>
            </div>

        </div>
    </div>
</asp:Content>
