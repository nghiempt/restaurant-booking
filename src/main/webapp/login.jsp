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
        <title>Login Page</title>

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
                /*border: 8px solid #961616;*/
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
                margin-top: 80px;
                margin-bottom: 40px;
                border: none;
                font-weight: bold;
            }

            img {
                width: 100%;
                height: 100%;
                border-radius: 8px;
            }
            
            .error {
                align-content: center;
                color: red;
            }
        </style>

    </head>

    <body>
        <!-- root app -->
        <div id="login_app">

            <!-- login container -->
            <div class="login_container">
                <!-- Image introduce -->
                <div class="login_banner">
                    <img src="https://img.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/346SFTFXH4I6ZA2YECVBMNK7WQ.jpg&w=1800" alt="alt"/>
                </div>

                <!-- Content login -->
                <div class="login_content">
                    <!-- title -->
                    <h3>Login</h3>

                    <!-- form -->
                    <form action="/account" method="POST" name="Form" onsubmit="return validateForm()">

                        <!-- username -->
                        <div class="form-group row">
                            <div class="col">
                                <label>Username</label>
                                <input type="text" class="form-control" id="inputUsername" name="inputUsername">
                            </div>
                        </div>

                        <!-- password -->
                        <div class="form-group row">
                            <div class="col">
                                <label>Password</label>
                                <input type="password" class="form-control" id="inputPassword" name="inputPassword">
                                <input type="checkbox" onclick="tooglePassword()">  Show password
                            </div>
                        </div>

                        <c:if test="${not empty sessionScope.errorMessage}">
                            <div class="error">${sessionScope.errorMessage}</div>
                        </c:if>

                        <!-- button login -->
                        <div class="login_button">
                            <button type="submit" class="btn btn-primary" name="btn_login">Login</button>
                        </div>
                    </form>

                    <!-- redirect to register page -->
                    <p>You don't have account ? <a href="/account/register"><span>Register</span></a></p>

                </div>
            </div>
        </div>

        <!-- Bootstrap JS Library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <script>
                                    function tooglePassword() {
                                        var x = document.getElementById("inputPassword");
                                        if (x.type === "password") {
                                            x.type = "text";
                                        } else {
                                            x.type = "password";
                                        }
                                    }

                                    function validateForm() {
                                        var inputUsername = document.forms["Form"]["inputUsername"].value;
                                        var inputPassword = document.forms["Form"]["inputPassword"].value;
                                        if (inputUsername === null || inputUsername === "") {
                                            alert("Please enter username");
                                            return false;
                                        }
                                        if (inputPassword === null || inputPassword === "") {
                                            alert("Please enter password");
                                            return false;
                                        }
                                    }
        </script>

    </body>

</html>
