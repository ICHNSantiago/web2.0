<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="LowIntermediate.aspx.cs" Inherits="Web.Diagnostico.Kid.LowIntermediate" %>

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



        function contar19_04_01(obj, destino) {
            if (obj.value.length == 1) {
                if (destino == 1) {
                    ContentPlaceHolder1_TextBox04_01_02.focus();
                }

                if (destino == 2) {
                    ContentPlaceHolder1_TextBox04_01_03.focus();
                }

                if (destino == 3) {
                    ContentPlaceHolder1_TextBox04_01_04.focus();
                }

                if (destino == 4) {
                    ContentPlaceHolder1_TextBox04_01_05.focus();
                }
            }
        }

        function contar19_04_02(obj, destino) {
            if (obj.value.length == 1) {
                if (destino == 1) {
                    ContentPlaceHolder1_TextBox04_02_02.focus();
                }

                if (destino == 2) {
                    ContentPlaceHolder1_TextBox04_02_03.focus();
                }

                if (destino == 3) {
                    ContentPlaceHolder1_TextBox04_02_04.focus();
                }

                if (destino == 4) {
                    ContentPlaceHolder1_TextBox04_02_05.focus();
                }
            }

        }

        function contar19_04_03(obj, destino) {
            if (obj.value.length == 1) {
                if (destino == 1) {
                    ContentPlaceHolder1_TextBox04_03_02.focus();
                }

                if (destino == 2) {
                    ContentPlaceHolder1_TextBox04_03_03.focus();
                }
            }

        }

        function contar19_04_04(obj, destino) {
            if (obj.value.length == 1) {
                if (destino == 1) {
                    ContentPlaceHolder1_TextBox04_04_02.focus();
                }

                if (destino == 2) {
                    ContentPlaceHolder1_TextBox04_04_03.focus();
                }

                if (destino == 3) {
                    ContentPlaceHolder1_TextBox04_04_04.focus();
                }

                if (destino == 4) {
                    ContentPlaceHolder1_TextBox04_04_05.focus();
                }
            }
        }

        function contar20_04_01(obj, destino) {
            if (obj.value.length == 1) {
                if (destino == 1) {
                    ContentPlaceHolder1_TextBox04_20_01_02.focus();
                }

                if (destino == 2) {
                    ContentPlaceHolder1_TextBox04_20_01_03.focus();
                }

                if (destino == 3) {
                    ContentPlaceHolder1_TextBox04_20_01_04.focus();
                }

                if (destino == 4) {
                    ContentPlaceHolder1_TextBox04_20_01_05.focus();
                }

                if (destino == 5) {
                    ContentPlaceHolder1_TextBox04_20_01_06.focus();
                }

                if (destino == 6) {
                    ContentPlaceHolder1_TextBox04_20_01_07.focus();
                }

                if (destino == 7) {
                    ContentPlaceHolder1_TextBox04_20_01_08.focus();
                }
            }
        }

        function contar20_04_02(obj, destino) {
            if (obj.value.length == 1) {
                if (destino == 1) {
                    ContentPlaceHolder1_TextBox04_20_02_02.focus();
                }

                if (destino == 2) {
                    ContentPlaceHolder1_TextBox04_20_02_03.focus();
                }

                if (destino == 3) {
                    ContentPlaceHolder1_TextBox04_20_02_04.focus();
                }

                if (destino == 4) {
                    ContentPlaceHolder1_TextBox04_20_02_05.focus();
                }

                if (destino == 5) {
                    ContentPlaceHolder1_TextBox04_20_02_06.focus();
                }

                if (destino == 6) {
                    ContentPlaceHolder1_TextBox04_20_02_07.focus();
                }

                if (destino == 7) {
                    ContentPlaceHolder1_TextBox04_20_02_08.focus();
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
                                                        <asp:RadioButton ID="Pregunta01op01_img" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta01_opcion" OnCheckedChanged="Pregunta01_CheckedChanged" Text="<img class='img-fluid rounded w-50' src='img/20/kid01_01.png'/>" runat="server" />
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="alert alert-light shadow text-dark">
                                                    <div class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta01op02_img" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta01_opcion" OnCheckedChanged="Pregunta01_CheckedChanged" Text="<img class='img-fluid rounded w-50' src='img/20/kid01_02.png'/>" runat="server" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="alert alert-light shadow text-dark">
                                                    <div class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta01op03_img" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta01_opcion" OnCheckedChanged="Pregunta01_CheckedChanged" Text="<img class='img-fluid rounded w-50' src='img/20/kid01_03.png'/>" runat="server" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-12" runat="server" id="div_01_texto">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="alert bg-primary shadow text-dark">
                                                    <div class="row">
                                                        <div class="col-md-12 text-center">
                                                            <img class="img-fluid" src="img/19/kid01_01.png" />
                                                        </div>
                                                        <div class="col-md-12 mt-3">
                                                            <table class="table table-borderless">
                                                                <tr>
                                                                    <th class="text-end" style="width: 33%">
                                                                        <h5 class=" text-white">He’s at the</h5>
                                                                    </th>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox_01_01" AutoComplete="off" class="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="alert bg-success shadow text-dark">
                                                    <div class="row">
                                                        <div class="col-md-12 text-center">
                                                            <img class="img-fluid" src="img/19/kid01_02.png" />
                                                        </div>
                                                        <div class="col-md-12 mt-3">
                                                            <table class="table table-borderless">
                                                                <tr>
                                                                    <th class="text-end" style="width: 33%">
                                                                        <h5 class=" text-white">She’s at the</h5>
                                                                    </th>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox_01_02" AutoComplete="off" class="form-control" runat="server"></asp:TextBox>
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
                                                <img class="img-fluid" src="img/19/kid02.png" />
                                            </div>
                                            <div class="col-md-7">
                                                <div class="alert alert-light shadow text-dark">
                                                    <table class="table">
                                                        <tr runat="server" id="Tr1" visible="false">
                                                            <td class="checkIchn">
                                                                <asp:CheckBox CssClass="text-dark" ID="CheckBox02op01" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr runat="server" id="Tr2" visible="false">
                                                            <td class="checkIchn">
                                                                <asp:CheckBox CssClass="text-dark" ID="CheckBox02op02" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr runat="server" id="Tr3" visible="false">
                                                            <td class="checkIchn">
                                                                <asp:CheckBox CssClass="text-dark" ID="CheckBox02op03" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr runat="server" id="Tr4" visible="false">
                                                            <td class="checkIchn">
                                                                <asp:CheckBox CssClass="text-dark" ID="CheckBox02op04" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr runat="server" id="Tr5" visible="false">
                                                            <td class="checkIchn">
                                                                <asp:CheckBox CssClass="text-dark" ID="CheckBox02op05" runat="server" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-12" runat="server" id="div_02_imagenes">
                                        <div class="row">
                                            <div class="col-md-2 text-center"></div>
                                            <div class="col-md-4 text-center">
                                                <div class="alert alert-light shadow text-dark">
                                                    <div class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta02op01_img" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta02_opcion" OnCheckedChanged="Pregunta02_CheckedChanged" Text="<img class='img-fluid rounded w-75' src='img/20/kid02_01.png'/>" runat="server" />
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="alert alert-light shadow text-dark">
                                                    <div class="checkIchn">
                                                        <asp:RadioButton ID="Pregunta02op02_img" CssClass="text-dark" Font-Size="Larger" GroupName="pregunta02_opcion" OnCheckedChanged="Pregunta02_CheckedChanged" Text="<img class='img-fluid rounded w-75' src='img/20/kid02_02.png'/>" runat="server" />
                                                    </div>
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
                                    <div class="col-md-12" runat="server" id="div_03_opciones">
                                        <div class="alert alert-light shadow text-dark">
                                            <div class="row">
                                                <div class="col-md-5 text-center">
                                                    <img class="img-fluid" src="img/20/kid04.png" />
                                                </div>

                                                <div class="col-md-7">
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


                                    <div class="col-md-12" runat="server" id="div_03_texto">
                                        <div class="alert alert-light shadow text-dark text-center">
                                            <div class="row">
                                                <div class="col-md-8">
                                                    <img class="img-fluid rounded" src="img/19/kid03.png" />
                                                </div>
                                                <div class="col-md-4">
                                                    <table class="table table-warning" style="font-size: 30px">
                                                        <tr>
                                                            <td>angry</td>
                                                        </tr>
                                                        <tr>
                                                            <td>happy</td>
                                                        </tr>
                                                        <tr>
                                                            <td>sleepy</td>
                                                        </tr>
                                                        <tr>
                                                            <td>bored</td>
                                                        </tr>
                                                        <tr>

                                                            <td>sad</td>
                                                        </tr>
                                                        <tr>
                                                            <td>scared</td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="alert alert-light shadow text-dark text-center">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <table class="table text-dark">
                                                        <tr>
                                                            <th>
                                                                <h5>The potato is</h5>
                                                            </th>
                                                            <td>
                                                                <asp:TextBox ID="TextBox_03_01" CssClass="form-control" runat="server"></asp:TextBox></td>
                                                            <td></td>
                                                        </tr>
                                                    </table>
                                                </div>

                                                <div class="col-md-6">
                                                    <table class="table text-dark">
                                                        <tr>
                                                            <th>
                                                                <h5>The lemon is</h5>
                                                            </th>
                                                            <td>
                                                                <asp:TextBox ID="TextBox_03_02" CssClass="form-control" runat="server"></asp:TextBox></td>
                                                            <td></td>
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


                                    <div class="col-md-12" runat="server" id="div_04_texto_19">
                                        <div class="row text-center">
                                            <div class="col-md-6">
                                                <div class="alert alert-light shadow text-dark">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <img class="img-fluid " src="img/19/kid04_01.png" />
                                                        </div>
                                                        <div class="col-md-12">
                                                            <table class="table text-dark" style="font-size: 24px">
                                                                <tr>
                                                                    <td>S
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_01_01" onkeyup="contar19_04_01(this,1)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_01_02" onkeyup="contar19_04_01(this,2)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_01_03" onkeyup="contar19_04_01(this,3)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_01_04" onkeyup="contar19_04_01(this,4)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_01_05" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="alert alert-light shadow text-dark">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <img class="img-fluid " src="img/19/kid04_02.png" />
                                                        </div>
                                                        <div class="col-md-12">
                                                            <table class="table text-dark" style="font-size: 24px">
                                                                <tr>
                                                                    <td>S
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_02_01" onkeyup="contar19_04_02(this,1)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_02_02" onkeyup="contar19_04_02(this,2)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_02_03" onkeyup="contar19_04_02(this,3)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_02_04" onkeyup="contar19_04_02(this,4)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_02_05" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="alert alert-light shadow text-dark">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <img class="img-fluid " src="img/19/kid04_03.png" />
                                                        </div>
                                                        <div class="col-md-12">
                                                            <table class="table text-dark" style="font-size: 24px">
                                                                <tr>
                                                                    <td>F
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_03_01" onkeyup="contar19_04_03(this,1)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_03_02" onkeyup="contar19_04_03(this,2)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_03_03" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="alert alert-light shadow text-dark">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <img class="img-fluid " src="img/19/kid04_04.png" />
                                                        </div>
                                                        <div class="col-md-12">
                                                            <table class="table text-dark" style="font-size: 24px">
                                                                <tr>
                                                                    <td>W
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_04_01" onkeyup="contar19_04_04(this,1)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_04_02" onkeyup="contar19_04_04(this,2)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_04_03" onkeyup="contar19_04_04(this,3)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_04_04" onkeyup="contar19_04_04(this,4)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_04_05" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="col-md-12" runat="server" id="div_04_texto_20">
                                        <div class="row text-center">
                                            <div class="col-md-12">
                                                <div class="alert alert-light shadow text-dark">
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <img class="img-fluid w-50" src="img/20/kid05_01.gif" />
                                                        </div>
                                                        <div class="col-md-8">
                                                            <table class="table text-dark" style="font-size: 24px">
                                                                <tr>
                                                                    <td>T
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_20_01_01" onkeyup="contar20_04_01(this,1)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_20_01_02" onkeyup="contar20_04_01(this,2)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_20_01_03" onkeyup="contar20_04_01(this,3)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_20_01_04" onkeyup="contar20_04_01(this,4)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_20_01_05" onkeyup="contar20_04_01(this,5)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_20_01_06" onkeyup="contar20_04_01(this,6)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_20_01_07" onkeyup="contar20_04_01(this,7)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_20_01_08" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-12">
                                                <div class="alert alert-light shadow text-dark">
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <img class="img-fluid w-50" src="img/20/kid05_02.PNG" />
                                                        </div>
                                                        <div class="col-md-8">
                                                            <table class="table text-dark" style="font-size: 24px">
                                                                <tr>
                                                                    <td>M
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_20_02_01" onkeyup="contar20_04_02(this,1)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_20_02_02" onkeyup="contar20_04_02(this,2)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_20_02_03" onkeyup="contar20_04_02(this,3)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_20_02_04" onkeyup="contar20_04_02(this,4)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_20_02_05" onkeyup="contar20_04_02(this,5)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_20_02_06" onkeyup="contar20_04_02(this,6)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_20_02_07" onkeyup="contar20_04_02(this,7)" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox04_20_02_08" CssClass="form-control" runat="server"></asp:TextBox>
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



