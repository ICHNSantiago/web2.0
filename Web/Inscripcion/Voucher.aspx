<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Voucher.aspx.cs" Inherits="Web.Inscripcion.Voucher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Bienvenida | Norteamericano </title>
    <link rel="canonical" href="https://norteamericano.cl/" />
    <link href="../../lib/css/check-radio.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script>
        window.history.forward();
        function noBack() {
            window.history.forward();
        }
    </script>

    <!-- About Start -->
    <div class="container-fluid alert-secondary about py-5" onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload=" ">
        <div class="container">
            <div class="row g-5">
                <div class="col-xl-12 ">
                    <div class="bg-white rounded p-5 shadow">
                        <div class="row ">
                            <div class="col-lg-12 text-center">
                                <img src="../img/logo.png" />
                                <hr />
                            </div>
                            <div class="col-lg-12 mb-2">
                                <h3><span class="text-primary"><strong>¡ Bienvenido al </strong></span>Norteamericano !</h3>
                            </div>
                            <div class="col-lg-12">
                                Estamos felices de que estés aquí. El Norteamericano cree en la capacidad e interés de las personas para aprender y desarrollarse. Estamos convencidos del poder que tiene la educación para mejorar la calidad de vida de las personas. Por ello proveemos el mejor ambiente para el aprendizaje.
                              
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-12 ">
                    <div class="bg-white rounded p-5 shadow">
                        <div class="row ">
                            <div class="col-lg-12 mb-2 text-center">
                                <h3><span class="text-primary"><strong>Resumen</strong></span> de la compra</h3>
                            </div>
                            <div class="col-lg-12 text-center">
                                Hemos enviado el contrato y la boleta al correo  <strong>
                                    <asp:Label ID="LabelMail" CssClass="text-dark" runat="server" Text="mail@mail.cl"></asp:Label></strong>
                            </div>
                            <div class="col-lg-12 mb-5 text-center">
                                Para revisar tu curso y documentación, lo puedes acceder a través de este  <a class="text-decoration-underline" href="https://alumnos.sam.norteamericano.cl"><strong>Link</strong></a> o  puedes ingresar al acceso de alumnos en <a class="text-decoration-underline" href="nortemaericano.cl "><strong>norteamericano.cl</strong> </a>
                            </div>
                            <div class="col-lg-6">
                                <table class="table table-sm mb-0 text-dark">
                                    <tr>
                                        <td colspan="2">
                                            <h4>Alumno</h4>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Nombre</td>
                                        <th>
                                            <asp:Label ID="LabelAlumnoNombre" CssClass="text-capitalize" runat="server" Text="NOMBRE APELLIDO APELLIDO"></asp:Label>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td>Run</td>
                                        <th>
                                            <asp:Label ID="LabelAlumnoID" runat="server" Text="11111111-1"></asp:Label>
                                        </th>
                                    </tr>
                                    <tr runat="server" id="row_apo_nom">
                                        <td>Apoderado</td>
                                        <th>
                                            <asp:Label ID="LabelApoderadoNombre" CssClass="text-capitalize" runat="server" Text=""></asp:Label>
                                        </th>
                                    </tr>
                                    <tr runat="server" id="row_apo_id">
                                        <td>Run</td>
                                        <th>
                                            <asp:Label ID="LabelApoderadoID" runat="server" Text="11111111-1"></asp:Label>
                                        </th>
                                    </tr>
                                </table>
                            </div>

                            <div class="col-lg-6">
                                <table class="table table-sm mb-0 text-dark">
                                    <tr>
                                        <td colspan="2">
                                            <h4>Boleta</h4>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Folio</td>
                                        <th>
                                            <asp:Label ID="LabelBoletaID" runat="server" Text="000000000"></asp:Label>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td>Total</td>
                                        <th>
                                            <asp:Label ID="LabelBoletaMonto" runat="server" Text=""></asp:Label>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td>Forma de Pago</td>
                                        <th>
                                            <asp:Label ID="Label2" runat="server" Text="Webpay"></asp:Label>
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

</asp:Content>
