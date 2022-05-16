<%-- 
    Document   : Admin_login
    Created on : 7 Dec, 2021, 9:50:10 AM
    Author     : manup
--%>

<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>Login </title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }
            html,body{
                display: grid;
                height: 100%;
                width: 100%;
                place-items: center;
                background: -webkit-linear-gradient(left, #a445b2, #fa4299);
            }
            ::selection{
                background: #fa4299;
                color: #fff;
            }
            .wrapper{
                overflow: hidden;
                max-width: 390px;
                background: #ea4a8a;
                padding: 52px;
                height: 429px;

                width: 394px;
                border-radius: 5px;
                box-shadow: 180px 69px 16px rgb(0 0 0 / 10%);


            }
            .wrapper .title-text{
                display: flex;
                width: 200%;
            }
            .wrapper .title{
                width: 50%;
                font-size: 35px;
                font-family: italic;
                font-weight: 600;
                text-align: center;
                transition: all 0.6s cubic-bezier(0.68,-0.55,0.265,1.55);
            }
            .wrapper .slide-controls{
                position: relative;
                display: flex;
                height: 50px;
                width: 100%;
                overflow: hidden;
                margin: 30px 0 10px 0;
                justify-content: space-between;
                border: 1px solid lightgrey;
                border-radius: 5px;
            }
            .slide-controls .slide{
                height: 100%;
                width: 100%;
                color: #fff;
                font-size: 18px;
                font-weight: 500;
                text-align: center;
                line-height: 48px;
                cursor: pointer;
                z-index: 1;
                transition: all 0.6s ease;
            }
            .slide-controls label.signup{
                color: #000;
            }
            .slide-controls .slider-tab{
                position: absolute;
                height: 100%;
                width: 50%;
                left: 0;
                z-index: 0;
                border-radius: 5px;
                background: -webkit-linear-gradient(left, #a445b2, #fa4299);
                transition: all 0.6s cubic-bezier(0.68,-0.55,0.265,1.55);
            }
            input[type="radio"]{
                display: none;
            }
            #signup:checked ~ .slider-tab{
                left: 50%;
            }
            #signup:checked ~ label.signup{
                color: #fff;
                cursor: default;
                user-select: none;
            }
            #signup:checked ~ label.login{
                color: #000;
            }
            #login:checked ~ label.signup{
                color: #000;
            }
            #login:checked ~ label.login{
                cursor: default;
                user-select: none;
            }
            .wrapper .form-container{
                width: 100%;
                overflow: hidden;
            }
            .form-container .form-inner{
                display: flex;
                width: 200%;
            }
            .form-container .form-inner form{
                width: 50%;
                transition: all 0.6s cubic-bezier(0.68,-0.55,0.265,1.55);
            }
            .form-inner form .field{
                height: 50px;
                width: 100%;
                margin-top: 20px;
            }
            .form-inner form .field input{
                height: 100%;
                width: 100%;
                outline: none;
                padding-left: 15px;
                border-radius: 5px;
                border: 1px solid lightgrey;
                border-bottom-width: 2px;
                font-size: 17px;
                transition: all 0.3s ease;
            }
            .form-inner form .field input:focus{
                border-color: #fc83bb;
                /* box-shadow: inset 0 0 3px #fb6aae; */
            }
            .form-inner form .field input::placeholder{
                color: #999;
                transition: all 0.3s ease;
            }
            form .field input:focus::placeholder{
                color: #b3b3b3;
            }
            .form-inner form .pass-link{
                margin-top: 5px;
            }
            .form-inner form .signup-link{
                text-align: center;
                margin-top: 30px;
            }
            .form-inner form .pass-link a,
            .form-inner form .signup-link a{
                color: #42bffa;
                text-decoration: none;
            }
            .form-inner form .pass-link a:hover,
            .form-inner form .signup-link a:hover{
                text-decoration: underline;
            }
            form .btn{
                height: 50px;
                width: 100%;
                border-radius: 5px;
                position: relative;
                overflow: hidden;
            }
            form .btn .btn-layer{
                height: 100%;
                width: 300%;
                position: absolute;
                left: -100%;
                background: -webkit-linear-gradient(right, #a445b2, #fa4299, #a445b2, #fa4299);
                border-radius: 5px;
                transition: all 0.4s ease;;
            }
            form .btn:hover .btn-layer{
                left: 0;
            }
            form .btn input[type="submit"]{
                height: 100%;
                width: 100%;
                z-index: 1;
                position: relative;
                background: none;
                border: none;
                color: #fff;
                padding-left: 0;
                border-radius: 5px;
                font-size: 20px;
                font-weight: 500;
                cursor: pointer;
            }
            .button {
                position: absolute;
                top: -20px;
                right: 10px;
                /* border: 2px solid rgb(0, 255, 55); */
            }

            .btn1 {

                display: inline-block;
                font-size: 17px;
                font-weight: 200px;
                color: white;
                text-transform: uppercase;
                /* background: linear-gradient(57deg, #00C6A7, #1E4D92); */
                background: linear-gradient(-135deg, #c850c0, #4158d0);
                border-radius: 4px 4px 4px 4px;
                padding: 20px 38px;
                margin-top: 60px;
            }

            .btn1:hover {
                background-color: deeppink;
            }
        </style>
    </head>
    <body>
        <header class="site-header clearfix">
            <nav>

                <div class="button">

                    <div class="button1">
                        <a href="Singup.jsp"><button class="btn1">BACK</button></a> 
                    </div>
                </div>
            </nav
        </header>
        <div class="wrapper">
            <div class="title-text">
                <div class="title login">
                    Admin SignUp
                </div>
                <div class="title signup">

                </div>
            </div>

            <div class="form-inner">
                <form action="Admin_login_1.jsp" class="login">
                    <div class="field">
                        <input type="text" placeholder="UserName" name="name" required>
                    </div>
                    <div class="field">
                        <input type="password" placeholder="Password" name="password" required>
                    </div>
                    <div class="pass-link">
                        <a href="Forget.jsp">Forgot password?</a>
                    </div>
                    <div class="field btn">
                        <div class="btn-layer"></div>
                        <input type="submit" value="Login">
                    </div>
                   
                </form>

            </div>
        </div>
    </div>

</body>
</html>
