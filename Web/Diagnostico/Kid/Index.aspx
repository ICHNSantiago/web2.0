﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web.Diagnostico.Kid.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Norteamericano, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Diagnóstico Niños | Ichn - Cursos de Inglés </title>
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
                        </div>
                        <div class="row ">
                            <div class="col-md-3 text-center"></div>
                            <div class="col-md-6 text-center">

                                <div class="alert-secondary text-dark rounded p-3  mb-1">

                                    <span><i class="fas fa-info-circle"></i></span>
                                    <span><strong>Puede dejar respuestas en blanco</strong></span>

                                </div>
                            </div>
                        </div>
                        <div class="row ">
                            <div class="col-md-3 text-center"></div>
                            <div class="col-md-6 text-center">
                                <div class="alert-secondary text-dark rounded p-3 ">

                                    <span><i class="fas fa-info-circle"></i></span>
                                    <span><strong>Evite contestar preguntas al azar</strong></span>

                                </div>
                            </div>
                        </div>
                        <div class="row ">
                            <div class="col-md-3 text-center"></div>
                            <div class="col-md-6 mt-1 text-center">
                                <div class="bg-warning text-dark rounded p-3 ">

                                    <span><i class="fas fa-info-circle"></i></span>
                                    <span><strong>Importante, Este diagnóstico debe ser realizado por el alumno</strong></span>

                                </div>
                            </div>

                            <div class="col-md-12 mt-5 text-center">

                                <asp:LinkButton ID="LinkButtonIniciar" CssClass="btn btn-primary btn-lg cargando" runat="server">Iniciar Diagnóstico</asp:LinkButton>

                            </div>
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

    <script>
        $(document).ready(function () {
            $(".cargando").click(function () {

                $("#mensajeCargando").modal("show");
            });
        });
    </script>
</asp:Content>


