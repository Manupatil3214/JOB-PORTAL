
<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <!-- <title> Responsive Contact Us Form  | CodingLab </title>
         <link rel="stylesheet" href="style.css">
        <!-- Fontawesome CDN Link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&display=swap" rel="stylesheet">
        <script src="contact1.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            /* Google Font CDN Link */
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: "Poppins" , sans-serif;
            }
            body{
                min-height: 100vh;
                width: 100%;
                /*                background: #c8e8e9;*/
                display: flex;
                align-items: center;
                justify-content: center;
                background: linear-gradient(135deg, #71b7e6, #9b59b6);
            }
            .container{
                /*                width: 85%;
                                background: #fff;
                                border-radius: 6px;
                                padding: 20px 60px 30px 40px;
                                box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);*/
                width: 85%;
                /*    height: 95vh;*/
                border-radius: 6px;
                background: #0f8a9d;
                padding: 20px 60px 30px 40px;
                box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
                background: linear-gradient(57deg, #00C6A7, #1E4D92);
                /*    clip-path: polygon(0% 0%, 100% 0%, 100% 80%, 0% 100%);*/
                font: optional;
            }
            .container .content{
                display: flex;
                align-items: center;
                justify-content: space-between;
            }
            .container .content .left-side{
                width: 25%;
                height: 100%;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                margin-top: 15px;
                position: relative;
            }
            .content .left-side::before{
                content: '';
                position: absolute;
                height: 70%;
                width: 2px;
                right: -15px;
                top: 50%;
                transform: translateY(-50%);
                background: #afafb6;
            }
            .content .left-side .details{
                margin: 14px;
                text-align: center;
            }
            .content .left-side .details i{
                font-size: 30px;
                color: #3e2093;
                margin-bottom: 10px;
            }
            .content .left-side .details .topic{
                font-size: 18px;
                font-weight: 500;
            }
            .content .left-side .details .text-one,
            .content .left-side .details .text-two{
                font-size: 14px;
                color: #9e0a40;
            }
            .container .content .right-side{
                width: 75%;
                margin-left: 75px;
            }
            .content .right-side .topic-text{
                font-size: 23px;
                font-weight: 600;
                color: #3e2093;
                padding: 14px;
            }
            .para{
                margin: 4px;
                padding: 6px;
                margin-bottom: 5px;
                margin-top: 2px;

            }
            .right-side .input-box{
                height: 50px;
                width: 100%;
                margin: 12px 0;
            }
            .right-side .input-box input,
            .right-side .input-box textarea{
                height: 100%;
                width: 100%;
                border: none;
                outline: none;
                font-size: 16px;
                background: #F0F1F8;
                border-radius: 6px;
                padding: 0 15px;
                resize: none;
            }
            .right-side .message-box{
                min-height: 110px;
            }
            .right-side .input-box textarea{
                padding-top: 16px;
            }
            .right-side .button{
                display: inline-block;
                margin-top: -12px;
            }
            .right-side .button input[type="button"]{
                color: #fff;
                font-size: 18px;
                outline: none;
                border: none;
                padding: 8px 16px;
                border-radius: 6px;
                background: #3e2093;
                cursor: pointer;
                transition: all 0.3s ease;


            }
            .button input[type="button"]:hover{
                background: #5029bc;
            }

            @media (max-width: 950px) {
                .container{
                    width: 90%;
                    padding: 30px 40px 40px 35px ;
                }
                .container .content .right-side{
                    width: 75%;
                    margin-left: 55px;
                }
            }
            @media (max-width: 820px) {
                .container{
                    margin: 40px 0;
                    height: 100%;
                }
                .container .content{
                    flex-direction: column-reverse;
                }
                .container .content .left-side{
                    width: 100%;
                    flex-direction: row;
                    margin-top: 40px;
                    justify-content: center;
                    flex-wrap: wrap;
                }
                .container .content .left-side::before{
                    display: none;
                }
                .container .content .right-side{
                    width: 100%;
                    margin-left: 0;
                }
            }
            .site-header {
                width: 100%;
                height: 95vh;
                margin-left: 80px;
                /*                background: #0f8a9d;
                                background: linear-gradient(57deg, #00C6A7, #1E4D92);
                                                clip-path: polygon(0% 0%, 100% 0%, 100% 80%, 0% 100%);*/
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
            <div class="container">
                <div class="content">
                    <div class="left-side">
                        <div class="address details">
                            <i class="fas fa-map-marker-alt"></i>
                            <div class="topic">Address</div>
                            <div class="text-one">Amaravti,</div>
                            <div class="text-two">Maharastra</div>
                        </div>
                        <div class="phone details">
                            <i class="fas fa-phone-alt"></i>
                            <div class="topic">Phone</div>
                            <div class="text-one">+0098 9893 5647</div>
                            <div class="text-two">+0096 3434 5678</div>
                        </div>
                        <div class="email details">
                            <i class="fas fa-envelope"></i>
                            <div class="topic">Email</div>
                            <div class="text-one">jk_consutancy123@gmail.com</div>
                            <div class="text-two">info.jk_consutancy123@gmail.com</div>
                        </div>
                    </div>
                    <div class="right-side">
                        <div class="topic-text">Send us a message</div>
                        <p class="para">If you have any work from me or any types of quries related to my tutorial, you can send me message from here. It's my pleasure to help you.</p>

                        <form name="myform" action="contact1.jsp" method="post" onsubmit="return validation()">
                            <div class="input-box">
                                <input type="text" placeholder="Enter your name" id="name">
                            </div>
                            <div class="input-box">
                                <input type="text" placeholder="Enter your email" id="email">
                            </div>
                            <div class="input-box message-box">

                            </div>
                            <div class="button">
                                <a href="contact1.jsp">
                                    <input type="button" value="Send Now" ></a>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </header>
    </body>

</html>
