<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="FacturadorBoleta.aspx.cs" Inherits="Web.Inscripcion.FacturadorBoleta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

       <script>
       window.history.forward();
       function noBack() {
           window.history.forward();
       }
       </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload=" ">
</asp:Content>
