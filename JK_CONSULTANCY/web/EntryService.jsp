<%-- 
    Document   : EntryService
    Created on : 9 Dec, 2021, 9:21:11 PM
    Author     : manup
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <meta content="IE=edge" http-equiv="X-UA-Compatible"/>
        <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
        <title>Services Section</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <Style>

            /* CSS Document */
            body{
                margin:0px;
                padding: 0px;
                background-color: #FFFFFF;
/*                font-family: calibri;*/
     font-family: 'Playfair Display', serif;
            }
               nav{
                display: flex;
/*                width: 100%;*/
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
            input[type="checkbox"]{
                -webkit-appearance: none;
                display: none;
            }
            @media screen and (max-width: 1200px){
                nav{
                    display: block;
                    padding: 0;
                }
                nav .icon{
                    position: absolute;
                    top: 20px;
                    left: 20px;
                    /* border: 2px solid rgb(161, 18, 25); */
                    display: inline-block;

                    padding: 15px 30px;
                }
                nav .search_box{
                    width: 100%;
                    display: inline-flex;
                    justify-content: center;
                    margin-bottom: 15px;
                }
                nav .search_box input{
                    width: 90%;
                }
                nav ol{
                    display: flex;
                    flex-direction: column;
                    background: #fff;
                    height: 0;
                    visibility: hidden;
                    transition: 0.3s;
                }
                nav ol li{
                    text-align: center;
                    transition: 0.3s 0.1s all;
                    opacity: 0;
                }
                nav ol li a{
                    color: #000;
                    font-size: 28px;
                    padding: 25px;
                    display: block;
                }
                nav ol li:nth-child(1){
                    transform: translateX(-150px);
                }
                nav ol li:nth-child(2){
                    transform: translateX(-200px);
                }
                nav ol li:nth-child(3){
                    transform: translateX(-250px);
                }
                nav ol li:nth-child(4){
                    transform: translateX(-300px);
                }
                nav ol li:nth-child(5){
                    transform: translateX(-350px);
                }
                nav .bar{
                    display: block;
                    position: absolute;
                    top: 20px;
                    right: 80px;
                    cursor: pointer;
                }
                nav .bar #times{
                    display: none;
                }
                #check:checked ~ nav .bar #times{
                    display: block;
                }
                #check:checked ~ nav .bar #bars{
                    display: none;
                }
                #check:checked ~ nav ol{
                    visibility: visible;
                    height: 465px;
                }
                #check:checked ~ nav ol li:nth-child(1),
                #check:checked ~ nav ol li:nth-child(2),
                #check:checked ~ nav ol li:nth-child(3),
                #check:checked ~ nav ol li:nth-child(4),
                #check:checked ~ nav ol li:nth-child(5){
                    transform: translateX(0);
                    opacity: 1;
                }
            } 
            a{
                text-decoration:none;
            }
            .services{
                width:100%;
                height: 100vh;
                display: flex;
                flex-direction: column;
                justify-content: space-evenly;
                align-items: center;
            }
            .s-heading{
                text-align:center;
            }
            .s-heading h1{
                color:#576975;
                font-size: 3rem;
                font-weight: 400;
                letter-spacing: 1px;
                margin: 0px;
            }
            .s-heading p{
                color: rgba(87,105,117,0.60);
                font-size: 1rem;
                margin: 5px;
                text-align: center;
            }
            .s-box-container{
                width:100%;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .s-box{
                display:flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                border-radius: 10px;
                width:300px;
                padding: 20px 25px;
                height: 400px;
                box-sizing: border-box;
                margin: 30px;
                position: relative;
            }
            .s-box img{
                height: 75px;
            }
            .s-box h1{
                color:#576975;
                letter-spacing: 1px;
                font-size: 1.5rem;
                margin-bottom: 8px;

            }
            .s-box p{
                color: rgba(87,105,117,0.90);
                text-align: center;
            }
            .s-btn1{
                width: 140px;
                height: 40px;
                border-radius: 20px;
                border:1px solid rgba(74,144,226,0.50);
                display: flex;
                justify-content: center;
                align-items: center;
                color:#576975;
                margin-top:10px; 
            }
            .bar{
                width: 100px;
                height: 6px;
                position: absolute;
                left: 50%;
                top: 0%;
                transform: translateX(-50%);
                background-color:#4a90e2; 
                border-radius: 0px 0px 10px 10px;
                display: none;
                animation: bar 0.5s;
            }
            .s-box:hover{
                box-shadow: 2px 2px 30px rgba(0,0,0,0.08);
                transition: all ease 0.3s;
            }
            .s-btn1:hover{
                background-color:#4a90e2;
                border: 1px solid #4a90e2;
                color:#FFFFFF;
                transition: all ease 0.3s;
            }
            .s-box:hover .bar{
                display: block;
            }
            @keyframes bar{
                0%{
                    width:0px;
                }
                100%{
                    width:100px;
                }
            }
            @media(max-width:1050px){
                .s-box-container{
                    flex-wrap: wrap;

                }	
                .services{
                    height: auto;
                }
                .s-heading{
                    margin: 15px;
                }
                .s-box{
                    flex-grow: 1;
                }

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

        </Style>
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
        <section class="services">
            <!--heading---------------->
            <div class="s-heading">
                <h1>Ser<font color="#4a90e2">vic</font>es</h1>
                <p>We Provide The Best In Class Servies For Our Customers</p>
            </div>
            <!--services-box-container------------------->
            <div class="s-box-container">
                <!--service-box-1---------------->	
                <div class="s-box">
                    <!--top-bar-------->
                    <div class="bar"></div>
                    <!--img---------->
                    <img alt="1" src="img/1.png" />
                    <!--servies-name---------->
                    <h1>Spend Money</h1>
                    <!--details------>
                    <p>Track on your all daily expense and make your day to life easier.</p>
                    <!--btn---------->
                    <a class="s-btn1" href="#">More</a>
                </div>
                <!--service-box-1---------------->	
                <div class="s-box">
                    <!--top-bar-------->
                    <div class="bar"></div>
                    <!--img---------->
                    <img alt="2" src="img/2.png" />
                    <!--servies-name---------->
                    <h1>Set Budget</h1>
                    <!--details------>
                    <p>Make a Budget That Fit Right With You And Can Do Most With It</p>
                    <!--btn---------->
                    <a class="s-btn1" href="#">More</a>
                </div>
                <!--service-box-3---------------->	
                <div class="s-box">
                    <!--top-bar-------->
                    <div class="bar"></div>
                    <!--img---------->
                    <img alt="3" src="img/3.png" />
                    <!--servies-name---------->
                    <h1>Security</h1>
                    <!--details------>
                    <p>We Store All Card Info And Money Safe To Make You Relax And Crazy</p>
                    <!--btn---------->
                    <a class="s-btn1" href="#">More</a>
                </div>
            </div>
        </section>
    </body>
</html>