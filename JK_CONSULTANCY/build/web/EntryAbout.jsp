
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>About Us </title>
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <script src="https://kit.fontawesome.com/dbed6b6114.js" crossorigin="anonymous"></script>
        <style>

            @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700&display=swap');

            *{
                box-sizing: border-box;
                padding: 0;
                margin: 0;
            }
            section {
                align-content: center;
                display: grid;
                grid-template-columns: 1fr 1fr;
                min-height: 70vh;
                width: 75vw;
                margin: 0 auto;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                border-radius: 12px
                    /* background: url(img.jpg); */
                    /* height: 100%; */
                    /* width: 100%; */
                    /* position: absolute; */
                    background-position: center;
                /* background-size: cover; */
                top: 0;
                z-index: -1;
                filter: brightness(101%);
            }
                        body{
                            font-family: 'Playfair Display', serif;
                            display: grid;
                            background-color: #4158D0;
                            background-image: linear-gradient(43deg, #4158D0 0%, #C850C0 46%, #FFCC70 100%);
            
                          
                            min-height: 100vh;
                        }
           
            .image{
                background-color: #12192c;
                display: flex;
                border-radius: 12px 0 0 12px;
            }
            .image img{
                height:50vh;
                margin:50px auto
            }
            .content{
                background-color: #12192c;
                display: flex;
                justify-content: center;
                flex-direction: column;
                align-items: center;
                border-radius: 0  12px 12px 0;
                color: #fff;
            }
            .content h2{
                text-transform: uppercase;
                font-size: 36px;
                letter-spacing: 6px;
                opacity: 0.9;
            }
            .content span{
                height: 0.5px;
                width: 80px;
                background: #777;
                margin: 30px 0;
            }
            .content p{
                padding-bottom: 15px;
                font-weight: 300;
                opacity: 0.7;
                width: 60%;
                text-align: center;
                margin: 0 auto;
                line-height: 1.7;
                color:#ffffff
            }
            .links{
                margin: 15px 0;
            }
            .links li{
                border: 2px solid #4158D0;
                list-style: none;
                border-radius: 5px;
                padding: 10px 15px;
                width: 160px;
                text-align: center;
            }
            .links li a{
                text-transform: uppercase;
                color: #fff;
                text-decoration: none;
            }
            .links li:hover{
                border-color: #C850C0;
            }

            .vertical-line{
                height: 30px;
                width: 3px;
                background: #C850C0;
                margin: 0 auto;
            }
            .icons{
                display: flex;
                padding: 15px 0;
            }
            .icons li{
                display: block;
                padding: 5px;
                margin: 5px;
            }
            .icons li i{
                font-size: 26px;
                opacity: 0.8;
            }
            .icons li i:hover{
                color: #C850C0;
                cursor: pointer;
            }


            /*****************/

            @media(max-width: 900px){
                /*                section{
                                    grid-template-columns: 1fr;
                                    width: 100%;
                                    border-radius: none;
                                }*/
                .image{
                    height: 100vh;
                    border-radius: none;
                }
                .content{
                    height: 100vh;
                    border-radius: none;
                }
                .content h2{
                    font-size: 20px;
                    margin-top: 50px;
                }
                .content span{
                    margin: 20px 0;
                }
                .content p{
                    font-size: 14px;
                }
                .links li a{
                    font-size: 14px;
                }
                .links{
                    margin: 5px 0;
                }
                .links li{
                    padding: 6px 10px;
                }
                .icons li i{
                    font-size: 15px;
                }
            }
            .credit{
                text-align: center;
                color: #000;
                font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            }

            .credit a{
                text-decoration: none;
                color:#000;
                font-weight: bold;
            } 
            nav{
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
                font-size: 19px;
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
        <header class="site-header clearfix">

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

        </header>


        <section>
            <div class = "image">
                <img src="https://cdn.pixabay.com/photo/2017/08/26/23/37/business-2684758__340.png">
            </div>

            <div class = "content">
                <h2>About Us</h2>
                <span><!-- line here --></span>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nobis aspernatur voluptas inventore ab voluptates nostrum minus illo laborum harum laudantium earum ut, temporibus fugiat sequi explicabo facilis unde quos corporis!</p>
                <ul class = "links">
                    <!--                    <li><a href = "#">work</a></li>
                                        <div class = "vertical-line"></div>-->
                    <li><a href = "#">service</a></li>
                    <div class = "vertical-line"></div>
                    <li><a href = "Contact_1.jsp">contact</a></li>
                </ul>
                <ul class = "icons">
                    <li>
                        <i class = "fa fa-twitter"></i>
                    </li>
                    <li>
                        <i class = "fa fa-facebook"></i>
                    </li>
                    <li>
                        <i class = "fa fa-github"></i>
                    </li>
                    <li>
                        <i class = "fa fa-pinterest"></i>
                    </li>
                </ul>
            </div>

    </body>
</html>

