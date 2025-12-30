<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/IchnAdmin.Master" AutoEventWireup="true" CodeBehind="AmericanSpace.aspx.cs" Inherits="Web.Admin.Banner.AmericanSpace" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="">
    <title>Norteamericano</title>
    <link rel="canonical" href="https://norteamericano.cl/" />
    <link href="../../lib/css/check-radio.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid alert-secondary about py-5">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-md-4">
                    <div class="bg-white rounded p-5 shadow mb-5">
                        <table class="table text-dark">
                            <tr>
                                <td colspan="2">
                                    <h3>Carga | <span class="text-primary">Banner </span></h3>
                                </td>
                            </tr>
                            <tr>
                                <td>Banner</td>
                                <td style="width: 40%">
                                    <asp:DropDownList ID="ListarBanner" AutoPostBack="true" CssClass="form-select" runat="server" OnSelectedIndexChanged="ListarBanner_SelectedIndexChanged"></asp:DropDownList>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Tipo</td>
                                <td>
                                    <asp:DropDownList ID="ListaTipoBanner" AutoPostBack="true" CssClass="form-select" runat="server" OnSelectedIndexChanged="ListaTipoBanner_SelectedIndexChanged"></asp:DropDownList>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Estado</td>
                                <td>
                                    <asp:Label ID="LabelBannerEstado" runat="server" Text=""></asp:Label>
                                </td>
                                <td></td>
                            </tr>
                            <tr runat="server" id="btnEditar" visible="false">
                                <td colspan="2">
                                    <div class="d-grid gap-2">
                                        <asp:LinkButton ID="LinkButtonEditar" CssClass="btn btn-primary" runat="server" OnClick="LinkButtonEditar_Click">Editar</asp:LinkButton>
                                    </div>
                                </td>
                                <td></td>
                            </tr>
                        </table>
                    </div>

                    <div class="bg-white rounded p-5 shadow" runat="server" id="div_admin" visible="false">
                        <div class="row g-5 ">
                            <table class="table text-dark">
                                <tr>
                                    <td>link</td>
                                    <td>
                                        <asp:TextBox ID="TextBoxUrl" CssClass="form-control" runat="server"></asp:TextBox>
                                    </td>
                                    <td></td>

                                </tr>
                                <tr>
                                    <td>Visible</td>
                                    <td class="presente">
                                        <asp:RadioButton ID="RadioButtonV" Checked="true" GroupName="banner_visible" Text="Visible" runat="server" />
                                        <asp:RadioButton ID="RadioButtonO" GroupName="banner_visible" Text="Oculto" runat="server" />
                                    </td>
                                    <td></td>

                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <div class="d-grid gap-2">
                                            <asp:LinkButton ID="LinkButtonGuardar" CssClass="btn btn-success" runat="server" OnClick="LinkButtonGuardar_Click">Guardar cambios</asp:LinkButton>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="LabelResultado" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="col-md-8 text-center">
                    <div class="bg-white rounded p-5 shadow">
                        <img class="img-fluid" runat="server" id="banner_preview" />
                    </div>

                    <div class="bg-white rounded mt-5 p-5 shadow" style="min-height: 334px" runat="server" id="div_admin_img" visible="false">
                        <table class="table text-dark">
                            <tr>
                                <td>Nueva Imagen</td>
                                <td>
                                    <asp:FileUpload ID="FileUpload1" onchange="readURL(this);" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <img runat="server" class="Img_prw_x img-fluid" id="Img_prw" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('.Img_prw_x')
                        .attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>

</asp:Content>

