<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Resultado.aspx.cs" Inherits="Web.Diagnostico.Teens.Resultado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Diagnóstico Adolscentes  | Cursos de Inglés </title>
    <link rel="canonical" href="https://norteamericano.cl/" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <script>
        window.history.forward();
        function noBack() { window.history.forward(); }
    </script>

    <asp:Label ID="LabelTestNivel" Visible="false" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="LabelTestTipo" Visible="false" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="LabeldiagnosticoID" Visible="false" runat="server" Text="Label"></asp:Label>

    <div class="container-fluid alert-secondary about py-5"  onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload=" ">
        <div class="row mt-2">
            <div class="col-md-2">
            </div>
            <div class="col-md-8">
                <div class="alert alert-light shadow text-dark">
                    <div class="row">
                        <div class="col-md-12">
                            <h3><span class="text-primary">Resultado |</span> Evaluación  <span></span></h3>
                            <hr />
                        </div>
                        <div class="col-md-12">
                            <table class="table table-sm text-dark">
                                <tr>
                                    <th>Evaluado</th>
                                    <td>
                                        <h5>
                                            <asp:Label ID="LabelUsuario" runat="server" Text="Label"></asp:Label>
                                        </h5>

                                    </td>
                                </tr>
                                <tr>
                                    <th>Nivel alcanzado</th>
                                    <td>
                                        <h5>
                                            <asp:Label ID="LabelNivel" runat="server" Text="Label"></asp:Label>
                                            <asp:Label ID="LabelNivelID" Visible="false" runat="server" Text="Label"></asp:Label>
                                            - 
                                            <asp:Label ID="LabelCEFR" runat="server" Text="Label"></asp:Label>
                                        </h5>
                                    </td>
                                </tr>
                            </table>


                            <table class="table mt-5 text-dark text-center table-borderless">

                                <tr>
                                    <td>
                                        <h5>Opciones Disponibles</h5>
                                    </td>
                                </tr>

                                <tr>

                                    <td>
                                        <asp:LinkButton ID="LinkButtonInscripcion" CssClass="btn btn-primary" runat="server" OnClick="LinkButtonInscripcion_Click">Continuar con la Inscripción</asp:LinkButton>
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <asp:Label ID="LabelIntentos" visible="false" runat="server" Text="0"></asp:Label>
                                        <asp:LinkButton ID="LinkButtonRepetir" CssClass="btn btn-secondary text-white" runat="server" OnClick="LinkButtonRepetir_Click">Volver a realizar la Evaluación </asp:LinkButton>
                                        <span class="badge bg-warning text-dark" style="font-size: 14px" runat="server" id="error_intentos" visible="false" >Alcanzó el número máximo de intento para repetir la evaluación</span>
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


