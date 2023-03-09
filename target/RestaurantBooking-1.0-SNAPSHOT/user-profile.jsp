<%-- 
    Document   : User Profile
    Created on : Feb 21, 2023, 1:43:12 PM
    Author     : Hung
--%>

<%@page import="com.models._User"%>
<%@page import="com.DAOS.AccountDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <%@include file="import-css-links.jsp"%>
    </head>

    <body>
        <!-- ======= Header ======= -->
        <%@include file= "header.jsp" %>
        <!-- End Header -->

        <%
            AccountDAO accountDAO = new AccountDAO();
            String id = "";
            for (Cookie i : request.getCookies()) {
                id = i.getValue();
            }
        %>

        <!-- title -->

        <div class=" text-center justify-content-center" style="margin-top: 150px">
            <div class="row">
                <div class="col"></div>

                <div class="col"><button class="btn btn-danger">Booking History</button></div>
            </div>
        </div>
        <!-- form -->
        <section class="container w-50 border" style="margin-top: 10px">
            <div class=" text-center"><h3>User Profile</h3></div>

            <form action="/account" method="POST" name="Form" onsubmit="return validateForm()">

                <!-- username -->
                <div class="form-group row">
                    <div class="col">
                        <label>Username</label>
                        <input type="text" class="form-control" id="inputUsername" name="inputUsername" readonly value="<%=accountDAO.getAccountById(id).getUsername()%>">
                    </div>
                </div>

                <!-- full name -->
                <div class="form-group row">
                    <div class="col">
                        <label>Full name</label>
                        <input type="text" class="form-control" id="inputFullName" name="inputFullName" value="<%=accountDAO.getAccountById(id).getUser_fullName()%>">
                    </div>
                </div>

                <!-- email -->
                <div class="form-group row">
                    <div class="col">
                        <label>Email</label>
                        <input type="email" class="form-control" id="inputEmail" name="inputEmail" value="<%=accountDAO.getAccountById(id).getEmail()%>">
                    </div>
                </div>

                <!-- phone -->
                <div class="form-group row">
                    <div class="col">
                        <label>Phone</label>
                        <input type="text" class="form-control" id="inputPhone" name="inputPhone" value="<%=accountDAO.getAccountById(id).getUser_phone()%>">
                    </div>
                </div>

                <!-- button register -->
                <div class="register_button text-center my-5">
                    <button type="submit" name="btn_update" class="btn btn-danger">Update Profile</button>
                </div>
            </form>
        </section>

        <!-- Bootstrap JS Library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <script>
                function validateForm() {
                    var inputFullName = document.forms["Form"]["inputFullName"].value;
                    var inputEmail = document.forms["Form"]["inputEmail"].value;
                    var inputPhone = document.forms["Form"]["inputPhone"].value;
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

        <!-- Template Main JS File -->
        <%@include file="import-js-links.jsp" %>


    </body>
</html>
