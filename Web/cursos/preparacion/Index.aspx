<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web.cursos.preparacion.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta name="description" content="Norteamericano, Cursos de Inglés Toefl PTE. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Preparacion TOEFL - PTE   | Programa - Cursos de Inglés</title>
    <link rel="canonical" href="https://norteamericano.cl/" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid alert-secondary">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-xl-12 text-center">
                    <h1>
                        <span class="text-primary">Cursos </span>Preparación 
                    </h1>
                </div>

                <div class="col-xl-12">
                    <div class="row g-4 justify-content-center">
                        <div class="col-md-6 col-lg-6 col-xl-4">
                            <div class="service-item shadow">
                                <div class="service-img">
                                      <img src="../../img/programas/preparar_largo.png" class="img-fluid rounded-top w-100" />         
                                </div>
                                <div class="p-4 bg-white rounded-bottom">
                                    <div class="service-content-inner">
                                        <table class="table text-dark">
                                            <tr class="text-center">
                                                <th colspan="2">
                                                    <h3>Preparación <br />
                                                        <strong class="text-primary">TOEFL</strong>
                                                    </h3>
                                                </th>
                                            </tr>                                           
                                            <tr class="text-center">
                                                <th colspan="2">
                                                    <div class="d-grid gap-2">
                                                        <a class="btn btn-primary rounded-pill py-2 px-4" href="TOEFL.aspx">Saber más</a>
                                                    </div>
                                                </th>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-6 col-xl-4">
                            <div class="service-item shadow">
                                <div class="service-img">
                                    <img src="../../img/programas/preparar_largo.png" class="img-fluid rounded-top w-100" />                                 
                                </div>
                                <div class="p-4 bg-white rounded-bottom">
                                    <div class="service-content-inner">
                                        <table class="table text-dark">
                                            <tr class="text-center">
                                                <th colspan="2">
                                                    <h3>Preparación<br />
                                                        <strong class="text-primary">PTE</strong>
                                                    </h3>
                                                </th>
                                            </tr>                                                                                   
                                            <tr class="text-center">
                                                <th colspan="2">
                                                    <div class="d-grid gap-2">
                                                        <a class="btn btn-primary rounded-pill py-2 px-4" href="PTE.aspx">Saber más</a>
                                                    </div>
                                                </th>
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

</asp:Content>

