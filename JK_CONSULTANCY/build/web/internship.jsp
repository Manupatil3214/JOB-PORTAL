<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Online Job Portal</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

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
        <style>
               nav{
                        font-family: 'Playfair Display', serif;
                display: flex;
                width: 100%;
                background: #0a5071;
                position: relative;
                justify-content: space-between;
                text-align: center;
                padding: 15px 30px;
            }
            nav .icon{
                font-size: 35px;
                font-weight: 800;
                color: #fff;
                cursor: pointer;


            }
            .icon img {
                width: 150px;
                padding: 3px;
                /* filter: invert(100%); */
            }

            .icon div {
                text-align: center;
                width: 0px;
                line-height: 19px;
            }
            nav ol{
                display: flex;
                list-style: none;
                margin: auto 0;
            }
            nav ol li{
                margin: 0 2px;
            }
            nav ol li a{
                color: #fff;
                font-size: 20px;
                text-decoration: none;
                text-transform: capitalize;
                letter-spacing: 1px;
                padding: 5px 10px;
            }
            nav ol li:hover a{
                background: #fff;
                color: #0a5071;
            }
            nav .search_box{
                display: flex;
                margin: auto 0;
                height: 35px;
                line-height: 35px;
            }
            nav .search_box input{
                border: none;
                outline: none;
                background: #fff;
                height: 100%;
                padding: 0 10px;
                font-size: 20px;
                width: 350px;
            }
            nav .search_box span{
                color: #0a5071;
                font-size: 20px;
                background: #fff;
                height: 100%;
                padding: 8px;
                position: relative;
                cursor: pointer;
                z-index: 1;
            }
            nav .search_box span:hover{
                color: #fff;
            }
            nav .search_box span::after{
                height: 100%;
                width: 0%;
                content: '';
                background: #ff003c;
                position: absolute;
                top: 0;
                right: 0;
                z-index: -1;
                transition: 0.3s;
            }
            nav .search_box span:hover::after{
                width: 100%;
            }
            nav .bar{
                position: relative;
                margin: auto;
                display: none;
            }
            nav .bar span{
                position: absolute;
                color: #fff;
                font-size: 35px;
            }
              .btn {

                display: inline-block;
                font-size: 17px;
                font-weight: 100px;
                color: white;
                text-transform: uppercase;
                /* background: linear-gradient(57deg, #00C6A7, #1E4D92); */
                background: linear-gradient(-135deg, #c850c0, #4158d0);
                border-radius: 4px 4px 4px 4px;
                padding: 14px 19px;
                margin-top: 3px;
            }

            .btn:hover {
                background-color: deeppink;
            }
        </style>
            
    </head>

    <body>
<nav>
            <div class="icon">
                <img src="img/logo.png " alt="">


            </div>
            <div class="search_box">
                <input type="search" placeholder="Search here">
                <span class="fa fa-search"></span>
            </div>
            <ol>
                <li><a href="EntryPage.html" class="active"> Home</a></li>
                <li><a href="Show_Company_Details.jsp">View Job</a> </li>
                 <li><a href="internship.jsp">Internship</a> </li>
                <li><a href="EntryService.jsp">Services</a> </li>

                <li><a href="EntryAbout.jsp"> About us</a></li>
            </ol>
            <div class="button">
                <a href="JK_CONSULTANCY.html">
                    <button class="btn">LogOut</button>
                </a>
            </div>
            <label for="check" class="bar">
                <span class="fa fa-bars" id="bars"></span>
                <span class="fa fa-times" id="times"></span>
            </label>
        </nav>
        

        <section id="internship">
            <p class="heading" id="know-more">Online Trainings we offer:</p>
            <div class="row">
                <div class="col-sm-3">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="img/intern/android.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Android App Development</h5>
                            <p>Build your own Android music player app</p>
                        </div>
                        <div class="card-body">
                            <p>Duration : 6 Weeks</p>
                            <a href="#" class="card-link">Know More</a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="img/intern/web-development.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Web Development</h5>
                            <p>Learn how to create a website from scratch</p>
                        </div>
                        <div class="card-body">
                            <p>Duration : 6 Weeks</p>
                            <a href="#" class="card-link">Know More</a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="img/intern/python.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Programming with Python</h5>
                            <p>Build a fantasy cricket game using Python language</p>
                        </div>
                        <div class="card-body">
                            <p>Duration : 6 Weeks</p>
                            <a href="#" class="card-link">Know More</a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="img/intern/digital-marketing.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Digital Marketing</h5>
                            <p>Learn SEO, Search Engine Marketing, Web Analytics and more</p>
                        </div>
                        <div class="card-body">
                            <p>Duration : 6 Weeks</p>
                            <a href="#" class="card-link">Know More</a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="img/intern/c-plus-plus.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Programming with C and C++</h5>
                            <p>Learn world's most popular programming language</p>
                        </div>
                        <div class="card-body">
                            <p>Duration : 6 Weeks</p>
                            <a href="#" class="card-link">Know More</a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="img/intern/java.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Core Java</h5>
                            <p>Develop system applications from scratch</p>
                        </div>
                        <div class="card-body">
                            <p>Duration : 6 Weeks</p>
                            <a href="#" class="card-link">Know More</a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="img/intern/excel.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Advance Excel</h5>
                            <p>Learn how to use Microsoft Excel from scratch</p>
                        </div>
                        <div class="card-body">
                            <p>Duration : 6 Weeks</p>
                            <a href="#" class="card-link">Know More</a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="img/intern/autocad.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">AutoCAD</h5>
                            <p>Learn to build 2D drafts and 3D models in AutoCAD</p>
                        </div>
                        <div class="card-body">
                            <p>Duration : 6 Weeks</p>
                            <a href="#" class="card-link">Know More</a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="img/intern/business-communication-skills.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Business Communication Skills</h5>
                            <p>Develop effective communication skills for the workplace</p>
                        </div>
                        <div class="card-body">
                            <p>Duration : 6 Weeks</p>
                            <a href="#" class="card-link">Know More</a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="img/intern/iot.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Internet of Things</h5>
                            <p>Learn to build IoT projects from scratch</p>
                        </div>
                        <div class="card-body">
                            <p>Duration : 6 Weeks</p>
                            <a href="#" class="card-link">Know More</a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="img/intern/trading.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Beginner's Trading Certification</h5>
                            <p>Learn stock market trading strategies</p>
                        </div>
                        <div class="card-body">
                            <p>Duration : 6 Weeks</p>
                            <a href="#" class="card-link">Know More</a>
                        </div>
                    </div>
                </div>
            </div>   
        </section>


        <!--==========================
           Footer
         ============================-->
        <footer id="footer">
            <div class="container">
                <div class="copyright">
                    &copy; Copyright <strong>JobPortal</strong>. All Rights Reserved
                </div>
                <div class="credits">
                    <!--
                      All the links in the footer should remain intact.
                      You can delete the links only if you purchased the pro version.
                      Licensing information: https://bootstrapmade.com/license/
                      Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=JobPortal
                    -->
                    Designed by Us
                </div>
            </div>
        </footer><!-- #footer -->

        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

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

    </body>
</html>
