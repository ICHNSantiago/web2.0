<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web.Admin.Login" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <link rel="shortcut icon" href="img/favicon.png">
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,opsz,wght@0,9..40,100..1000;1,9..40,100..1000&family=Inter:slnt,wght@-10..0,100..900&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link rel="stylesheet" href="<%=Page.ResolveUrl("~/lib/animate/animate.min.css") %>" />
    <link rel="stylesheet" href="<%=Page.ResolveUrl("~/lib/lightbox/css/lightbox.min.css") %>">
    <link rel="stylesheet" href="<%=Page.ResolveUrl("~/lib/owlcarousel/assets/owl.carousel.min.css") %>">


    <!-- Customized Bootstrap Stylesheet -->
    <link rel="stylesheet" href="<%=Page.ResolveUrl("~/lib/ls/bootstrap.min.css") %>" />
    <!-- Template Stylesheet -->
    <link rel="stylesheet" href="<%=Page.ResolveUrl("~/lib/ls/style.css") %>" />




</head>
<body>
    <form id="form1" runat="server">
       

        <div class="container-fluid topbar px-0 px-lg-4 py-2 d-none d-lg-block" style="background-color: #00285d;">
            <div class="container">
                <div class="row gx-0 align-items-center">
                    <div class="col-lg-8 text-center text-lg-start mb-lg-0">
                        <div class="d-flex flex-wrap">
                            <div class="border-end border-primary pe-3 ">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 text-center text-lg-end">
                        <div class="d-flex justify-content-end">
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- Topbar End -->
        <!-- Navbar & Hero Start -->
        <div class="container-fluid nav-bar px-0 px-lg-4 py-lg-0">
            <div>
                <nav class="navbar navbar-expand-lg navbar-light">

                    <img class="img-fluid  w-1" runat="server" id="gif_fiesta" />

                    <a href="<%=Page.ResolveUrl("~/index.aspx") %>" class="navbar-brand p-0">
                        <img class="img-fluid w-75" src="<%=Page.ResolveUrl("~/img/logo.png") %>" />
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                        <span class="fa fa-bars"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarCollapse">
                        <div class="navbar-nav mx-0 mx-lg-auto">
                            <a href="<%=Page.ResolveUrl("~/admin/index.aspx") %>" class="nav-item nav-link active">Home</a>
                            <a href="<%=Page.ResolveUrl("~/Banner/index.aspx") %>" class="nav-item nav-link">Banner</a>
                            <div class="nav-item dropdown">
                            </div>
                            <div class="nav-btn px-2">
                            </div>
                        </div>
                    </div>
                    <div class="d-none d-xl-flex flex-shrink-0 ps-4">
                    </div>

                </nav>
            </div>

        </div>
        <!-- Navbar & Hero End -->


        <div class="container-fluid alert-secondary about py-5">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-xl-6">
                        <div class="bg-white rounded p-5 shadow text-center mb-1">
                            <img src="../img/favicon.png" />
                            <br />
                            <br />
                            <h1>
                                <strong>Administrador</strong>
                            </h1>
                            <h3>
                                <strong>Welcome | Bienvenido/a </strong>
                            </h3>
                        </div>
                    </div>
                    <div class="col-xl-6">
                        <div class="bg-white rounded p-5 shadow  text-center">
                            <div class="row mt-5 mb-1">
                                <div class="col-md-2"></div>
                                <div class="col-md-8 mb-3">
                                    <h5>USUARIO | CLAVE</h5>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2"></div>
                                <div class="col-md-8 mb-3 text-center">
                                    <asp:TextBox ID="TextBoxRut" required="required" placeholder="Usuario" autocomplete="off" CssClass="form-control mb-3" runat="server"></asp:TextBox>
                                    <asp:TextBox ID="TextBoxClave" Type="password" required="required" placeholder="Clave" autocomplete="off" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-2 mt-2"></div>
                                <div class="col-md-8 mb-3 mt-2">
                                    <div class="d-grid">
                                        <asp:Button ID="ButtonIngresarRut" CssClass="btn btn-success" runat="server" Text="Ingresar" OnClick="ButtonIngresarRut_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>



    <!-- Copyright Start -->
    <div class="container-fluid copyright py-4">
        <div class="container">
            <div class="row g-4 align-items-center">
                <div class="col-md-6 text-center text-md-end mb-md-0">
                    <span class="text-body"><a href="#" class="border-bottom text-white"><i class="fas fa-copyright text-light me-2"></i>Norteamericano.cl</a>, All right reserved.</span>
                </div>
                <div class="col-md-6 text-center text-md-start text-body">
                    Designed By <a class="border-bottom text-white">Departamento de informática </a>
                </div>
            </div>
        </div>
    </div>
    <!-- Copyright End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-primary btn-lg-square rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>




    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src='<%=Page.ResolveUrl("~/lib/wow/wow.min.js") %>'></script>
    <script src='<%=Page.ResolveUrl("~/lib/easing/easing.min.js") %>'></script>
    <script src='<%=Page.ResolveUrl("~/lib/waypoints/waypoints.min.js") %>'></script>
    <script src='<%=Page.ResolveUrl("~/lib/counterup/counterup.min.js") %>'></script>
    <script src='<%=Page.ResolveUrl("~/lib/lightbox/js/lightbox.min.js") %>'></script>
    <script src='<%=Page.ResolveUrl("~/lib/owlcarousel/owl.carousel.min.js") %>'></script>


    <!-- Template Javascript -->
    <script src='<%=Page.ResolveUrl("~/lib/ls/main.js") %>'></script>

    <script>
        $('.dropdown-menu a.dropdown-toggle').on('click', function (e) {
            if (!$(this).next().hasClass('show')) {
                $(this).parents('.dropdown-menu').first().find('.show').removeClass("show");
            }
            var $subMenu = $(this).next(".dropdown-menu");
            $subMenu.toggleClass('show');


            $(this).parents('li.nav-item.dropdown.show').on('hidden.bs.dropdown', function (e) {
                $('.dropdown-submenu .show').removeClass("show");
            });


            return false;
        });
    </script>


</body>

</html>
