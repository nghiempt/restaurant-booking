<%@page import="com.DAOS.AccountDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="import-css-links.jsp"%>
        <title>Restaurant Booking</title>
        <%@include file="import-js-links.jsp" %>


    </head>

    <header id="header" class="header fixed-top d-flex align-items-center bg-white border" style="z-index: 99999">

        <% Cookie[] cookies = request.getCookies();
            AccountDAO accDAO = new AccountDAO();
            String account = "";
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("account")) {
                        account = cookie.getValue();
                        break;
                    }
                }
            }
        %>
        <div class="container d-flex align-items-center justify-content-between ">

            <a href="/" class=" d-flex align-items-center text-decoration-none">
                <h1 style="font-size: 50px;color: red">RB<span>.</span></h1>
            </a>
            <a class="btn" href="/"><h4><b>Home</b></h4></a>
            <a class="btn" href="/?type=menu"><h4>Menu</h4></a>
            <a class="btn" href="#contact"><h4>Contact</h4></a>
            <a class="btn btn-danger" href="/?type=booktable">Book a Table</a>
            <div>

                <% if (!account.equals("")) {%> 
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class='fas fa-user-alt fs-4' style="cursor: pointer;" data-bs-toggle="dropdown" aria-expanded="false"></i>
                        <span><%= accDAO.getAccountById(account).getUsername()%></span>
                    </button>

                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/account/profile">My Profile</a></li>
                        <li><a class="dropdown-item" href="account/logout">Sign-out</a></li>
                    </ul>
                </div>
                <% } else { %>
                <a class="btn btn-dark" href="/account/login" style="width: 100px">Login</a>
                <% }%>

            </div>
        </div>
    </header>
    <body>
        <script>
            $('.dropdown').hover(function () {
                $(this).find('.dropdown-menu').addClass('show');
            }, function () {
                $(this).find('.dropdown-menu').removeClass('show');
            });
        </script>
    </body>
</html>