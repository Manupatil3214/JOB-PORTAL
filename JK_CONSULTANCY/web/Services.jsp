<%-- 
    Document   : Services
    Created on : 6 Dec, 2021, 12:08:33 AM
    Author     : manup
--%>

<!DOCTYPE html>
<html lang="en" dir="ltr">

    <head>
        <meta charset="utf-8">
        <title></title>

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&display=swap" rel="stylesheet">
        <style>
            * {
                margin: 0;
                padding: 0;
               font-family: "Poppins" , sans-serif;
                box-sizing: border-box;
            }

            .services-section {
                background: url(bg.jpg);
                background-size: cover;
                padding: 60px 0;
            }

            .inner-width {
                width: 100%;
                max-width: 1200px;
                margin: auto;
                padding: 0 20px;
                overflow: hidden;
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
/*                background: linear-gradient(57deg, #00C6A7, #1E4D92);*/
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
/*                font-weight: bold;*/
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
                /* margin: 0px 9px;
                background-color: rgb(193, 230, 30);
                padding: 1px;
                border-radius: 4px;
                font-size: 15px;
                cursor: pointer;
*/                font-family: 'Baloo Bhai 2', cursive; 
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
            
                <div class="services-section">
                    <div class="inner-width">
                        <h1 class="section-title">Our Services</h1>
                        <div class="border"></div>
                        <div class="services-container">

                            <div class="service-box">
                                <div class="service-icon">
                                    <i class="fas fa-paint-brush"></i>
                                </div>
                                <div class="service-title">Web Designs</div>
                                <div class="service-desc">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et eaque ratione rem porro, nihil.
                                </div>
                            </div>

                            <div class="service-box">
                                <div class="service-icon">
                                    <i class="fas fa-code"></i>
                                </div>
                                <div class="service-title">Web Development</div>
                                <div class="service-desc">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et eaque ratione rem porro, nihil.
                                </div>
                            </div>

                            <div class="service-box">
                                <div class="service-icon">
                                    <i class="fas fa-brush"></i>
                                </div>
                                <div class="service-title">Responsive Designs</div>
                                <div class="service-desc">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et eaque ratione rem porro, nihil.
                                </div>
                            </div>

                            <div class="service-box">
                                <div class="service-icon">
                                    <i class="fas fa-object-ungroup"></i>
                                </div>
                                <div class="service-title">Edit Sections</div>
                                <div class="service-desc">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et eaque ratione rem porro, nihil.
                                </div>
                            </div>

                            <div class="service-box">
                                <div class="service-icon">
                                    <i class="fas fa-database"></i>
                                </div>
                                <div class="service-title">Databases</div>
                                <div class="service-desc">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et eaque ratione rem porro, nihil.
                                </div>
                            </div>

                            <div class="service-box">
                                <div class="service-icon">
                                    <i class="fab fa-android"></i>
                                </div>
                                <div class="service-title">Android</div>
                                <div class="service-desc">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et eaque ratione rem porro, nihil.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </header>
                </body>

                </html>