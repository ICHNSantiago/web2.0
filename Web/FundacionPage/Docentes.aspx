<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Docentes.aspx.cs" Inherits="Web.FundacionPage.Docentes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <meta name="description" content="Norteamericano, Cursos de Inglés para adolescentes, jovenes, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Norteamericano Experience | Norteamericano </title>
    <link rel="canonical" href="https://norteamericano.cl/" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

      <style>
      @import url('https://fonts.googleapis.com/css2?family=Work+Sans:ital,wght@0,100..900;1,100..900&display=swap');
      @import url('https://fonts.googleapis.com/css2?family=Crimson+Pro:ital,wght@0,200..900;1,200..900&family=Work+Sans:ital,wght@0,100..900;1,100..900&display=swap');
  </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Google Tag Manager (noscript) -->
    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W7349HX"
            height="0" width="0" style="display: none; visibility: hidden"></iframe>
    </noscript>
    <!-- End Google Tag Manager (noscript) -->

    <!-- About Start -->
    <div class="container-fluid alert-secondary about py-5">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-md-12 ">
                    <div class="bg-white rounded p-5 ">
                        <div class="row ">
                            <div class="col-md-8">
                                <h4 style="font-family: Work Sans; font-weight: 600; font-size: 24px;line-height: 130%; letter-spacing: 0%;">Fundación Instituto Chileno Norteamericano</h4>
                                <h5 style="font-family: Work Sans; font-weight: 600; font-size: 36px;line-height: 130%; letter-spacing: 0%;">Capacitaciones Docentes | <span class="text-primary">¡Somos ATE! </span></h5>
                            </div>
                            <div class="col-md-4">
                                <div class="d-grid gap-2">
                                    <span class="mb-4"></span>
                                    <a style="font-family: Work Sans; font-weight: 600;font-size: 16px; line-height: 100%;letter-spacing: 10%;text-align: center;text-transform: uppercase;" data-bs-toggle="modal" data-bs-target="#portfolioModal1" class="btn btn-danger rounded-pill py-2 px-4">Contáctenos</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 ">
                    <div class="bg-white rounded p-5 ">

                        <div class="row">
                            <div class="col-md-4">
                                <img class="img-fluid rounded" src="../../img/fundacion/DSC07997NEW.webp" />
                            </div>

                            <div class="col-md-8 text-dark" style="font-family: Work Sans; font-weight: 400; font-size: 16px; line-height: 130%; letter-spacing: 0%;">
                                <h2 class="mb-5">
                                    <strong>Descripción</strong>
                                </h2>
                                <span>Formación útil, actualizada y aplicable desde el primer día.
                                </span>
                                <br />
                                <br />
                                <span>Cursos diseñados para directivos, UTP, docentes y equipos educativos. Acompañamos el desarrollo profesional con herramientas concretas, alineadas al currículo nacional y al contexto de cada escuela.
                                </span>
                                <br />
                                <br />
                                <span><i class="fas fa-check me-2 text-primary"></i>Modalidad presencial
                                </span>
                                <br /> <br />
                                <span><i class="fas fa-check me-2 text-primary"></i>Cursos registrados en plataforma ATE
                                </span>
                                <br /> <br />
                                <span><i class="fas fa-check me-2 text-primary"></i>Facilitadores con experiencia en aula y posgrados en educación
                                </span>
                                <br />
                                <br /><br />
                               <a href="certificado_pertenencia.pdf" style="cursor:pointer">
                                    <img class="img-fluid w-25" src="../img/fundacion/F05.jpg" />
                               </a>
                                <br /><br />
                                <br />
                                <a style="font-family: Work Sans; font-weight: 600;font-size: 16px; line-height: 100%;letter-spacing: 10%;text-align: center;text-transform: uppercase;" data-bs-toggle="modal" data-bs-target="#portfolioModal1" class="btn btn-danger rounded-pill py-2 px-4"><span class="ms-5 me-5">saber más</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

        <script type="text/javascript">            
        function ShowModalContacto() {
            $(window).on("load", function () {
                $('#portfolioModal1').modal('show');
            });
        }
    </script>

    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content text-dark">
                <div class="modal-header">
                    <h5 class="modal-title">Contacto - Fundación Ichn</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <table class="table table-borderless text-dark">
                        <tr>
                            <td>Nombre</td>
                            <td>
                                <asp:TextBox ID="TextBoxNombre" CssClass="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Apellido</td>
                            <td>
                                <asp:TextBox ID="TextBoxApellido" CssClass="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Institución</td>
                            <td>
                                <asp:TextBox ID="TextBoxInstituto" CssClass="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Correo</td>
                            <td>
                                <asp:TextBox ID="TextBoxMail" CssClass="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Teléfono</td>
                            <td>
                                <asp:TextBox ID="TextBoxFono" CssClass="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>                      
                        <tr>
                            <td>Mensaje (opcional)</td>
                            <td>
                                <textarea id="TextAreaMensaje" runat="server" class="form-control" cols="20" rows="2"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-end">
                                <button type="button" class="btn btn-secondary text-white" data-bs-dismiss="modal">Cancelar</button>
                                <asp:LinkButton class="btn btn-success" ID="LinkButtonEnviar" runat="server" OnClick="LinkButtonEnviar_Click"><span class="me-5 ms-5">Enviar</span></asp:LinkButton>
                            </td>
                        </tr>
                        <tr runat="server" id="error_contacto" visible="false">
                            <td colspan="2" class="text-center text-danger">
                                <strong><asp:Label ID="LabelMnjForm" runat="server" Text="Label"></asp:Label></strong>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">            
        function ShowModalMensaje() {
            $(window).on("load", function () {
                $('#modalMensaje').modal('show');
            });
        }
    </script>


    <div class="modal fade" id="modalMensaje" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Contacto Fundación</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center">
                    <div class="row">
                        <div class="col-md-2 text-center">
                            <span runat="server" id="error_icono"><strong><i class="bx bx-error text-primary" style="font-size: 60px"></i></strong></span>
                            <span runat="server" id="ok_icono"><strong><i class="bx bx-check-circle text-success" style="font-size: 60px"></i></strong></span>
                        </div>
                        <div class="col-md-10 text-dark" style="display: flex; align-items: center;">
                            <div>
                                <strong>
                                    <asp:Label ID="LabelMensajeError" runat="server" Text=""></asp:Label>
                                </strong>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">                    
                    <asp:LinkButton ID="LinkButton2" class="btn btn-secondary text-white" OnClick="LinkButtonCargarPagina_Click"  runat="server">Aceptar</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>


</asp:Content>

