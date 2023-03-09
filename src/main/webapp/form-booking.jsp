

<%@page import="com.DAOS.AccountDAO"%>
<%@page import="com.models._User"%>
<%@page import="com.models._Order"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="com.models._Table"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <link rel="stylesheet" href="resouces/css/homepage-styles.css"/>

        <title>Booking Form</title>
        <meta content="" name="description">
        <meta content="" name="keywords">
        <%@include file="import-css-links.jsp"%>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resouces/js/menu-js.js" />

    </head>

    <body class="container-fluid" style="margin-top: 100px;">
        <%@include file="header.jsp" %>
        <%
//            boolean errPhone = request.getAttribute("errMessagePhone") == null;
//
//            request.getSession().setAttribute("errMessagePhone", "okokokokokook");
//            if (!errPhone) {
//                request.getSession().removeAttribute("errMessagePhone");
//            }
            String phone_number = "01234567891ee";
            String regexPhone = "^0\\d{9}$";
            if (!regexPhone.matches(phone_number)) {
                request.getSession().setAttribute("errMessagePhone", "sai phone roi");

            }
            boolean errPhone = request.getAttribute("errMessagePhone") == null;

            //GET useID from cookie. setted at menu-management page.
            cookies = request.getCookies();
            String userID = "";
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("account")) {
                        userID = cookie.getValue();
                        break;
                    }
                }
            }
            AccountDAO accountDAO = new AccountDAO();
            //get userID object to pass into (fullname, email,phone).
            _User user = accountDAO.getAccountById(userID);
            if (user != null) {


        %>
        <!--Booking a table-->
        <section class="container "style="font-size: 15px">
            <form action="/order/" method="POST" onsubmit="handleValidation()">
                <div class="form-group p-lg-4 my-3 rounded-4" style="background-color: #FFFFCC;border: 1px solid black;padding: 10px">
                    <h1 class="mb-4 text-center" style="font-family: 'Shantell Sans', cursive;">Booking information</h1>


                    <div class="row mb-4">

                        <!--Date Input-->
                        <div class="col-3">
                            <div class="form-outline">
                                <input type="date" id="myDate" name="txtDate"  class="form-control" required=""/>
                                <label class="form-label" >Date</label>
                            </div>

                            <!-- create input USerID used to Pass it to OrderController -->
                            <input type="text" name="txtUserID" value="<%= userID%>"  class="form-control" hidden=""/>
                        </div>

                        <!--Time Check-in input-->
                        <div class="col">
                            <div class="form-outline">
                                <input type="time" id="myTime" name="txtTime" class="form-control" required="" placeholder="Example: 4:20 AM"/>
                                <label class="form-label">Time Check-in</label>
                            </div>
                        </div>
                        <!-- People input -->
                        <div class="col">
                            <div class="form-outline">
                                <input type="number" id="myPeople" name="txtPeople" value="" class="form-control" placeholder="Please enter a number"/>
                                <label class="form-label">People</label>

                            </div>
                        </div>

                    </div>

                    <!-- Email input -->
                    <div class="row mb-4">

                        <div class="col">
                            <div class="form-outline">
                                <input type="text" id="myFullname" name="txtFullName" value="<%= user.getUser_fullName()%>" class="form-control" />
                                <label class="form-label">Full name</label>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-outline">
                                <input type="email" id="myEmail" name="txtEmail"  class="form-control" value="<%=user.getEmail()%>" />
                                <label class="form-label">Email</label>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-outline">
                                <input type="text" id="myPhone" name="txtPhone" value="<%= user.getUser_phone()%>" class="form-control"/>
                                <label class="form-label">Phone</label>
                                <span class="text-danger"><i><%= errPhone == false ? session.getAttribute("errMessagePhone").toString() : ""%></i></span>

                                </c:if>
                            </div>
                        </div>

                    </div>

                    <!-- Note input -->
                    <div class="form-outline mb-4">
                        <textarea class="form-control"  id="form6Example7" name="txtNote" rows="4" cols="8" placeholder="Please enter your note here !" style="font-size: 20px"></textarea>
                        <label class="form-label" for="form6Example7">Note</label>
                    </div>

                    <!-- Submit button -->
                    <div class="form-outline mb-4 d-flex justify-content-center">
                        <button type="submit"
                                name="btnSubmit"
                                class="btn btn-block mb-4" 
                                style="background-color: black;width: 20%">
                            <h3 style="color: white;">Choose Dishes</h3>
                        </button>
                    </div>

                </div>

            </form>
        </section>
        <%@include file="footer.jsp" %>
        <%} //end IF
        else {         %> 
        <%@include file="error.jsp" %>
        <%
            }
        %> 

    </body>

</html>
