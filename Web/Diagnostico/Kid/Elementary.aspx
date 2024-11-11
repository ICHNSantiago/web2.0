<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Elementary.aspx.cs" Inherits="Web.Diagnostico.Kid.Elementary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Diagnóstico | Cursos de Inglés </title>
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

    <script type="text/javascript">
        function contar(obj, destino) {
            if (obj.value.length == 1) {
                if (destino == 1) {
                    ContentPlaceHolder1_TextBox_03_02.focus();
                }

                if (destino == 2) {
                    ContentPlaceHolder1_TextBox_03_03.focus();
                }

                if (destino == 3) {
                    ContentPlaceHolder1_TextBox_03_04.focus();
                }

                if (destino == 4) {
                    ContentPlaceHolder1_TextBox_03_05.focus();
                }

                if (destino == 5) {
                    ContentPlaceHolder1_TextBox_03_06.focus();
                }
            }
        }

        function contar17_02(obj, destino) {
            if (obj.value.length == 1) {
                if (destino == 1) {
                    ContentPlaceHolder1_TextBox_02_02.focus();
                }

                if (destino == 2) {
                    ContentPlaceHolder1_TextBox_02_03.focus();
                }
            }

        }

        function contar17_04(obj, destino) {
            if (obj.value.length == 1) {
                if (destino == 1) {
                    ContentPlaceHolder1_TextBox_04_02.focus();
                }

                if (destino == 2) {
                    ContentPlaceHolder1_TextBox_04_03.focus();
                }

                if (destino == 3) {
                    ContentPlaceHolder1_TextBox_04_04.focus();
                }

                if (destino == 4) {
                    ContentPlaceHolder1_TextBox_04_05.focus();
                }
            }

        }
    </script>


    <asp:Label ID="LabelTestNivel" Visible="false" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="LabelTestTipo" Visible="false" runat="server" Text="Label"></asp:Label>
    <div class="container-fluid alert-secondary about py-5" onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload=" ">
        <div class="row mt-5">
            <div class="col-md-2">
            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-12">
                        <div class="row">
                            <asp:Label ID="LabelPreguntaNumber" Visible="false" runat="server" Text="1"></asp:Label>
                            <div class="col-md-12">
                                <div class="row" runat="server" id="pregunta_01">
                                    <div class="col-md-12">
                                        <div class="alert alert-light shadow text-dark text-center">
                                            <h4>
                                                <strong>
                                                    <asp:Label ID="LabelPregunta01" runat="server" Text="Label"></asp:Label>
                                                    <asp:Label ID="LabelPregunta01R" Visible="false" runat="server" Text="Label"></asp:Label>
                                                </strong>
                                            </h4>
                                        </div>
                                    </div>


                                    <div class="col-md-12" runat="server" id="div_01_imagenes">
                                        <div class="row">
                                            <div class="col-md-4 text-center">
                                                <div class="alert alert-light shadow text-dark">
                                                    <div class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta01op01_img" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta01_opcion" OnCheckedChanged="Pregunta01_CheckedChanged" Text="<img class='img-fluid rounded w-50' src='img/17/kid01_01.png'/>" runat="server" />
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="alert alert-light shadow text-dark">
                                                    <div class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta01op02_img" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta01_opcion" OnCheckedChanged="Pregunta01_CheckedChanged" Text="<img class='img-fluid rounded w-50' src='img/17/kid01_02.png'/>" runat="server" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="alert alert-light shadow text-dark">
                                                    <div class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta01op03_img" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta01_opcion" OnCheckedChanged="Pregunta01_CheckedChanged" Text="<img class='img-fluid rounded w-50' src='img/17/kid01_03.png'/>" runat="server" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-12" runat="server" id="div_01_opciones">
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="shadow text-dark">
                                                    <img class="img-fluid rounded" runat="server" visible="false" id="img_01_16" src="img/16/kid01.png" />
                                                </div>
                                            </div>
                                            <div class="col-md-7">
                                                <div class="alert alert-light shadow text-dark">
                                                    <table class="table">
                                                        <tr runat="server" id="Pregunta01_01" visible="false">
                                                            <td class="checkIchn">
                                                                <asp:RadioButton ID="Pregunta01op01" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta01_opcion" Text="Opcion" runat="server" OnCheckedChanged="Pregunta01_CheckedChanged" />
                                                            </td>
                                                        </tr>
                                                        <tr runat="server" id="Pregunta01_02" visible="false">
                                                            <td class="checkIchn">
                                                                <asp:RadioButton ID="Pregunta01op02" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta01_opcion" Text="Opcion" runat="server" OnCheckedChanged="Pregunta01_CheckedChanged" />
                                                            </td>
                                                        </tr>
                                                        <tr runat="server" id="Pregunta01_03" visible="false">
                                                            <td class="checkIchn">
                                                                <asp:RadioButton ID="Pregunta01op03" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta01_opcion" Text="Opcion" runat="server" OnCheckedChanged="Pregunta01_CheckedChanged" />
                                                            </td>
                                                        </tr>
                                                        <tr runat="server" id="Pregunta01_04" visible="false">
                                                            <td class="checkIchn">
                                                                <asp:RadioButton ID="Pregunta01op04" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta01_opcion" Text="Opcion" runat="server" OnCheckedChanged="Pregunta01_CheckedChanged" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row" runat="server" id="pregunta_02" visible="false">
                                    <div class="col-md-12">
                                        <div class="alert alert-light shadow text-dark text-center">
                                            <h4>
                                                <strong>
                                                    <asp:Label ID="LabelPregunta02" runat="server" Text="Label"></asp:Label>
                                                    <asp:Label ID="LabelPregunta02R" Visible="false" runat="server" Text="Label"></asp:Label>
                                                </strong>
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-md-12" runat="server" id="div_02_opciones">
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="shadow text-dark">
                                                    <img class="img-fluid rounded" runat="server" visible="false" id="img_02_16" src="img/16/kid02.png" />
                                                </div>
                                            </div>
                                            <div class="col-md-7">
                                                <div class="alert alert-light shadow text-dark">
                                                    <table class="table">
                                                        <tr runat="server" id="Pregunta02_01" visible="false">
                                                            <td class="checkIchn">
                                                                <asp:RadioButton ID="Pregunta02op01" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta02_opcion" OnCheckedChanged="Pregunta02_CheckedChanged" Text="Opcion" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr runat="server" id="Pregunta02_02" visible="false">
                                                            <td class="checkIchn">
                                                                <asp:RadioButton ID="Pregunta02op02" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta02_opcion" OnCheckedChanged="Pregunta02_CheckedChanged" Text="Opcion" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr runat="server" id="Pregunta02_03" visible="false">
                                                            <td class="checkIchn">
                                                                <asp:RadioButton ID="Pregunta02op03" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta02_opcion" OnCheckedChanged="Pregunta02_CheckedChanged" Text="Opcion" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr runat="server" id="Pregunta02_04" visible="false">
                                                            <td class="checkIchn">
                                                                <asp:RadioButton ID="Pregunta02op04" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta02_opcion" OnCheckedChanged="Pregunta02_CheckedChanged" Text="Opcion" runat="server" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-12" runat="server" id="div_02_texto">
                                        <div class="alert alert-primary shadow text-dark text-center">
                                            <div class="row">
                                                <div class="col-md-12  text-center">
                                                    <div>
                                                        <img class="img-fluid rounded" src="img/17/kid02.png" />
                                                    </div>
                                                </div>
                                                <div class="col-md-12 mt-5">
                                                    <table class="table table-borderless text-dark text-center" style="font-size: 22px">
                                                        <tr>
                                                            <td class="mt-2 text-end" style="width: 50%">The fish lives in the…</td>
                                                            <td style="width: 10%">
                                                                <asp:TextBox ID="TextBox_02_01" Style='text-transform: uppercase' onkeyup="contar17_02(this,1)" MaxLength="1" CssClass="form-control" runat="server"></asp:TextBox></td>
                                                            <td style="width: 10%">
                                                                <asp:TextBox ID="TextBox_02_02" Style='text-transform: uppercase' onkeyup="contar17_02(this,2)" MaxLength="1" CssClass="form-control" runat="server"></asp:TextBox></td>
                                                            <td style="width: 10%">
                                                                <asp:TextBox ID="TextBox_02_03" Style='text-transform: uppercase' MaxLength="1" CssClass="form-control" runat="server"></asp:TextBox></td>
                                                            <td></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row" runat="server" id="pregunta_03" visible="false">
                                    <div class="col-md-12">
                                        <div class="alert alert-light shadow text-dark text-center">
                                            <h4>
                                                <strong>
                                                    <asp:Label ID="LabelPregunta03" runat="server" Text="Label"></asp:Label>
                                                    <asp:Label ID="LabelPregunta03R" Visible="false" runat="server" Text="Label"></asp:Label>
                                                </strong>
                                            </h4>
                                        </div>
                                    </div>

                                    <div class="col-md-12" runat="server" id="div_03_texto">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="shadow text-dark">
                                                    <img class="img-fluid rounded" runat="server" id="img_03_16" src="img/16/kid03.png" />
                                                </div>
                                            </div>

                                            <div class="col-md-12">
                                                <table class="table text-dark text-center" style="font-size: 22px">
                                                    <tr>
                                                        <td class="mt-2" style="width: 9%">C</td>
                                                        <td style="width: 9%">
                                                            <asp:TextBox ID="TextBox_03_01" Style='text-transform: uppercase' onkeyup="contar(this,1)" MaxLength="1" CssClass="form-control" runat="server"></asp:TextBox></td>
                                                        <td style="width: 9%">T</td>
                                                        <td style="width: 9%">
                                                            <asp:TextBox ID="TextBox_03_02" Style='text-transform: uppercase' onkeyup="contar(this,2)" MaxLength="1" CssClass="form-control" runat="server"></asp:TextBox></td>
                                                        <td style="width: 9%">R</td>
                                                        <td style="width: 9%">
                                                            <asp:TextBox ID="TextBox_03_03" Style='text-transform: uppercase' onkeyup="contar(this,3)" MaxLength="1" CssClass="form-control" runat="server"></asp:TextBox></td>
                                                        <td style="width: 9%">
                                                            <asp:TextBox ID="TextBox_03_04" Style='text-transform: uppercase' onkeyup="contar(this,4)" MaxLength="1" CssClass="form-control" runat="server"></asp:TextBox></td>
                                                        <td style="width: 9%">L</td>
                                                        <td style="width: 9%">
                                                            <asp:TextBox ID="TextBox_03_05" Style='text-transform: uppercase' onkeyup="contar(this,5)" MaxLength="1" CssClass="form-control" runat="server"></asp:TextBox></td>
                                                        <td style="width: 9%">
                                                            <asp:TextBox ID="TextBox_03_06" Style='text-transform: uppercase' MaxLength="1" CssClass="form-control" runat="server"></asp:TextBox></td>
                                                        <td style="width: 9%">R</td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="col-md-12" runat="server" id="div_03_opciones">
                                        <div class="row">
                                            <div class="col-md-5">
                                                <img class="img-fluid rounded" runat="server" visible="false" id="img_03_17" src="img/17/kid03.png" />
                                            </div>
                                            <div class="col-md-7">
                                                <div class="alert alert-light shadow text-dark">
                                                    <table class="table" runat="server" id="table_opciones">
                                                        <tr runat="server" id="Pregunta03_01" visible="false">
                                                            <td class="checkIchn">
                                                                <asp:RadioButton ID="Pregunta03op01" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta03_opcion" OnCheckedChanged="Pregunta03_CheckedChanged" Text="Opcion" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr runat="server" id="Pregunta03_02" visible="false">
                                                            <td class="checkIchn">
                                                                <asp:RadioButton ID="Pregunta03op02" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta03_opcion" OnCheckedChanged="Pregunta03_CheckedChanged" Text="Opcion" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr runat="server" id="Pregunta03_03" visible="false">
                                                            <td class="checkIchn">
                                                                <asp:RadioButton ID="Pregunta03op03" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta03_opcion" OnCheckedChanged="Pregunta03_CheckedChanged" Text="Opcion" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr runat="server" id="Pregunta03_04" visible="false">
                                                            <td class="checkIchn">
                                                                <asp:RadioButton ID="Pregunta03op04" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta03_opcion" OnCheckedChanged="Pregunta03_CheckedChanged" Text="Opcion" runat="server" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row" runat="server" id="pregunta_04" visible="false">
                                    <div class="col-md-12">
                                        <div class="alert alert-light shadow text-dark text-center">
                                            <h4>
                                                <strong>
                                                    <asp:Label ID="LabelPregunta04" runat="server" Text="Label"></asp:Label>
                                                    <asp:Label ID="LabelPregunta04R" Visible="false" runat="server" Text="Label"></asp:Label>
                                                </strong>
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-md-12" runat="server" id="div_04_opciones">
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="shadow text-dark">
                                                    <img class="img-fluid rounded" runat="server" id="img_04_16" src="img/16/kid04.png" />

                                                </div>
                                            </div>
                                            <div class="col-md-7">
                                                <div class="alert alert-light shadow text-dark">
                                                    <table class="table">
                                                        <tr runat="server" id="Pregunta04_01" visible="false">
                                                            <td class="checkIchn">
                                                                <asp:RadioButton ID="Pregunta04op01" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta04_opcion" OnCheckedChanged="Pregunta04_CheckedChanged" Text="Opcion" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr runat="server" id="Pregunta04_02" visible="false">
                                                            <td class="checkIchn">
                                                                <asp:RadioButton ID="Pregunta04op02" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta04_opcion" OnCheckedChanged="Pregunta04_CheckedChanged" Text="Opcion" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr runat="server" id="Pregunta04_03" visible="false">
                                                            <td class="checkIchn">
                                                                <asp:RadioButton ID="Pregunta04op03" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta04_opcion" OnCheckedChanged="Pregunta04_CheckedChanged" Text="Opcion" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr runat="server" id="Pregunta04_04" visible="false">
                                                            <td class="checkIchn">
                                                                <asp:RadioButton ID="Pregunta04op04" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta04_opcion" OnCheckedChanged="Pregunta04_CheckedChanged" Text="Opcion" runat="server" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-12" runat="server" id="div_04_texto">
                                        <div class="alert alert-success shadow text-dark text-center">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div>
                                                        <img class="img-fluid rounded" runat="server" id="img1" src="img/17/kid04.png" />
                                                    </div>
                                                </div>
                                                <div class="col-md-12 mt-5">
                                                    <table class="table text-dark text-center" style="font-size: 22px">
                                                        <tr>
                                                            <td class="mt-2 text-end" style="width: 30%">It’s a ...</td>
                                                            <td style="width: 10%">
                                                                <asp:TextBox ID="TextBox_04_01" Style='text-transform: uppercase' onkeyup="contar17_04(this,1)" MaxLength="1" CssClass="form-control" runat="server"></asp:TextBox></td>
                                                            <td style="width: 10%">
                                                                <asp:TextBox ID="TextBox_04_02" Style='text-transform: uppercase' onkeyup="contar17_04(this,2)" MaxLength="1" CssClass="form-control" runat="server"></asp:TextBox></td>
                                                            <td style="width: 10%">
                                                                <asp:TextBox ID="TextBox_04_03" Style='text-transform: uppercase' onkeyup="contar17_04(this,3)" MaxLength="1" CssClass="form-control" runat="server"></asp:TextBox></td>
                                                            <td style="width: 10%">
                                                                <asp:TextBox ID="TextBox_04_04" Style='text-transform: uppercase' onkeyup="contar17_04(this,4)" MaxLength="1" CssClass="form-control" runat="server"></asp:TextBox></td>
                                                            <td style="width: 10%">
                                                                <asp:TextBox ID="TextBox_04_05" Style='text-transform: uppercase' MaxLength="1" CssClass="form-control" runat="server"></asp:TextBox></td>
                                                        <td></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9 mt-3">
                        <div class="text-start">
                            <smal>
                                <strong class="text-muted"><i class='bx bx-user'></i>
                                    <asp:Label ID="LabelQuestion" runat="server" Text="Label"></asp:Label>
                                </strong>
                            </smal>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="d-grid gap-2">
                            <asp:LinkButton ID="LinkButtonNext" CssClass="btn btn-primary cargando" runat="server" OnClick="LinkButtonNext_Click">Next</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            $(".cargando").click(function () {

                $("#mensajeCargando").modal("show");
            });
        });
    </script>

    <div class="modal fade" id="mensajeCargando" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="resultPreAdvanced" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content text-dark">
                <div class="modal-header alert alert-secondary">
                    <h5 class=" float-start mt-2">
                        <strong>Diagnostico</strong>
                    </h5>
                </div>
                <div class="modal-body alert" style="text-align: justify;">
                    <div class="row">
                        <div class="row mb-2">
                            <div class="col-md-12 text-center"></div>
                            <div class="col-md-12 text-center">
                                <h5>
                                    <strong>Procesando, espere un momento</strong>
                                </h5>
                                <div class="spinner-grow spinner-grow-sm text-primary" role="status">
                                    <span class="sr-only"></span>
                                </div>
                                <div class="spinner-grow spinner-grow-sm text-danger" role="status">
                                    <span class="sr-only"></span>
                                </div>
                                <div class="spinner-grow spinner-grow-sm text-primary" role="status">
                                    <span class="sr-only"></span>
                                </div>
                                <div class="spinner-grow spinner-grow-sm text-danger" role="status">
                                    <span class="sr-only"></span>
                                </div>
                                <div class="spinner-grow spinner-grow-sm text-primary" role="status">
                                    <span class="sr-only"></span>
                                </div>
                                <div class="spinner-grow spinner-grow-sm text-danger" role="status">
                                    <span class="sr-only"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

