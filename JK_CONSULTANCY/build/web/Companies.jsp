<%-- 
    Document   : Services
    Created on : 6 Dec, 2021, 12:08:33 AM
    Author     : manup
--%>

<!DOCTYPE html>
<html lang="en" dir="ltr">

    <head>
        <meta charset="utf-8">


        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&display=swap" rel="stylesheet">
        <meta charset="utf-8">
        <title>Online Job Portal</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <meta content="For Seekers" name="description">

        <!-- Favicons -->
        <link href="img/favicon.png" rel="icon">
        <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

        <!-- Bootstrap CSS File -->
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Libraries CSS Files -->
        <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

        <!-- Main Stylesheet File -->
        <link href="css/style.css" rel="stylesheet">

        <!-- =======================================================
          Theme Name: JobPortal
          Theme URL: https://bootstrapmade.com/JobPortal-bootstrap-business-template/
          Author: BootstrapMade.com
          License: https://bootstrapmade.com/license/
        ======================================================= -->

        <style>
            body { font-family: "Poppins" , sans-serif;}
            * {box-sizing: border-box;}

            /* Full-width input fields */
            input[type=text], input[type=password] {
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                display: inline-block;
                border: none;
                background: #f1f1f1;
            }

            /* Add a background color when the inputs get focus */
            input[type=text]:focus, input[type=password]:focus {
                background-color: #ddd;
                outline: none;
            }


            .cancelbtn {
                padding: 14px 20px;
                background-color: #f44336;
            }

            /* Float cancel and signup buttons and add an equal width */
            .cancelbtn, .signupbtn {
                float: left;
                width: 50%;
            }

            /* Add padding to container elements */
            .container {
                padding: 16px;
            }

            /* The Modal (background) */
            .modal {
                display: none; /* Hidden by default */
                position: fixed; /* Stay in place */
                z-index: 1; /* Sit on top */
                left: 0;
                top: 0;
                width: 100%; /* Full width */
                height: 100%; /* Full height */
                overflow: auto; /* Enable scroll if needed */
                background-color: #474e5d;
                padding-top: 50px;
            }

            /* Modal Content/Box */
            .modal-content {
                background-color: #fefefe;
                margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
                border: 1px solid #888;
                width: 80%; /* Could be more or less, depending on screen size */
            }

            /* Style the horizontal ruler */
            hr {
                border: 1px solid #f1f1f1;
                margin-bottom: 25px;
            }

            /* The Close Button (x) */
            .close {
                position: absolute;
                right: 35px;
                top: 15px;
                font-size: 40px;
                font-weight: bold;
                color: #f1f1f1;
            }

            .close:hover,
            .close:focus {
                color: #f44336;
                cursor: pointer;
            }

            /* Clear floats */
            .clearfix::after {
                content: "";
                clear: both;
                display: table;
            }

            /* Change styles for cancel button and signup button on extra small screens */
            @media screen and (max-width: 300px) {
                .cancelbtn, .signupbtn {
                    width: 100%;
                }
            }
            * {
                margin: 0;
                padding: 0;
                font-family: "Poppins" , sans-serif;
                box-sizing: border-box;
            }


            .section-title {
                text-align: center;
                color: #ddd;
                text-transform: uppercase;
                font-size: 30px;
            }

            .border {
                width: 160px;
                height: 2px;
                background: #82ccdd;
                margin: 40px auto;
            }

            .services-container {
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
            }

            .service-box {
                max-width: 33.33%;
                padding: 10px;
                text-align: center;
                color: #ddd;
                cursor: pointer;
            }

            .service-icon {
                display: inline-block;
                width: 70px;
                height: 70px;
                border: 3px solid #82ccdd;
                color: #82ccdd;
                transform: rotate(45deg);
                margin-bottom: 30px;
                margin-top: 16px;
                transition: 0.3s linear;
            }

            .service-icon i {
                line-height: 70px;
                transform: rotate(-45deg);
                font-size: 26px;
            }

            .service-box:hover .service-icon {
                background: #82ccdd;
                color: #ddd;
            }

            .service-title {
                font-size: 18px;
                text-transform: uppercase;
                margin-bottom: 10px;
            }

            .service-desc {
                font-size: 14px;
            }

            @media screen and (max-width:960px) {
                .service-box {
                    max-width: 45%;
                }
            }

            @media screen and (max-width:768px) {
                .service-box {
                    max-width: 50%;
                }
            }

            @media screen and (max-width:480px) {
                .service-box {
                    max-width: 100%;
                }
            }

            .site-header {
                width: 100%;
                height: 95vh;
                background: #0f8a9d;
                background: linear-gradient(135deg, #71b7e6, #9b59b6);
                /*                clip-path: polygon(0% 0%, 100% 0%, 100% 80%, 0% 100%);*/
                font: optional;
                float: left;
            }

            nav {
                width: 100%;
                height: 100px;
                /*background-color:  red;*/
                display: flex;
                color: white;
            }

            .logo {
                position: absolute;
                top: 20px;
                left: 20px;
                /* border: 2px solid rgb(161, 18, 25); */
                display: inline-block;
            }

            .logo img {
                width: 150px;
                padding: 3px;
                /* filter: invert(100%); */
            }

            .logo div {
                text-align: center;
                width: 0px;
                line-height: 19px;
            }

            .logo h3 {
                display: block;
                font-size: 7px;
                margin-block-start: 0px;
                margin-block-end: 0px;
                margin-inline-start: 0px;
                margin-inline-end: 0px;
                font-weight: bold;
                color: rgb(139, 0, 104);
            }




            .navigation {
                display: block;
                /* border-radius: 10px; */
                /* overflow: auto; */
                width: 800px;
                margin: 10px auto;
                /* border: 2px solid rgb(28, 24, 167); */
                padding: 10px;
                display: flex;
                flex-direction: row;
                justify-content: space-around;
                align-items: center;
            }

            .navbar1 {
                display: inline-block;
            }

            .navbar1 li {
                display: inline-block;
                font-size: 22px;
                list-style: none;
                /* font-size: 15px; */

                text-transform: uppercase;
            }

            .navbar1 li a {
                color: rgb(37, 32, 34);
                text-decoration: none;
                padding: 12px 9px;

            }

            .navbar1 li a:hover,
            .navbar1 li a.active {
                text-decoration: underline;
                color: rgb(21, 255, 0);
                padding: 3px 13px;
            }



            .button {
                position: absolute;
                top: -20px;
                right: 10px;
                /* border: 2px solid rgb(0, 255, 55); */
            }

            .btn {
                font-family: 'Baloo Bhai 2', cursive; 
                display: inline-block;
                font-size: 17px;
                font-weight: 200px;
                color: white;
                text-transform: uppercase;
                background: linear-gradient(57deg, #00C6A7, #1E4D92);
                border-radius: 4px 4px 4px 4px;
                padding: 15px 18px;
                margin-top: 34px;
            }

            .btn:hover {
                background-color: deeppink;
            }
        </style>
    </head>

    <body>
        <header class="site-header clearfix">
            <nav>
                <div class="logo">
                   <img src="img/logo.png " alt="">
                    <!-- <h3>CONSULTANCY</h3> -->
                </div>

                <div class="navigation">
                    <ul class="navbar1">
                        <li><a href="JK_CONSULTANCY.html"> Home</a></li>
                        <li><a href="Companies.jsp">Companies</a> </li>
                        <li><a href="Services.jsp">Servises</a> </li>

                        <li><a href="About.jsp"> About us</a></li>
                        <li><a href="contact.jsp">Contac Us</a> </li>

                    </ul>
                </div>
                <div class="button">
                    <a href="Singup.jsp"><button class="btn">Sign Up</button></a> <a href="Registration.jsp"><button class="btn">Registration</button></a>
                </div>
            </nav>

            <section id="company" class="wow fadeInUp">
                <div class="container">

                    <header class="section-header">
                        <h3>Companies</h3>
                    </header>

                    <div class="owl-carousel clients-carousel">
                        <img src="img/clients/REDhAT1.png" alt="">
                        <img src="img/clients/COGNIZANT1.jpg" alt="">
                        <img src="img/clients/infosys1-logo.png" alt="">
                        <img src="img/clients/TCS1.jpg" alt="">
                        <img src="img/clients/amazon1-LOGO.jpg" alt="">
                        <img src="img/clients/cisco1.png" alt="">  
                    </div>

                </div>
            </section><!-- #clients -->

            <!--==========================
              Clients Section
            ============================-->
            <section id="testimonials" class="section-bg wow fadeInUp">
                <div class="container">

                    <header class="section-header">
                        <h3>Companies Provider</h3>
                    </header>

                    <div class="owl-carousel testimonials-carousel">

                        <div class="testimonial-item">
                            <img src="img/download.jfif" class="testimonial-img" alt="">
                            <h3>Manisha Wankhade</h3>
                            <h4>WebSite  Maker</h4>
                            <p>
                                <img src="img/quote-sign-left.png" class="quote-sign-left" alt="">
                                Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.
                                <img src="img/quote-sign-right.png" class="quote-sign-right" alt="">
                            </p>
                        </div>

                        <div class="testimonial-item">
                            <img src="img/OIP (4).jfif" class="testimonial-img" alt="">
                            <h3>Shraddha Bansod</h3>
                            <h4>Designer</h4>
                            <p>
                                <img src="img/quote-sign-left.png" class="quote-sign-left" alt="">
                                Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.
                                <img src="img/quote-sign-right.png" class="quote-sign-right" alt="">
                            </p>
                        </div>

                        <div class="testimonial-item">
                            <img src="img/OIP (3).jfif" class="testimonial-img" alt="">
                            <h3>Aishwarya Joshi</h3>
                            <h4>Entrepreneur</h4>
                            <p>
                                <img src="img/quote-sign-left.png" class="quote-sign-left" alt="">
                                Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.
                                <img src="img/quote-sign-right.png" class="quote-sign-right" alt="">
                            </p>
                        </div>

                        <!--<div class="testimonial-item">
                          <img src="img/testimonial-4.jpg" class="testimonial-img" alt="">
                          <h3>Matt Brandon</h3>
                          <h4>Freelancer</h4>
                          <p>
                            <img src="img/quote-sign-left.png" class="quote-sign-left" alt="">
                            Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.
                            <img src="img/quote-sign-right.png" class="quote-sign-right" alt="">
                          </p>
                        </div>
              
                        <div class="testimonial-item">
                          <img src="img/testimonial-5.jpg" class="testimonial-img" alt="">
                          <h3>John Larson</h3>
                          <h4>Store Owner</h4>
                          <p>
                            <img src="img/quote-sign-left.png" class="quote-sign-left" alt="">
                            Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.
                            <img src="img/quote-sign-right.png" class="quote-sign-right" alt="">
                          </p>
                        </div>-->

                    </div>

                </div>
            </section><!-- #testimonials -->


            <!--==========================
              Contact Section
            ============================-->

            <!-- JavaScript Libraries -->
            <script src="lib/jquery/jquery.min.js"></script>
            <script src="lib/jquery/jquery-migrate.min.js"></script>
            <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
            <script src="lib/easing/easing.min.js"></script>
            <script src="lib/superfish/hoverIntent.js"></script>
            <script src="lib/superfish/superfish.min.js"></script>
            <script src="lib/wow/wow.min.js"></script>
            <script src="lib/waypoints/waypoints.min.js"></script>
            <script src="lib/counterup/counterup.min.js"></script>
            <script src="lib/owlcarousel/owl.carousel.min.js"></script>
            <script src="lib/isotope/isotope.pkgd.min.js"></script>
            <script src="lib/lightbox/js/lightbox.min.js"></script>
            <script src="lib/touchSwipe/jquery.touchSwipe.min.js"></script>
            <!-- Contact Form JavaScript File -->
            <script src="contactform/contactform.js"></script>

            <!-- Template Main Javascript File -->
            <script src="js/main.js"></script>



        </header>
    </body>

</html>