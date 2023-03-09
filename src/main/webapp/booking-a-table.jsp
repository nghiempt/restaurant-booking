<%@page import="com.DAOS.TableDAO"%>
<%@ page import="java.time.LocalDate"%>
<%@ page import="java.time.LocalTime"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.time.format.DateTimeFormatter"%>
<%@ page import="java.time.LocalDateTime"%>
<%@ page import="com.models._Table"%>
<%@ page import="java.util.List"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <title>Restaurant Booking</title>
        <meta content="" name="description">
        <meta content="" name="keywords">
        <%@ include file="import-css-links.jsp" %>
    </head>

    <%@ include file="header.jsp" %>
    <body class="container-fluid" style="margin-top: 100px;">

        <div class="form-group mx-5 my-5 p-lg-4 rounded-4" style="background-color: #6699FF;">
            <h2 class="px-5 py-5">Please choose a table</h2>
            <!--<a href="table/add" class="btn btn-success my-2 mx-2 rounded-4" style="width: 25rem;height: 10rem"><h4>Add Table</h4></a>-->
            <h3 class="text-center">Front-door</h3>
            <div class="row text-center">
                <%                    List<_Table> list = (List<_Table>) request.getAttribute("list");
                    for (_Table t : list) {
                %>
                <div class="col">
                    <a href="/table/<%= t.getTable_id()%>" class="btn btn-dark my-2 mx-2 rounded-4 <%= t.getTable_status().equalsIgnoreCase("busy") ? "btn-danger pe-none cursor-not-allowed" : ""%> "style="width: 20rem;height: 10rem" ><h4>Table <%= t.getTable_number()%></h4></a>
                </div>
                <%
                    }
                %>
            </div>
            <h3 class="text-center">Back-door</h3>
            <div class="mb-3" style="font-family: 'Shantell Sans', cursive;">
                <h3>Table Status: </h3>
                <div class="d-flex container-fluid">
                    <button type="button" class="btn btn-danger my-2 mx-2" style="width: 20rem;"><h5>Busy</h5></button>
                    <button type="button" class="btn btn-dark my-2 mx-2" style="width: 20rem;"><h5>Available</h5></button>
                </div>
            </div>
        </div>



        <%@ include file="footer.jsp" %>
    </body>
