<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Web.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta name="description" content="Norteamericano, sede, sedes, dirección , sucursal, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Norteamericano | Contacto - Cursos de Inglés </title>
    <link rel="canonical" href="https://norteamericano.cl/" />
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <!-- Google Tag Manager (noscript) -->
    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W7349HX"
            height="0" width="0" style="display: none; visibility: hidden"></iframe>
    </noscript>
    <!-- End Google Tag Manager (noscript) -->

    <!-- Feature Start -->
    <!-- Contact Start -->
    <div class="container-fluid contact bg-light py-5">

        <div class="container py-5" runat="server" id="contacto_lead">
            <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px;">
                <h1 class="display-4 mb-4">Contáctanos</h1>
                <asp:Label ID="Labelrrss" Visible="false" runat="server" Text="Web"></asp:Label>
            </div>
            <div class="row g-5">
                <div class="col-xl-6 wow fadeInLeft" data-wow-delay="0.2s">
                    <div class="contact-img d-flex justify-content-center">
                        <div class="contact-img-inner mt-5 ">
                            <img src="img/nivel2.png" class="img-fluid w-100 rounded mt-5" alt="Image">
                        </div>
                    </div>
                </div>
                <div class="col-xl-5 wow fadeInRight" data-wow-delay="0.4s">
                    <div>
                        <h4 class="text-primary">Lleva tu inglés</h4>
                        <h5 class="mb-4">al siguiente nivel con el Norteamericano.</h5>

                        <div class="row g-3">
                            <table class="table table-borderless text-center">
                                <tr>
                                    <td colspan="2">
                                        <asp:TextBox ID="TextBoxNombre" placeholder="Nombre" Font-Bold="true" class="form-control " runat="server" Autocomplete="OFF"></asp:TextBox>
                                        <strong>
                                            <asp:Label ID="LabelErrorNombre" Visible="false" CssClass="text-danger" runat="server" Text="Este campo es obligatorio"></asp:Label>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:TextBox ID="TextBoxCorreo" placeholder="Correo" Font-Bold="true" class="form-control " runat="server" Autocomplete="OFF"></asp:TextBox>
                                        <strong>
                                            <asp:Label ID="LabelErrorMail" Visible="false" CssClass="text-danger" runat="server" Text="Este campo es obligatorio"></asp:Label>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center" style="width: 30%">
                                        <asp:TextBox ID="TextBox1" placeholder="+56" Font-Bold="true" class="form-control " runat="server" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBoxFono" MaxLength="9" placeholder="Teléfono" Font-Bold="true" class="form-control " runat="server" onkeypress="return valideKey(event)" Autocomplete="OFF"></asp:TextBox>
                                        <strong>
                                            <asp:Label ID="LabelErrorFono" Visible="false" CssClass="text-danger" runat="server" Text="Este campo es obligatorio"></asp:Label>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:DropDownList ID="ListaPrograma" Font-Bold="true" class="form-select" runat="server"></asp:DropDownList>
                                        <strong>
                                            <asp:Label ID="LabelErrorPrograma" Visible="false" CssClass="text-danger" runat="server" Text="Este campo es obligatorio"></asp:Label>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="text-center">
                                        <div class="d-grid gap-2">
                                            <asp:LinkButton ID="LinkButtonEnviar" class="btn btn-primary rounded-pill py-3 px-5" runat="server" OnClick="LinkButtonEnviar_Click">Enviar</asp:LinkButton>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div class="container py-5" runat="server" id="mensaje_lead" visible="false">
            <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px;">
                <h1 class="display-4 mb-4">Gracias por contactarnos</h1>
            </div>
            <div class="row g-5">

                <div class="col-xl-6 wow fadeInLeft" data-wow-delay="0.2s">
                    <div class="contact-img d-flex justify-content-center">
                        <div class="contact-img-inner">
                            <img src="img/nivel2.png" class="img-fluid w-100 rounded" alt="Image">
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 wow fadeInRight" data-wow-delay="0.2s">
                    <div class="alert alert-light text-center">
                        <span style="font-size: 60px">
                           <i class="fas fa-check-circle text-primary"></i>
                        </span>
                        <hr />
                        <h4>
                            Recibimos tu solicitud y en breve nos pondremos en contacto contigo
                        </h4>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid contact py-5">
        <div class="container py-5">
            <div class="col-xl-12 wow fadeInRight mb-5">
                <div class="row g-4">
                    <div class="col-md-6 col-lg-6 wow fadeInUp" data-wow-delay="0.2s">
                        <div class="contact-add-item">
                            <div class="contact-icon text-primary mb-4">
                                <i class="fas fa-map-marker-alt fa-2x"></i>
                            </div>
                            <div>
                                <h4>Dirección</h4>
                                <p class="mb-0">Moneda 1467, Santiago. CHILE</p>
                                <p class="mb-0">San Pío x 2485, Providencia. CHILE</p>
                                <p class="mb-0">Av. Vicuña Mackenna Poniente 6069, La Florida. CHILE</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 wow fadeInUp" data-wow-delay="0.4s">
                        <div class="contact-add-item">
                            <div class="contact-icon text-primary mb-4">
                                <i class="fas fa-envelope fa-2x"></i>
                            </div>
                            <div>
                                <h4>Mail</h4>
                                <p class="mb-0">contacto@norteamericano.cl</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 wow fadeInUp" data-wow-delay="0.6s">
                        <div class="contact-add-item">
                            <div class="contact-icon text-primary mb-4">
                                <i class="fa fa-phone-alt fa-2x"></i>
                            </div>
                            <div>
                                <h4>Teléfono</h4>
                                <p class="mb-0">+56 2 3210 8280</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 wow fadeInUp" data-wow-delay="0.2s">
                <div class="rounded">
                    <iframe class="rounded w-100"
                        style="height: 400px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1048.6492414183515!2d-70.65765996530345!3d-33.44269198806315!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9662c5a61dcd7b61%3A0x2e6f65a0c9935211!2sInstituto%20Chileno%20Norteamericano%20sede%20Moneda!5e0!3m2!1ses!2sus!4v1578337576914!5m2!1ses!2sus"
                        loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </div>
    </div>

    <!-- Contact End -->
       
</asp:Content>
