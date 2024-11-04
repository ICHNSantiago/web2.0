<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/IchnAdmin.Master" AutoEventWireup="true" CodeBehind="Tematica.aspx.cs" Inherits="Web.Admin.Tematica" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta name="description" content="">
    <title>Norteamericano</title>
    <link rel="canonical" href="https://norteamericano.cl/" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid alert-secondary about py-5">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-12 mb-5">
                            <div class="bg-white rounded p-5 shadow">
                                <div class="row ">
                                    <div class="col-sm-4">
                                        <h3>Tematica</h3>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:DropDownList ID="ListaTematica" AutoPostBack="true" CssClass="form-select"  runat="server" OnSelectedIndexChanged="ListaTematica_SelectedIndexChanged"></asp:DropDownList>
                                    </div>                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
