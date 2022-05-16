<%-- 
    Document   : About
    Created on : 6 Dec, 2021, 12:19:52 AM
    Author     : manup
--%>

<!DOCTYPE html>
<html>

    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&display=swap" rel="stylesheet">
        <style>
            body {
                /*                font-family: Arial, Helvetica, sans-serif;*/
/*                font-family: "montserrat", sans-serif;*/
 font-family: "Poppins" , sans-serif;
                margin: 0;
            }

            html {
                box-sizing: border-box;
            }

            *,
            *:before,
            *:after {
                box-sizing: inherit;
            }

            .column {
                float: left;
                width: 33.3%;
                margin-bottom: 16px;
                padding: 0 8px;
            }

            .card {
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
                margin: 8px;
            }

            .about-section {
                padding: 50px;
                text-align: center;
                background-color: #474e5d;
                color: white;
            }

            .about-section h1 {
                padding: 50px;
                text-align: center;
                background-color: #474e5d;
                color: rgb(46, 178, 211);
            }

            .container {
                padding: 0 16px;
            }

            .container::after,
            .row::after {
                content: "";
                clear: both;
                display: table;
            }

            .title {
                color: grey;
            }

            .button {
                border: none;
                outline: 0;
                display: inline-block;
                padding: 8px;
                color: white;
                background-color: #000;
                text-align: center;
                cursor: pointer;
                width: 100%;
            }

            .button:hover {
                background-color: #555;
            }

            @media screen and (max-width: 650px) {
                .column {
                    width: 100%;
                    display: block;
                }
            }
            .site-header {
                width: 100%;
                height: 95vh;
/*                background: #0f8a9d;*/
/*                background: linear-gradient(57deg, #00C6A7,#77a1de);*/
                /*                clip-path: polygon(0% 0%, 100% 0%, 100% 80%, 0% 100%);*/
                 background: linear-gradient(135deg, #71b7e6, #9b59b6);
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


            /* .logo {
                width: 50%;
                height: 100px;
            }
            
            .logo h1 {
                line-height: 100px;
                padding-left: 50px;
            } */

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
                /*                align-items: center;*/
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


            /* .menu ul {
                width: 100%;
                height: 100px;
                display: flex;
                flex-direction: row;
                justify-content: space-around;
                align-items: center;
            }
            
            .menu ul li {
                list-style: none;
                font-size: 15px;
                font-weight: bold;
                text-transform: uppercase;
            } */

            .button1 {
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
                <div class="button1">
                    <a href="Singup.jsp"><button class="btn">Sign Up</button></a> <a href="Registration.jsp"><button class="btn">Registration</button></a>
                </div>
            </nav>


            <div class="about-section">
                <h1>About Us Page</h1>
                <p>I believe business ? and life ? is all about relationships. People do business with people (yes it?s a cliche, but it?s also true) and all my clients have come through referrals. I work with SMEs to grow their business. I do this by articulating
                    their vision, telling their stories and communicating effectively with staff, stakeholders and customers.I get to know my clients; </p>
                <p>I understand their business and how to get them in front of the people that matter. And they trust me to be proactive and spot the potential business opportunities for them.Small is good. If you hire JKC, your business relationship is with me,
                    Jenny, and I manage and deliver your communications on a daily basis. I also bring my extensive network of exceptionally talented experts to create a team of tailored professionals delivering the services you need.Want to have a chat? Just
                    give me a call on 07989 557198 or email me on info@jkconsultancy.com</p>
            </div>

            <h2 style="text-align:center">Our Team</h2>
            <div class="row">
                <div class="column">
                    <div class="card">
                        <img src="img/pexels-tima-miroshnichenko-5717549.jpg" alt="Jane" style="width:100%">
                        <div class="container">
                            <h2>Jane Doe</h2>
                            <p class="title">CEO & Founder</p>
                            <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                            <p>jane@example.com</p>
                            <p><button class="button">Contact</button></p>
                        </div>
                    </div>
                </div>

                <div class="column">
                    <div class="card">
                        <img src="img/man1-1690965_960_720.webp" alt="Mike" style="width:100%">
                        <div class="container">
                            <h2>Mike Ross</h2>
                            <p class="title">Art Director</p>
                            <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                            <p>mike@example.com</p>
                            <p><button class="button">Contact</button></p>
                        </div>
                    </div>
                </div>

                <div class="column">
                    <div class="card">
                        <img src="img/pexels-dinielle-de-veyra-4195342.jpg" alt="John" style="width:100%">
                        <div class="container">
                            <h2>John Doe</h2>
                            <p class="title">Designer</p>
                            <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                            <p>john@example.com</p>
                            <p><button class="button">Contact</button></p>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </body>

</html>