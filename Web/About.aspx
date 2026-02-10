<%@ Page Title="" Language="C#" MasterPageFile="~/Ichn.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Web.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Norteamericano, sede, sedes, dirección , sucursal, Cursos de Inglés para adultos, regulares e intensivos. Somos expertos en la enseñanza presencial. curso de inglés, español">
    <title>Norteamericano | Nuestra Institución - Cursos de Inglés </title>
    <link rel="canonical" href="https://norteamericano.cl/" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Google Tag Manager (noscript) -->
    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W7349HX"
            height="0" width="0" style="display: none; visibility: hidden"></iframe>
    </noscript>
    <!-- End Google Tag Manager (noscript) -->

    <!-- About Start -->
    <div class="container-fluid bg-white about py-5">
        <div class="container py-5">
            <div class="row g-4 justify-content-center">
                <div class="col-lg-3">
                    <img class="img-fluid" src="img/logocuadrado.png" />

                </div>
                <div class="col-lg-9">
                    <div class="mx-auto pb-5 " style="max-width: 1000px;">

                        <div class="row">
                            <div class="col-lg-11">
                                <h4 class="text-primary">Instituto Chileno</h4>
                                <h1 class="display-4">Norteamericano</h1>
                            </div>
                            <div class="col-lg-1">
                                <div class="mt-5">
                                    <div class="d-grid gap-2 mx-auto">
                                        <button class="btn btn-outline-primary" id="hablar" type="button"><i class="fas fa-volume-up"></i></button>
                                        <button class="btn btn-outline-danger" id="pausar" style="display: none" type="button"><i class="fas fa-volume-mute"></i></button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <p class="mb-0 text-dark" style="text-align: justify">
                                    <asp:Label ID="Label1" runat="server" Text="La misión del Instituto es contribuir con el conocimiento, entendimiento y valoración mutua entre los pueblos, las organizaciones y personas principalmente a través del aprendizaje, enseñanza y difusión de los idiomas inglés y español como segunda lengua. 
                                        Asimismo, imparte conocimientos que permitan el futuro desempeño laboral en múltiples áreas, al tiempo de fomentar la cultura a través de actividades orientadas a dicho propósito."></asp:Label>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Blog Start -->
    <div class="container-fluid  bg-light py-5">
        <div class="container py-5">
            <div class="row g-4 justify-content-center">
                <div class="col-lg-9 text-center">

                    <div class="row">

                        <div class="col-lg-1">
                            <div class="d-grid gap-2 mx-auto">
                                <button class="btn btn-outline-primary" id="hablar2" type="button"><i class="fas fa-volume-up"></i></button>
                                <button class="btn btn-outline-danger" id="pausar2" style="display: none" type="button"><i class="fas fa-volume-mute"></i></button>
                            </div>
                        </div>

                        <div class="col-lg-11">
                            <h1 class="text-end"><span class="text-primary"><strong>Norteamericano</strong></span> | Visión</h1>
                        </div>

                        <div class="col-lg-12">
                            <p style="text-align: justify" class="text-dark mt-3">
                                <asp:Label ID="Label2" runat="server" Text="El Instituto Chileno Norteamericano cree en la capacidad e interés de las personas para aprender y desarrollarse.
                                    Estamos convencidos del poder que tiene la educación para mejorar la calidad de vida de las personas. 
                                    Por ello proveemos el mejor ambiente para el aprendizaje. 
                                    Somos un equipo humano altamente preparado y motivado para acoger y apoyar a las personas y organizaciones en el logro de sus metas de conocimiento de los idiomas inglés y español como segunda lengua. 
                                    El Instituto Chileno Norteamericano es dinámico y flexible, capaz de responder rápidamente a los desafíos del entorno, reconocido en todo el país por la excelencia en su quehacer académico, de gestión, tradición, aporte a la cultura y desarrollo del país."></asp:Label>
                            </p>
                        </div>

                    </div>
                </div>
                <div class="col-lg-3">
                    <img class="img-fluid rounded" src="img/about02.png" />
                </div>

            </div>
        </div>
    </div>
    <!-- Blog End -->

    <!-- Blog Start -->
    <div class="container-fluid  bg-white py-5">
        <div class="container py-5">
            <div class="row g-4 justify-content-center">
                <div class="col-lg-3">
                    <img class="img-fluid rounded" src="img/about01.png" />
                </div>

                <div class="col-lg-9 ">

                    <div class="row">
                        <div class="col-lg-11">
                            <h1><span class="text-primary"><strong>Nuestra</strong></span> Institución</h1>
                        </div>
                        <div class="col-lg-1">
                            <div class="d-grid gap-2 mx-auto">
                                <button class="btn btn-outline-primary" id="hablar3" type="button"><i class="fas fa-volume-up"></i></button>
                                <button class="btn btn-outline-danger" id="pausar3" style="display: none" type="button"><i class="fas fa-volume-mute"></i></button>

                            </div>
                        </div>
                        <div class="col-lg-12 ">

                            <p style="text-align: justify" class="text-dark mt-3">
                                <asp:Label ID="Label3" runat="server" Text=" El Instituto Chileno Norteamericano es un centro binacional, fundado el 24 de Noviembre de 1938. Nuestra misión es fomentar y educar en el idioma inglés como una herramienta fundamental para el mundo de hoy y que constituye una habilidad y valor comunicativo universal. 
                                    Desarrollamos nuestra experiencia en el diseño e implementación de programas de enseñanza de inglés para la comunicación interpersonal de adultos; programas de inglés para jóvenes, niños y pre-escolares ; cursos de capacitación para empresas y servicio de información y biblioteca. 
                                    Nos interesa ser un centro educativo y cultural, participante activo y dinamizador de los procesos de desarrollo, con aportes de la interacción de las culturas chilena y estadounidense en sus distintas expresiones, asegurando cada día más un profundo conocimiento de los valores representativos de ambos pueblos. 
                                    Estos han sido los rasgos distintivos que diferencian al Instituto Chileno Norteamericano de Cultura de otras instituciones que se ocupan de la enseñanza del idioma inglés"></asp:Label>


                            </p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Blog End -->

    <!-- Blog Start -->
    <div class="container-fluid  bg-light py-5">
        <div class="container py-5">
            <div class="row g-4 justify-content-center">
                <div class="col-lg-12 text-center">
                    <h1 class="text- mb-5"><span class="text-primary"><strong>Norteamericano </strong></span>| Instalaciones</h1>
                    <hr />
                </div>
                <div class="col-lg-6 text-center">
                    <div class="ratio" style="--bs-aspect-ratio: 50%;">
                        <iframe class="embed-responsive-item" src="https://www.google.com/maps/embed?pb=!4v1582226712388!6m8!1m7!1sCAoSLEFGMVFpcE12YlJ1cy1MS3p0TzJ3TExtOHJoUHJmTjR0b3dIY19kZ190OE8z!2m2!1d-33.44248891931718!2d-70.65710988105296!3f20!4f0!5f0.7820865974627469"></iframe>
                    </div>
                </div>
                <div class="col-lg-6 text-center">
                    <div class="ratio" style="--bs-aspect-ratio: 50%;">
                        <iframe class="embed-responsive-item" src="https://www.google.com/maps/embed?pb=!4v1582226768444!6m8!1m7!1sCAoSLEFGMVFpcE5nZ0dqZjRmcTI2UmoyYkpHNVFRVG5oVkN3cmRJV1pST0R0OThu!2m2!1d-33.4420757!2d-70.6571364!3f281.48416343240876!4f8.684603369667911!5f0.7820865974627469"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Blog End -->

    <script>
        document.getElementById("hablar").addEventListener("click", () => {
            decir(document.getElementById("ContentPlaceHolder1_Label1").textContent);
        });

        document.getElementById("pausar").addEventListener("click", () => {
            parar();
        });


        function decir(texto) {
          
            //const synth = window.speechSynthesis;
            //const voices = synth.getVoices(); // Get all available voices
            //let utterance = new SpeechSynthesisUtterance(texto);

            //// Set the voice (e.g., the first one in the list)
            //utterance.voice = voices[0];

            //// Adjust rate and pitch (optional)
            //utterance.rate = 1; // Default rate (0.1 to 10)
            //utterance.pitch = 2; // Default pitch (0 to 2)

            //synth.speak(utterance); // Speak the text

            speechSynthesis.speak(new SpeechSynthesisUtterance(texto));
            document.getElementById('hablar').style.display = 'none';
            document.getElementById('pausar').style.display = 'block';
        }

        function parar(texto) {
            speechSynthesis.cancel();
            document.getElementById('hablar').style.display = 'block';
            document.getElementById('pausar').style.display = 'none';
        }


        document.getElementById("hablar2").addEventListener("click", () => {
            decir2(document.getElementById("ContentPlaceHolder1_Label2").textContent);
        });

        document.getElementById("pausar2").addEventListener("click", () => {
            parar2();
        });


        function decir2(texto) {

            speechSynthesis.speak(new SpeechSynthesisUtterance(texto));

            document.getElementById('hablar2').style.display = 'none';
            document.getElementById('pausar2').style.display = 'block';
        }

        function parar2(texto) {
            speechSynthesis.cancel();
            document.getElementById('hablar2').style.display = 'block';
            document.getElementById('pausar2').style.display = 'none';
        }



        document.getElementById("hablar3").addEventListener("click", () => {
            decir3(document.getElementById("ContentPlaceHolder1_Label3").textContent);
        });

        document.getElementById("pausar3").addEventListener("click", () => {
            parar3();
        });


        function decir3(texto) {
            speechSynthesis.speak(new SpeechSynthesisUtterance(texto));
            document.getElementById('hablar3').style.display = 'none';
            document.getElementById('pausar3').style.display = 'block';
        }

        function parar3(texto) {
            speechSynthesis.cancel();
            document.getElementById('hablar3').style.display = 'block';
            document.getElementById('pausar3').style.display = 'none';
        }
    </script>

</asp:Content>
