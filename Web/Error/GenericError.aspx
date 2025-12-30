<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="GenericError.aspx.cs" Inherits="Web.Error.GenericError" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Página no funciona</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Blog Start -->
    <div class="container-fluid  py-5">
        <div class="container">
            <div class="row g-4 justify-content-center">
                <div class="col-md-6 col-lg-6 col-xl-6">
                    <div class="alert bg-light  text-dark text-center" role="alert">
                        <br />
                        <br />
                        <img class="img-fluid" src="../img/logo.png" />
                        <br />
                        <br />
                        <strong><i  style="font-size: 80px" class="fas fa-times"></i></strong>
                        <strong style="font-size: 80px">Error
                        </strong>
                        <br />
                        <br />
                        <h5>Esta página no funciona
                        </h5>
                        <hr />
                        <p class="text-muted">
                            <a href="https://norteamericano.cl">Volver al Inicio</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
