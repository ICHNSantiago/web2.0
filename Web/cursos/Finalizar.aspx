<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Finalizar.aspx.cs" Inherits="Web.cursos.Finalizar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Finalizar Comprar  | Cursos de Inglés </title>
    <link rel="canonical" href="https://norteamericano.cl/" />
    <link href="../../lib/css/check-radio.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <!-- Google Tag Manager (noscript) -->
    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W7349HX"
            height="0" width="0" style="display: none; visibility: hidden"></iframe>
    </noscript>
    <!-- End Google Tag Manager (noscript) -->

    <div class="row">

        <div class="col-md-12" runat="server" id="div_ok" visible="false">

            <!-- About Start -->
            <div class="container-fluid bg-white about">
                <div class="container py-5">
                    <div class="row justify-content-center">
                        <div class="col-md-12">
                            <div class="mx-auto pb-5 text-center" style="max-width: 1000px;">
                                <h4 class="text-primary">
                                    <img class="img-fluid" src="../img/favicon.png" style="width: 10%" />
                                    Instituto Chileno Norteamericano
                                </h4>
                                <h1 class="display-4 mb-4">Gracias por su compra !</h1>

                                <h5 class="text-dark">En breve recibirás un mail con las instrucciones para finalizar el proceso o si prefieres puedes continuar
                                    con la inscripción de tu curso haciendo clic en el botón <strong class="text-primary">Continuar con tu inscripción</strong>
                                    <br />
                                    <br />
                                    Después de terminar tu inscripción, dentro de 48 hrs. hábiles te enviaremos un correo confirmación con tu boleta y contrato.
                                </h5>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div>
                                <div class="row">
                                    <div class="col-md-3">
                                    </div>
                                    <div class="col-md-3">
                                        <div class="d-grid gap-2">
                                            <a href="../Index.aspx" class="btn btn-secondary text-white">Volver al Home
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="d-grid gap-2">
                                            <asp:LinkButton ID="LinkButtonContinuar" CssClass="btn btn-primary" runat="server" OnClick="LinkButtonContinuar_Click">Continuar con tu inscripción  </asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Blog Start 01 -->
            <div class="container-fluid  bg-light">
                <div class="container py-5">
                    <div class="row g-4 justify-content-center">
                        <div class="col-md-12 text-center">
                            <h1><span class="text-primary"><strong>Información </strong></span>del pago</h1>
                            <hr />
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="alert alert-light">
                                        <table class="table text-dark mb-0">
                                            <tr>
                                                <td>Orden de Compra</td>
                                                <th>
                                                    <asp:Label ID="LabelBuyOrder" runat="server" Text="Nombre"></asp:Label></th>
                                            </tr>
                                            <tr>
                                                <td>Tarjeta
                                                </td>
                                                <th>
                                                    <asp:Label ID="LabeldescripcionPaymentTypeCode" runat="server" Text="Nombre"></asp:Label>
                                                </th>
                                            </tr>
                                            <tr>
                                                <td>Cod.Autorizacion</td>
                                                <th>

                                                    <asp:Label ID="LabelAuthorizationCode" runat="server" Text="Nombre"></asp:Label>
                                                </th>
                                            </tr>

                                            <tr>
                                                <td>Monto
                                                </td>
                                                <th>$
                                                    <asp:Label ID="LabelAmount" runat="server" Text="Nombre"></asp:Label>
                                                </th>
                                            </tr>

                                            <tr>
                                                <td>Cuotas</td>
                                                <th>
                                                    <asp:Label ID="LabelInstallmentsNumber" runat="server" Text="Nombre"></asp:Label></th>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="alert alert-light">
                                        <table class="table text-dark mb-0" style="text-transform: capitalize">
                                            <tr>
                                                <td>Curso
                                                </td>
                                                <th>
                                                    <asp:Label ID="LabelCurso" runat="server" Text="Label"></asp:Label>
                                                </th>
                                            </tr>
                                            <tr>
                                                <td>Tipo
                                                </td>
                                                <th>
                                                    <asp:Label ID="LabelTipo" runat="server" Text="Label"></asp:Label>
                                                </th>
                                            </tr>
                                            <tr>
                                                <td>Cantidad</td>
                                                <th>
                                                    <asp:Label ID="LabelCantidad" runat="server" Text="Label"></asp:Label>
                                                </th>
                                            </tr>
                                            <tr>
                                                <td>Sede</td>
                                                <th>
                                                    <asp:Label ID="LabelSede" runat="server" Text="Label"></asp:Label>
                                                </th>
                                            </tr>
                                            <tr>
                                                <td>Alumno Run</td>
                                                <th>
                                                    <asp:Label ID="LabelRun" runat="server" Text="Label"></asp:Label>
                                                      <asp:Label ID="LabelMail" Visible="false" runat="server" Text="Label"></asp:Label>
                                                </th>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <h5 class="text-dark">Recuerda revisar el email que te enviamos (si no encuentras mira la carpeta de spam), el cual contiene los siguientes pasos para finalizar tu inscripción                                                   
                           
                                    </h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Blog End -->


        </div>

        <div class="col-md-12" runat="server" id="div_error" visible="false">
            <!-- About Start -->
            <div class="container-fluid bg-white about py-5">
                <div class="container py-5">
                    <div class="row g-4 justify-content-center">
                        <div class="col-md-1">
                            <i class="fas fa-times-circle text-danger" style="font-size: 60px; margin-top: 10px"></i>
                        </div>
                        <div class="col-md-11">
                            <table class="table text-dark">
                                <tr>
                                    <td>
                                        <h1>Pago Rechazado
                                        </h1>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="text-dark" style="font-size: 18px;">Posibles causas del este rechazo son:</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="text-dark" style="font-size: 18px;">Error en el ingreso de los datos de su tarjeta(fecha y/o código de seguridad)</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="text-dark" style="font-size: 18px;">Su tarjeta no cuenta con saldo suficiente.</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label style="font-size: 18px;">Tarjeta no habilitada en el sistema financiero </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="LinkButtonVolverIntentar" CssClass="btn btn-success" runat="server" OnClick="LinkButtonVolverIntentar_Click">Volver a intentar el pago</asp:LinkButton>

                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>


</asp:Content>
