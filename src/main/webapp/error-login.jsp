
<%-- 
    Document   : login
    Created on : Feb 20, 2023, 2:45:53 PM
    Author     : nghiempt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

    <head>
        <!-- Title Page -->
        <title>Error Page</title>

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- CSS -->
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            #login_app {
                width: 100%;
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .login_container {
                width: 80%;
                height: 70vh;
                display: flex;
                flex-direction: row;
                justify-content: center;
                align-items: center;
            }

            .login_banner {
                width: 34%;
                height: 80%;
                background: #fff;
                border-radius: 10px;
                align-items: center;
                justify-content: center;
                display: flex;
                color: #961616;
                border: 8px solid #961616;
                margin-right: 40px;
            }

            .login_content {
                width: 34%;
                height: 80%;
                background: #ffffff;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
            }

            .form-control {
                padding-right: 140px;
            }

            .login_content form {
                margin: 50px 0 20px 0;
            }

            .login_content span {
                color: #961616;
            }

            .login_button button {
                background: #961616;
                padding: 10px 135px;
                margin-top: 100px;
                margin-bottom: 40px;
                border: none;
                font-weight: bold;
            }
        </style>

    </head>

    <body>

        <!-- root app -->
        <div id="login_app">

            <!-- login container -->
            <div class="login_container">

                <!-- Content login -->
                <div class="login_content">
                    <!-- title -->
                    <h3>Eror Login</h3>
                </div>
            </div>
        </div>

        <!-- Bootstrap JS Library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </body>

</html>
