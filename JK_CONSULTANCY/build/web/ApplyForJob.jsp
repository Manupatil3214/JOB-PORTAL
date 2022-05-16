




<!DOCTYPE html>
<html>
    <head>
        <title>Educational registration form</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&display=swap" rel="stylesheet">
        <style>
            * {
                margin: 0
            }
              html, body {
                height: 100%;
                width: 100%;
                background-color: #4158D0;
                           background-image: linear-gradient(43deg, #4158D0 0%, #C850C0 46%, #FFCC70 100%);
            }

            .container {
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                height: 100vh;
               
            }

            .container h1 {
                color: white;
                font-family: sans-serif;
                margin: 20px;
            }

            .registartion-form {
                display: flex;
                justify-content: center;
                align-items: center;
                width: 800px;
                height: 700px;
                color: rgb(255, 255, 255);
                font-size: 18px;
                font-family: sans-serif;
/*                background-color: #154a68;*/
                  background-color: #e6819f;
                display: flex;
                border-radius: 12px 0 0 12px;
/*                padding: 20px;*/
            }

            .registartion-form input,
            .registartion-form select,
            .registartion-form textarea {
                border: none;
              padding: 5px;
    width: 361px;
    height: 35px;
    margin-top: 15px;
   font-family: 'Montserrat', sans-serif;
            }

            .registartion-form input:focus,
            .registartion-form textarea:focus {
                box-shadow: 3px 3px 10px rgb(228, 228, 228), -3px -3px 10px rgb(224, 224, 224);
            }

            .registartion-form .submit {
                width: 100%;
                padding: 8px 0;
                font-size: 20px;
                color: rgb(44, 44, 44);
                background-color: #ffffff;
                border-radius: 5px;
            }

            .registartion-form .submit:hover {
                box-shadow: 3px 3px 6px rgb(255, 214, 176);
            }
             .btn-item, button {
                padding: 10px 5px;
                margin-top: 20px;
                border-radius: 5px; 
                border: none;
                background: #26a9e0; 
                text-decoration: none;
                font-size: 15px;
                font-weight: 400;
                color: #fff;
            }
            .btn-item {
                display: inline-block;
                margin: 20px 5px 0;
            }
            button {
                width: 100%;
            }
            button:hover, .btn-item:hover {
                background: #85d6de;
            }
            
        </style>
    </head>
    <body>
       
        <div class="container">
           <h1>Apply For Job</h1>
           <form action="ApplyForJob_1.jsp" name="registration" class="registartion-form" >
               
                <table>
                     
                    <tr>
                        <td><label for="name">Name:</label></td>
                        <td><input type="text" name="name" size="50"  placeholder="your name"></td>
                    </tr>
                    <tr>
                        <td><label for="email">Email:</label></td>
                        <td><input type="text" name="email"  size="50" placeholder="your email"></td>
                    </tr>
                    <tr>
                        <td><label for="number">Phone number:</label></td>
                        <td><input type="text" name="number" size="50" placeholder="Phone number"></td>
                    </tr>
                    
                    <tr>
                        <td><label for="qualification">Qualification*:</label></td>
                        <td>  <input type="text" name="qulification" size="50" placeholder="  Qualification*"></td>
                    </tr>
                    
                    <tr>
                        <td><label for="course">Other Course/Language:</label></td>
                        <td> <textarea rows="4" placeholder="Other Course/Language" name="course" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" placeholder="Message" required></textarea></td>
                      
                    </tr>
                    <tr>
                        <td><label for="experience">Experience:</label></td>
                        <td><input type="text" name="experience" size="50" placeholder=" Experience(in months)"></td>
                    </tr>
                    <tr>
                       <tr>
                        <td><label for="location">Location:</label></td>
                        <td>   <input type="text" size="50" name="location" placeholder=" Location"></td>
                    </tr>
                    <tr>
                        
                             <td><label for="resume "> select resume:</label></td>
                    <a href="fileUpload.jsp">
                        <td>   <input type="file" name="fname"  value="" /></td>

                    </a>
                                                 
            
                       
                        
                    </tr>
                    <td colspan="2"><a href="" >
                            <button type="submit" onclick="msg()" >Registration</button>
                        </a> </td>
                    </tr>
                </table>
            </form>
        </div>			                            
         
    </body>
     <script>
            
            
            function msg()
            {
                alert("your application succefully submit!");
            }
            </Script>
</html>