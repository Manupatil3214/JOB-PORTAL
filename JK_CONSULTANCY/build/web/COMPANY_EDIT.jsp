<%-- 
    Document   : Registration
    Created on : 5 Dec, 2021, 4:38:26 PM
    Author     : manup
--%>

<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<%@page import="java.util.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en" dir="ltr">

    <head>
        <meta charset="UTF-8">
        <!---<title> Responsive Registration Form | CodingLab </title>--->
        <!-- <link rel="stylesheet" href="style.css"> -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }

            body {
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 10px;
                background: linear-gradient(135deg, #71b7e6, #9b59b6);
            }

            .container {
                max-width: 700px;
                width: 100%;
                background-color: #fff;
                padding: 25px 30px;
                border-radius: 5px;
                box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
            }

            .container .title {
                font-size: 25px;
                font-weight: 500;
                position: relative;
            }

            .container .title::before {
                content: "";
                position: absolute;
                left: 0;
                bottom: 0;
                height: 3px;
                width: 30px;
                border-radius: 5px;
                background: linear-gradient(135deg, #71b7e6, #9b59b6);
            }

            .content form .user-details {
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
                margin: 20px 0 12px 0;
            }

            form .user-details .input-box {
                margin-bottom: 15px;
                width: calc(100% / 2 - 20px);
            }

            form .input-box span.details {
                display: block;
                font-weight: 500;
                margin-bottom: 5px;
            }

            .user-details .input-box input {
                height: 45px;
                width: 100%;
                outline: none;
                font-size: 16px;
                border-radius: 5px;
                padding-left: 15px;
                border: 1px solid #ccc;
                border-bottom-width: 2px;
                transition: all 0.3s ease;
            }

            .user-details .input-box input:focus,
            .user-details .input-box input:valid {
                border-color: #9b59b6;
            }

            form .gender-details .gender-title {
                font-size: 20px;
                font-weight: 500;
            }

            form .category {
                display: flex;
                width: 80%;
                margin: 14px 0;
                justify-content: space-between;
            }

            form .category label {
                display: flex;
                align-items: center;
                cursor: pointer;
            }

            form .category label .dot {
                height: 18px;
                width: 18px;
                border-radius: 50%;
                margin-right: 10px;
                background: #d9d9d9;
                border: 5px solid transparent;
                transition: all 0.3s ease;
            }

            #dot-1:checked~.category label .one,
            #dot-2:checked~.category label .two,
            #dot-3:checked~.category label .three {
                background: #9b59b6;
                border-color: #d9d9d9;
            }

            form input[type="radio"] {
                display: none;
            }

            form .button {
                height: 45px;
                margin: 35px 0
            }

            form .button input {
                height: 100%;
                width: 100%;
                border-radius: 5px;
                border: none;
                color: #fff;
                font-size: 18px;
                font-weight: 500;
                letter-spacing: 1px;
                cursor: pointer;
                transition: all 0.3s ease;
                background: linear-gradient(135deg, #71b7e6, #9b59b6);
            }

            form .button input:hover {
                /* transform: scale(0.99); */
                background: linear-gradient(-135deg, #71b7e6, #9b59b6);
            }

            @media(max-width: 584px) {
                .container {
                    max-width: 100%;
                }
                form .user-details .input-box {
                    margin-bottom: 15px;
                    width: 100%;
                }
                form .category {
                    width: 100%;
                }
                .content form .user-details {
                    max-height: 300px;
                    overflow-y: scroll;
                }
                .user-details::-webkit-scrollbar {
                    width: 5px;
                }
            }

            @media(max-width: 459px) {
                .container .content .category {
                    flex-direction: column;
                }
            }
            .msg{
                margin: 15px 0 0;
                color: black;
                font-size: 17px;
            }
            .msg a{
                color: #4CAF50;
                text-decoration: none;
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
                /*                background: url(img.jpg);*/
                height: 100%;
                width: 100%;
                position: absolute;
                background-position: center;
                background-size: cover;
                background: linear-gradient(57deg, #00C6A7, #1E4D92);
                top: 0;
                z-index: -1;
                filter: brightness(30%);
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
        <%
            String id = request.getParameter("id");
            String driver = "com.mysql.jdbc.Driver";
            String db = "jk_consultancy";
            String user = "root";
            String pass = "";
            String ConUrl = "jdbc:mysql://localhost:3306/";
            ResultSet rs = null;
            Class.forName(driver);

            Connection con = DriverManager.getConnection(ConUrl + db, user, pass);

            Statement st = con.createStatement();
            String sql = "select * from addjob where id=" + id;
            rs = st.executeQuery(sql);

            while (rs.next()) {
        %>
        <div class="container">
            <div class="title">Company Info Edit </div>
            <div class="content">
                <form action="VIEW_JOB_EDIT_2.jsp" method="post">
                    <div class="user-details">
                        <div class="input-box">
                            <input type="hidden" name="id1" value="<%=rs.getInt("id")%>" />
                            <span class="details">Enter Company ID</span>
                            <input type="text" name="id" value="  <%=rs.getInt("id")%>" />
                        </div>
                        <div class="input-box">

                            <span class="details">Enter Company Name</span>
                            <input type="text" name="company" value="  <%=rs.getString("company")%>" />
                        </div>
                        <div class="input-box">
                            <span class="details">Enter Package</span>
                            <input type="text" name="package" value="  <%=rs.getString("package")%>" />
                        </div>
                        <div class="input-box">
                            <span class="details">Location</span>
                            <input type="text" name="location" value="  <%=rs.getString("location")%>" />

                        </div>
                        <div class="input-box">
                            <span class="details">Enter Job Discription</span>
                            <input type="text" name="discription" value="  <%=rs.getString("discription")%>" />
                        </div>
                        <div class="input-box">
                            <span class="details">Enter  Date</span>
                            <input type="text" name="date" value="  <%=rs.getDate("date")%>"/>
                        </div>


                        
                    </div>

                    <div class="button">
                        <a href="ADD_JOB1.jsp">
                            <input type="submit" value="ADD JOB">
                        </a>
                    </div>

                </form>
            </div>
        </div>
        <%
            }

        %>
    </body>

</html>