<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Beginner.aspx.cs" Inherits="Web.Diagnostico.Kid.Beginner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Diagnóstico | Cursos de Inglés </title>
    <link rel="canonical" href="https://norteamericano.cl/" />
    <link href="../../lib/css/check-radio.css" rel="stylesheet" />

    <script>
        window.history.forward();
        function noBack() {
            window.history.forward();
        }
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload=" ">
    <asp:Label ID="LabelTestNivel" Visible="false" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="LabelTestTipo" Visible="false" runat="server" Text="Label"></asp:Label>
    <div class="container-fluid alert-secondary about py-5">
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
                                    <div class="col-md-5">
                                        <div class="shadow text-dark">
                                            <img class="img-fluid rounded" runat="server" visible="false" id="img_01_14" src="img/14/kid01.png" />
                                            <img class="img-fluid rounded" runat="server" visible="false" id="img_01_15" src="img/15/kid01.png" />
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
                                    <div class="col-md-5">
                                        <div class="shadow text-dark">
                                            <img class="img-fluid rounded" runat="server" visible="false" id="img_02_14" src="img/14/kid03.png" />
                                            <img class="img-fluid rounded" runat="server" visible="false" id="img_02_15" src="img/15/kid02.png" />
                                        </div>
                                    </div>
                                    <div class="col-md-7">
                                        <div class="alert alert-light shadow text-dark">

                                            <table class="table" runat="server" id="tabla_opciones">
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

                                            <table class="table text-dark" runat="server" id="tabla_texto">
                                                <tr>
                                                    <th colspan="3">How many apples and bananas are there? write using numbers (one,two,three, etc...)</th>
                                                </tr>
                                                <tr>
                                                    <th>There are </th>
                                                    <td>
                                                        <asp:TextBox ID="TextBoxPregunta02_op_01" CssClass="form-control" runat="server"></asp:TextBox>
                                                    </td>
                                                    <th>apples</th>
                                                </tr>
                                                <tr>
                                                    <th>and </th>
                                                    <td>
                                                        <asp:TextBox ID="TextBoxPregunta02_op_02" CssClass="form-control" runat="server"></asp:TextBox>
                                                    </td>
                                                    <th>bananas</th>
                                                </tr>
                                            </table>
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

                                    <div class="col-md-12" runat="server" id="div_03_imagenes">
                                        <div class="row">
                                            <div class="col-md-4 text-center">
                                                <div class="alert alert-light shadow text-dark">
                                                    <div class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta03op01_img" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta03_opcion" OnCheckedChanged="Pregunta03_CheckedChanged" Text="<img class='img-fluid rounded w-50' src='img/14/kid02_01.png'/>" runat="server" />
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="alert alert-light shadow text-dark">
                                                    <div class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta03op02_img" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta03_opcion" OnCheckedChanged="Pregunta03_CheckedChanged" Text="<img class='img-fluid rounded w-50' src='img/14/kid02_02.png'/>" runat="server" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="alert alert-light shadow text-dark">
                                                    <div class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta03op03_img" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta03_opcion" OnCheckedChanged="Pregunta03_CheckedChanged" Text="<img class='img-fluid rounded w-50' src='img/14/kid02_03.gif'/>" runat="server" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-12" runat="server" id="div_03_opciones">
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="shadow text-dark">
                                                    <img class="img-fluid rounded" src="img/15/kid03.png" />
                                                </div>
                                            </div>
                                            <div class="col-md-7">

                                                <div class="alert alert-light shadow text-dark">
                                                    <table class="table">
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
                                    <div class="col-md-12" runat="server" id="div_04_imagenes">
                                        <div class="row">
                                            <div class="col-md-4 text-center">
                                                <div class="alert alert-light shadow text-dark">
                                                    <div class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta04op01_img" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta04_opcion" OnCheckedChanged="Pregunta04_CheckedChanged" Text="<img class='img-fluid rounded w-50' src='img/14/kid04_01.png'/>" runat="server" />
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="alert alert-light shadow text-dark">
                                                    <div class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta04op02_img" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta04_opcion" OnCheckedChanged="Pregunta04_CheckedChanged" Text="<img class='img-fluid rounded w-50' src='img/14/kid04_02.png'/>" runat="server" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="alert alert-light shadow text-dark">
                                                    <div class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta04op03_img" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta04_opcion" OnCheckedChanged="Pregunta04_CheckedChanged" Text="<img class='img-fluid rounded w-50' src='img/14/kid04_03.png'/>" runat="server" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12" runat="server" id="div_04_opciones">
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="shadow text-dark">
                                                    <img class="img-fluid rounded" src="img/15/kid04.png" />
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
                    <div class="col-md-3 mt-3">
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


