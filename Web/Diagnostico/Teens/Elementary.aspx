<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Elementary.aspx.cs" Inherits="Web.Diagnostico.Teens.Elementary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Diagnóstico Adolescentes  | Cursos de Inglés </title>
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

       <script>
           $(document).ready(function () {
               $(".cargando").click(function () {

                   $("#mensajeCargando").modal("show");
               });
           });
       </script>

    <asp:Label ID="LabelTestNivel" Visible="false" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="LabelTestTipo" Visible="false" runat="server" Text="Label"></asp:Label>
    <div class="container-fluid alert-secondary about py-5"  onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload=" ">
        <div class="row mt-5">
            <div class="col-md-2">
            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-12" runat="server" id="titulo_opcion">
                        <div class="alert alert-warning shadow text-dark text-center">
                            <strong>In this section select the word or phrase that best completes each sentence.
                                <br />
                                <small>En esta sección seleccione la palabra o frase que mejor complete cada oración.</small>
                            </strong>
                        </div>
                    </div>


                    <div class="col-md-12" runat="server" id="titulo_audio" visible="false">
                        <div class="alert alert-warning shadow text-dark text-center">
                            <strong>Listen to the conversation, read the questions. Choose the correct option.
                                <br />
                                <small>Escuche la conversación, lea las preguntas. Elija la opción correcta.</small>
                            </strong>
                        </div>
                    </div>

                    <div class="col-md-12" runat="server" id="div_audio" visible="false">
                        <div class="alert alert-warning shadow text-dark text-center">
                            <audio controls controlslist="nodownload noplaybackrate" style="width: 270px; height: 35px">
                                <source runat="server" id="myaudio" type="audio/mpeg">
                                Your browser does not support the audio element.
                            </audio>
                        </div>
                    </div>

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
                                    <div class="col-md-4">
                                        <div class="alert alert-light shadow text-dark">
                                            <img class="img-fluid rounded" src="img/31/pregunta1.png" />
                                        </div>
                                    </div>
                                    <div class="col-md-8">
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
                                    <div class="col-md-4">
                                        <div class="alert alert-light shadow text-dark">
                                            <img class="img-fluid rounded" src="img/31/pregunta2.jpg" />
                                        </div>
                                    </div>
                                    <div class="col-md-8">
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
                                    <div class="col-md-4">
                                        <div class="alert alert-light shadow text-dark">
                                            <img class="img-fluid rounded" src="img/31/pregunta3.png" />
                                        </div>
                                    </div>
                                    <div class="col-md-8">
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
                                    <div class="col-md-4">
                                        <div class="alert alert-light shadow text-dark">
                                            <img class="img-fluid rounded" src="img/31/pregunta4.png" />
                                        </div>
                                    </div>
                                    <div class="col-md-8">
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

                                <div class="row" runat="server" id="pregunta_05" visible="false">
                                    <div class="col-md-12">
                                        <div class="alert alert-light shadow text-dark text-center">
                                            <h4>
                                                <strong>
                                                    <asp:Label ID="LabelPregunta05" runat="server" Text="Label"></asp:Label>
                                                    <asp:Label ID="LabelPregunta05R" Visible="false" runat="server" Text="Label"></asp:Label>
                                                </strong>
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="alert alert-light shadow text-dark">
                                            <table class="table">
                                                <tr runat="server" id="Pregunta05_01" visible="false">
                                                    <td class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta05op01" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta05_opcion" OnCheckedChanged="Pregunta05_CheckedChanged" Text="Opcion" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="Pregunta05_02" visible="false">
                                                    <td class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta05op02" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta05_opcion" OnCheckedChanged="Pregunta05_CheckedChanged" Text="Opcion" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="Pregunta05_03" visible="false">
                                                    <td class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta05op03" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta05_opcion" OnCheckedChanged="Pregunta05_CheckedChanged" Text="Opcion" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="Pregunta05_04" visible="false">
                                                    <td class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta05op04" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta05_opcion" OnCheckedChanged="Pregunta05_CheckedChanged" Text="Opcion" runat="server" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                                <div class="row" runat="server" id="pregunta_06" visible="false">
                                    <div class="col-md-12">
                                        <div class="alert alert-light shadow text-dark text-center">
                                            <h4>
                                                <strong>
                                                    <asp:Label ID="LabelPregunta06" runat="server" Text="Label"></asp:Label>
                                                    <asp:Label ID="LabelPregunta06R" Visible="false" runat="server" Text="Label"></asp:Label>
                                                </strong>
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="alert alert-light shadow text-dark">
                                            <table class="table">
                                                <tr runat="server" id="Pregunta06_01" visible="false">
                                                    <td class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta06op01" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta06_opcion" OnCheckedChanged="Pregunta06_CheckedChanged" Text="Opcion" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="Pregunta06_02" visible="false">
                                                    <td class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta06op02" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta06_opcion" OnCheckedChanged="Pregunta06_CheckedChanged" Text="Opcion" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="Pregunta06_03" visible="false">
                                                    <td class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta06op03" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta06_opcion" OnCheckedChanged="Pregunta06_CheckedChanged" Text="Opcion" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="Pregunta06_04" visible="false">
                                                    <td class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta06op04" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta06_opcion" OnCheckedChanged="Pregunta06_CheckedChanged" Text="Opcion" runat="server" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                                <div class="row" runat="server" id="pregunta_07" visible="false">
                                    <div class="col-md-12">
                                        <div class="alert alert-light shadow text-dark text-center">
                                            <h4>
                                                <strong>
                                                    <asp:Label ID="LabelPregunta07" runat="server" Text="Label"></asp:Label>
                                                    <asp:Label ID="LabelPregunta07R" Visible="false" runat="server" Text="Label"></asp:Label>
                                                </strong>
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="alert alert-light shadow text-dark">
                                            <table class="table">
                                                <tr runat="server" id="Pregunta07_01" visible="false">
                                                    <td class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta07op01" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta07_opcion" OnCheckedChanged="Pregunta07_CheckedChanged" Text="Opcion" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="Pregunta07_02" visible="false">
                                                    <td class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta07op02" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta07_opcion" OnCheckedChanged="Pregunta07_CheckedChanged" Text="Opcion" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="Pregunta07_03" visible="false">
                                                    <td class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta07op03" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta07_opcion" OnCheckedChanged="Pregunta07_CheckedChanged" Text="Opcion" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="Pregunta07_04" visible="false">
                                                    <td class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta07op04" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta07_opcion" OnCheckedChanged="Pregunta07_CheckedChanged" Text="Opcion" runat="server" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                                <div class="row" runat="server" id="pregunta_08" visible="false">
                                    <div class="col-md-12">
                                        <div class="alert alert-light shadow text-dark text-center">
                                            <h4>
                                                <strong>
                                                    <asp:Label ID="LabelPregunta08" runat="server" Text="Label"></asp:Label>
                                                    <asp:Label ID="LabelPregunta08R" Visible="false" runat="server" Text="Label"></asp:Label>
                                                </strong>
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="alert alert-light shadow text-dark">
                                            <table class="table">
                                                <tr runat="server" id="Pregunta08_01" visible="false">
                                                    <td class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta08op01" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta08_opcion" OnCheckedChanged="Pregunta08_CheckedChanged" Text="Opcion" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="Pregunta08_02" visible="false">
                                                    <td class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta08op02" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta08_opcion" OnCheckedChanged="Pregunta08_CheckedChanged" Text="Opcion" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="Pregunta08_03" visible="false">
                                                    <td class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta08op03" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta08_opcion" OnCheckedChanged="Pregunta08_CheckedChanged" Text="Opcion" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="Pregunta08_04" visible="false">
                                                    <td class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta08op04" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta08_opcion" OnCheckedChanged="Pregunta08_CheckedChanged" Text="Opcion" runat="server" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="col-md-9">
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
                            <asp:LinkButton ID="LinkButtonNext" CssClass="btn btn-primary" runat="server" OnClick="LinkButtonNext_Click">Next</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

       
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

