<!DOCTYPE html>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import=" java.util.*,java.sql.*" %>
<%@page import="java.sql.DriverManager" %>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        <link rel="stylesheet" href="https://fontawesome.com/v5.15/icons/download?style=solid">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://kit.fontawesome.com/dfac1f29ca.js" crossorigin="anonymous"></script>
        <style type="text/css">
            body {
                color: #2669e7;
                /*                background: #f5f5f5;*/
                background: #0f8a9d;
                background: linear-gradient(135deg, #71b7e6, #9b59b6);
                font-family: 'Varela Round', sans-serif;
                font-size: 13px;
            }
            .table-wrapper {

                width: 1273px;
                background: #fff;
                padding: 20px 25px;
                margin: 30px 0;
                border-radius:1px;
                box-shadow: 0 1px 1px rgba(0, 0, 0, 0.247);
            }
            .table-title {        
                padding-bottom: 15px;
                background: linear-gradient(40deg, #2096ff, #05ffa3) !important;
                color: #fff;
                padding: 16px 30px;
                margin: -20px -25px 10px;
                border-radius: 1px 1px 0 0;
                box-shadow: 0 1px 1px rgba(0, 0, 0, 0.247);
            }
            .table-title h2 {
                margin: 5px 0 0;
                font-size: 24px;
            }
            .table-title .btn-group {
                float: right;
            }
            .table-title .btn {
                color: #fff;
                float: right;
                font-size: 13px;
                border: none;
                min-width: 50px;
                border-radius: 1px;
                border: none;
                outline: none !important;
                margin-left: 10px;
                box-shadow: 0 1px 1px rgba(0, 0, 0, 0.247);
            }
            .table-title .btn i {
                float: left;
                font-size: 21px;
                margin-right: 5px;
            }
            .table-title .btn span {
                float: left;
                margin-top: 2px;
            }
            table.table tr th, table.table tr td {
                border-color: #e9e9e9;
                padding: 12px 7px;
                vertical-align: middle;
            }
            table.table tr th:first-child {
                width: 60px;
            }
            table.table tr th:last-child {
                width: 100px;
            }
            table.table-striped tbody tr:nth-of-type(odd) {
                background-color: #fcfcfc;
            }
            table.table-striped.table-hover tbody tr:hover {
                background: #f5f5f5;
            }

            table.table th i {
                font-size: 13px;
                margin: 0 5px;
                cursor: pointer;
            } 
            table.table td:last-child i {
                opacity: 0.9;
                font-size: 22px;
                margin: 0 5px;
            }
            table.table td a {
                font-weight: bold;
                color: #566787;
                display: inline-block;
                text-decoration: none;
                outline: none !important;
            }
            table.table td a:hover {
                color: #2196F3;
            }
            table.table td a.Edit {
                color:#3c763d;
            }
            table.table td a.delete {
                color: #F44336;
            }
            table.table td i {
                font-size: 19px;
            }
            table.table .avatar {
                border-radius: 1px;
                vertical-align: middle;
                margin-right: 10px;
            }
            .pagination {
                float: right;
                margin: 0 0 5px;
            }
            .pagination li a {
                border: none;
                font-size: 13px;
                min-width: 90px;
                min-height: 34px;
                color: #999;
                margin: 0 2px;
                line-height: 30px;
                border-radius: 1px !important;
                text-align: center;
                padding: 0 6px;
            }
            .pagination li a:hover {
                color: #666;
            } 
            .pagination li.active a, .pagination li.active a.page-link {
                background: #03A9F4;
            }
            .pagination li.active a:hover {        
                background: #0397d6;
            }
            .pagination li.disabled i {
                color: #ccc;
            }
            .pagination li i {
                font-size: 16px;
                padding-top: 6px
            }
            .hint-text {
                float: left;
                margin-top: 10px;
                font-size: 13px;
            }    
            /* Custom checkbox */
            .custom-checkbox {
                position: relative;
            }
            .custom-checkbox input[type="checkbox"] {    
                opacity: 0;
                position: absolute;
                margin: 5px 0 0 3px;
                z-index: 9;
            }
            .custom-checkbox label:before{
                width: 18px;
                height: 18px;
            }
            .custom-checkbox label:before {
                content: '';
                margin-right: 10px;
                display: inline-block;
                vertical-align: text-top;
                background: white;
                border: 1px solid #bbb;
                border-radius: 1px;
                box-sizing: border-box;
                z-index: 2;
            }
            .custom-checkbox input[type="checkbox"]:checked + label:after {
                content: '';
                position: absolute;
                left: 6px;
                top: 3px;
                width: 6px;
                height: 11px;
                border: solid #000;
                border-width: 0 3px 3px 0;
                transform: inherit;
                z-index: 3;
                transform: rotateZ(45deg);
            }
            .custom-checkbox input[type="checkbox"]:checked + label:before {
                border-color: #03A9F4;
                background: #03A9F4;
            }
            .custom-checkbox input[type="checkbox"]:checked + label:after {
                border-color: #fff;
            }
            .custom-checkbox input[type="checkbox"]:disabled + label:before {
                color: #b8b8b8;
                cursor: auto;
                box-shadow: none;
                background: #ddd;
            }
            /* Modal styles */
            .modal .modal-dialog {
                max-width: 400px;
            }
            .modal .modal-header, .modal .modal-body, .modal .modal-footer {
                padding: 20px 30px;
            }
            .modal .modal-content {
                border-radius: 1px;
            }
            .modal .modal-footer {
                background: #ecf0f1;
                border-radius: 0 0 1px 1px;
            }
            .modal .modal-title {
                display: inline-block;
            }
            .button1 {
                border-radius: 1px;
                min-width: 100px;
                display: inline-block;
                font-size: 15px;
                /*    font-weight: 200px;*/
                color: Black;
                text-transform: uppercase;
                background: linear-gradient(135deg, #71b7e6, #9b59b6);
                border-radius: 4px 4px 4px 4px;
                padding: 7px 10px;
                /*    margin-top: 34px;*/
            } 
            .modal .form-control {
                border-radius: 1px;
                box-shadow: none;
                border-color: #dddddd;
            }
            .modal textarea.form-control {
                resize: vertical;
            }
            .modal .btn {
                border-radius: 1px;
                min-width: 100px;
            } 
            .modal form label {
                font-weight: normal;
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
                <li><a href="COMPANY_INFO.jsp">View Job</a> </li>
                <li><a href="Application_Info.jsp"> Application</a> </li>
                <!--                <li><a href="#">Filter Company</a> </li>-->


                <li><a href="CandidateAccept.jsp"> Candidate</a></li>
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
        <%
            String driver = "com.mysql.jdbc.Driver";
            String db = "jk_consultancy";
            String user = "root";
            String pass = "";
            String ConUrl = "jdbc:mysql://localhost:3306/";

            Class.forName(driver);
            Connection con = DriverManager.getConnection(ConUrl + db, user, pass);
            Statement st = con.createStatement();
        %>

        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>View<b>Condidate</b></h2>
                        </div>
                        <div class="col-sm-6">


                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>

                            <th><b style="color:#f30fe2; font-size: 16px; ">Name</b> </th>
                            <th><b style="color:#f30fe2; font-size: 16px;">Email</b></th>
                            <th><b style="color:#f30fe2; font-size: 16px;">Number:</b></th>
                            <th><b style="color:#f30fe2; font-size: 16px;">Qulification</b></th>
                            <th><b style="color:#f30fe2; font-size: 16px;">Course</b></th>
                            <th><b style="color:#f30fe2; font-size: 16px;">Experience</b></th>
                            <th><b style="color:#f30fe2; font-size: 16px;">Location</b></th>
                            <th><b style="color:#f30fe2; font-size: 16px;">Resume</b></th>
                            <th><b style="color:#f30fe2; font-size: 16px;">Download</b></th>
                            <th><b style="color:#f30fe2; font-size: 16px;">Delete</b></th>
                        </tr>
                    </thead>
                    <tbody>

                        <tr>

                            <%    try {
                                    String sql = "Select * from applyforjobaccept";
                                    ResultSet rs = st.executeQuery(sql);
                                    while (rs.next()) {


                            %>
                        <tr>

                        <tr>


                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("email")%></td>
                            <td><%=rs.getString("number")%></td>

                            <td><%=rs.getString("qulification")%></td>
                            <td><%=rs.getString("course")%></td>
                            <td><%=rs.getString("experience")%></td>
                            <td><%=rs.getString("location")%></td>
                            <td><%=rs.getString("fname")%></td>

                            <td><a href=servlet/DBFileDownloadServlet?number=<%=rs.getInt("number")%>"class="Edit" data-toggle="modal"><i class="fas fa-download"></i></a></td>
                                        
                                
                            <td><a href="ApplyForJobExcept_Delete.jsp?number=<%=rs.getInt("number")%>"class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a></td>



                            <%       }

                                    con.close();

                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }


                            %>
                    </tbody>
                </table>
                <div class="clearfix">

                    <ul class="pagination">

                        <li class="page-item active"><a href="#" class="page-link">Next</a></li>
                    </ul>
                </div>
            </div>
        </div>

    </body>
</html>