<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="404.aspx.cs" Inherits="Web.Error._404" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
      <title>Página no encontrada</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Blog Start -->
    <div class="container-fluid  py-5">
        <div class="container">
            <div class="row g-4 justify-content-center">
                <div class="col-md-6 col-lg-6 col-xl-6">
                    <div class="alert bg-light  text-dark text-center" role="alert">
                          <br />   <br />
                        <img class="img-fluid" src="../img/logo.png" />
                         <br />   <br />
                        <strong><i  style="font-size:80px" class="fas fa-exclamation-circle"></i></strong>
                         <strong style="font-size:80px">
                             404
                         </strong>
                        <br />
                        <br />
                        <h5>
                           Página no encontrada
                        </h5>
                        <hr />
                        <p class="text-muted">Lo sentimos, ¡la página que has buscado no existe en nuestro sitio web! ¿Quieres ir a nuestra página de inicio? 
                            <br />
                        <a href="https://norteamericano.cl">Volver al Inicio</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
