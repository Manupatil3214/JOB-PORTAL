<%-- 
    Document   : Singup
    Created on : 4 Dec, 2021, 6:39:01 PM
    Author     : manup
--%>

<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">

    <head>
        <meta charset="utf-8">
        <!----<title>Login Form Design | CodeLab</title>---->
        <!-- <link rel="stylesheet" href="style.css"> -->
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }

            html,
            body {
                display: grid;
                height: 100%;
                width: 100%;
                place-items: center;
                /*            background: #f2f2f2;*/
                /* background: linear-gradient(-135deg, #c850c0, #4158d0); */
                background: #0f8a9d;
                background: linear-gradient(135deg, #71b7e6, #9b59b6);
            }

            ::selection {
                background: #4158d0;
                color: #fff;
            }

            .wrapper {
                width: 380px;
                background: #fff;
                border-radius: 15px;
                box-shadow: 0px 15px 20px rgba(0, 0, 0, 0.1);
            }

            .wrapper .title {
                font-size: 35px;
                font-weight: 600;
                text-align: center;
                line-height: 100px;
                color: #fff;
                user-select: none;
                border-radius: 15px 15px 0 0;
                background: linear-gradient(-135deg, #c850c0, #4158d0);
            }

            .wrapper form {
                padding: 10px 30px 50px 30px;
            }

            .wrapper form .field {
                height: 50px;
                width: 100%;
                margin-top: 20px;
                position: relative;
            }

            .wrapper form .field input {
                height: 100%;
                width: 100%;
                outline: none;
                font-size: 17px;
                padding-left: 20px;
                border: 1px solid lightgrey;
                border-radius: 25px;
                transition: all 0.3s ease;
            }

            .wrapper form .field input:focus,
            form .field input:valid {
                border-color: #4158d0;
            }

            .wrapper form .field label {
                position: absolute;
                top: 50%;
                left: 20px;
                color: #999999;
                font-weight: 400;
                font-size: 17px;
                pointer-events: none;
                transform: translateY(-50%);
                transition: all 0.3s ease;
            }

            form .field input:focus~label,
            form .field input:valid~label {
                top: 0%;
                font-size: 16px;
                color: #4158d0;
                background: #fff;
                transform: translateY(-50%);
                /* angle change */
            }

            form .content {
                display: flex;
                width: 100%;
                height: 50px;
                font-size: 16px;
                align-items: center;
                justify-content: space-around;
            }

            form .content .checkbox {
                display: flex;
                align-items: center;
                justify-content: center;
            }

            form .content input {
                width: 15px;
                height: 15px;
                background: red;
            }

            form .content label {
                color: #262626;

                padding-left: 5px;
            }

            form .content .pass-link {
                /*            color: "none";*/
            }

            form .field input[type="submit"] {
                color: #fff;
                border: none;
                padding-left: 0;
                margin-top: -10px;
                font-size: 20px;
                font-weight: 500;
                cursor: pointer;
                background: linear-gradient(-135deg, #c850c0, #4158d0);
                transition: all 0.3s ease;
            }

            form .field input[type="submit"]:active {
                transform: scale(0.95);
            }

            form .signup-link {
                color: #262626;
                margin-top: 20px;
                text-align: center;
            }

            form .pass-link a,
            form .signup-link a {
                color: #4158d0;
                text-decoration: none;
            }

            form .pass-link a:hover,
            form .signup-link a:hover {
                text-decoration: underline;
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
        font-family: 'Baloo Bhai 2', cursive; */
                display: inline-block;
                font-size: 17px;
                font-weight: 200px;
                color: white;
                text-transform: uppercase;
                /* background: linear-gradient(57deg, #00C6A7, #1E4D92); */
                background: linear-gradient(-135deg, #c850c0, #4158d0);
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

                <div class="button">
<!--                    <a href="Admin_login.jsp">
                        <button class="btn">Admin Login</button>
                    </a>-->
<div class="button1">
                    <a href="JK_CONSULTANCY.html"><button class="btn">BACK</button></a> <a href="Admin_login.jsp"><button class="btn">ADMIN LOGIN</button></a>
                </div>
                </div>
            </nav
        </header>
        <div class="wrapper">
            <div class="title">Sign Up Form</div>
            <form action="singup2.jsp">
                <div class="field">
                    <input type="text" name="username" id="user" required>
                    <label>Username</label>
                </div>
                <div class="field">
                    <input type="password" name="password" id="pws" required>
                    <label>Password</label>
                </div>
                <div class="content">
                    <div class="checkbox">
                        <input type="checkbox" id="remember-me">
                        <label for="remember-me">Remember me</label>
                    </div>
                    <div class="pass-link"><a href="Forget.jsp">Forgot password?</a></div>
                </div>
                <div class="field">
                    <input type="submit" value="Login" onclick="check();">
                </div>
                <div class="signup-link">Not a member? <a href="Registration.jsp">Registration Now</a></div>
            </form>
        </div>

    </body>
    <script>

    <script>
    //        let name=localStorage.ge t Item('name')?localStorage.getItem('name'):''
//                console.log(name);
//if(name!='')
//{
                alert('Please visit profile');
        window.location.href = "EntryPage.jsp";
        //}
        function check()
        {
        let email, psw;
        email = document.getElementById("user").value;
        psw = document.getElementById("psw").value;
        let user_records = new Array();
        user_records = JSON.parse(localStorage.getItem("users"))?JSON.parse(localStorage.getItem("users")):[]
        if (user_records.some((v) => {return v.email == email && v.psw == psw}))
            {
                        alert("Login Pass");
        let current_user = user_rec ords.filter((v) => {return v.email == email && v.p sw == psw})[0]
                localStorage . setItem('name',current_user.name);
        localStorage.setItem('email',current_user.email);
                window.location.href="EntryPage.jsp";
                }
                else
            {
                        alert('Login Fail');
                }
                
                }
    </Script>

</html>