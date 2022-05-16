<!DOCTYPE html>
<html>
    <head>
        <title>Responsive Navigation Menu with Search Bar</title>

        
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400&display=swap');
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins',sans-serif;
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
            section{
                background: url(nick.jpg);
                height: 100%;
                width: 100%;
                position: absolute;
                background-position: center;
                background-size: cover;
/*                 background: linear-gradient(57deg, #00C6A7, #1E4D92);*/
                top: 0;
                z-index: -1;
/*                filter: brightness(30%);*/
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
              
                <li><a href="ADD_JOB.jsp">Post Job</a></li>
                <li><a href="COMPANY_INFO.jsp" >View Job</a> </li>
                <li><a href="Application_Info.jsp"> Application</a> </li>
                                <li><a href="#"> Candidate </a> </li>


<!--                <li><a href="About_1.jsp"> About us</a></li>-->
<!--                <li><a href="#">Contac Us</a> </li>-->
            </ol>
             <div class="button">
                 <a href="Admin_login.jsp">
                     <button class="btn">LogOut</button>
                 </a>
            
        </div>
            <label for="check" class="bar">
                <span class="fa fa-bars" id="bars"></span>
                <span class="fa fa-times" id="times"></span>
            </label>
        </nav>
        <section>
          
            
        </section>
    </body>
</html>