<%-- 
    Document   : register
    Created on : Feb 20, 2023, 2:47:24 PM
    Author     : nghiempt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <!-- Title Page -->
        <title>Register Page</title>

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- CSS -->
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                background: url('https://ik.imagekit.io/guidle/tr:w-250,h-250,c-at_least,dpr-2.625/pics/20162221434349420.0867429602071097.jpg')
            }

            #register_app {
                width: 100%;
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .register_content {
                width: 30%;
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

            .register_content form {
                margin: 30px 0 20px 0;
            }

            .register_content span {
                color: #961616;
            }

            .register_button button {
                background: #961616;
                padding: 10px 135px;
                margin-top: 20px;
                margin-bottom: 40px;
                border: none;
                font-weight: bold;
            }
        </style>
    </head>

    <body>

        <!-- Register App -->
        <div id="register_app">
            <!-- Content register -->
            <div class="register_content">
                <!-- title -->
                <h3>Register</h3>

                <!-- form -->
                <form method="POST" action="/account" name="Form" onsubmit="return validateForm()">

                    <!-- username -->
                    <div class="form-group row">
                        <div class="col">
                            <label>Username</label>
                            <input type="text" class="form-control" id="inputUsername" name="inputUsername">
                        </div>
                    </div>

                    <!-- full name -->
                    <div class="form-group row">
                        <div class="col">
                            <label>Fullname</label>
                            <input type="text" class="form-control" id="inputFullName" name="inputFullName">
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

                    <!-- confirm password -->
                    <div class="form-group row">
                        <div class="col">
                            <label>Confirm password</label>
                            <input type="password" class="form-control" id="inputConfirmPassword" name="inputConfirmPassword">
                            <input type="checkbox" onclick="toogleConfirmPassword()">  Show confirm password
                        </div>
                    </div>

                    <!-- email -->
                    <div class="form-group row">
                        <div class="col">
                            <label>Email</label>
                            <input type="email" class="form-control" id="inputEmail" name="inputEmail">
                        </div>
                    </div>

                    <!-- phone -->
                    <div class="form-group row">
                        <div class="col">
                            <label>Phone</label>
                            <input type="text" class="form-control" id="inputPhone" name="inputPhone">
                        </div>
                    </div>

                    <!-- button register -->
                    <div class="register_button">
                        <button type="submit" class="btn btn-primary" name="btn_register">Register</button>
                    </div>
                </form>

                <!-- redirect to register page -->
                <p>You had account ? <a href="/account/login"><span>Login</span></a></p>
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

                                function toogleConfirmPassword() {
                                    var x = document.getElementById("inputConfirmPassword");
                                    if (x.type === "password") {
                                        x.type = "text";
                                    } else {
                                        x.type = "password";
                                    }
                                }

                                function validateForm() {
                                    var inputUsername = document.forms["Form"]["inputUsername"].value;
                                    var inputPassword = document.forms["Form"]["inputPassword"].value;
                                    var inputConfirmPassword = document.forms["Form"]["inputConfirmPassword"].value;
                                    var inputFullName = document.forms["Form"]["inputFullName"].value;
                                    var inputEmail = document.forms["Form"]["inputEmail"].value;
                                    var inputPhone = document.forms["Form"]["inputPhone"].value;

                                    if (inputUsername === null || inputUsername.length < 3 || inputUsername.length > 100) {
                                        alert("Username input is not valid");
                                        return false;
                                    }
                                    if (inputPassword === null || inputPassword === "" || inputPassword.length > 50 || inputPassword.length < 6) {
                                        alert("Password input is not valid");
                                        return false;
                                    }
                                    if (inputConfirmPassword !== inputPassword) {
                                        alert("Your confirm password is not match with password!");
                                        return false;
                                    }
                                    if (inputFullName === null || inputFullName === "" || inputFullName.length > 100) {
                                        alert("Fullname input is not valid");
                                        return false;
                                    }
                                    if (inputEmail === null || inputEmail === "") {
                                        alert("Please enter email");
                                        return false;
                                    }
                                    if (inputPhone === null || inputPhone === "" || inputPhone.length !== 10) {
                                        alert("Your phone must be 10 digits");
                                        return false;
                                    }
                                }
        </script>

    </body>

</html>
