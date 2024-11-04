<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web.Diagnostico.Adults.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Diagnóstico Adultos  | Cursos de Inglés </title>
    <link rel="canonical" href="https://norteamericano.cl/" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- About Start -->
    <div class="container-fluid alert-secondary about py-5">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-xl-12 ">
                    <div class="bg-white text-dark rounded p-5 shadow">
                        <div class="row ">
                            <div class="col-md-12 text-center">

                                <h4>
                                    <strong class="text-primary">Bienvenido/a</strong>
                                    <strong>
                                        <asp:Label ID="LabelAlumno" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                </h4>
                                <hr />
                                <h5 runat="server" id="welcome">Aquí podrás evaluar tu nivel inglés de manera gratuita, obtendrás tu nivel actual y te ofreceremos la mejor opción para finalizar tu inscripción  
                                </h5>
                            </div>

                            <div class="col-md-6 text-center">

                                <div class="alert-secondary text-dark rounded p-3  mb-1">

                                    <span><i class="fas fa-info-circle"></i></span>
                                    <span><strong>Puede dejar respuestas en blanco</strong></span>

                                </div>
                            </div>
                            <div class="col-md-6 text-center">
                                <div class="alert-secondary text-dark rounded p-3 ">

                                    <span><i class="fas fa-info-circle"></i></span>
                                    <span><strong>Evite contestar preguntas al azar</strong></span>

                                </div>
                            </div>

                            <div class="col-md-12 mt-5 text-center">

                                <asp:LinkButton ID="LinkButtonIniciar" CssClass="btn btn-primary btn-lg" runat="server">Iniciar Diagnóstico</asp:LinkButton>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
