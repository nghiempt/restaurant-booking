<%-- 
    Document   : payment
    Created on : Feb 20, 2023, 2:47:30 PM
    Author     : nghiempt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

    <head>
        <!-- Title Page -->
        <title>Payment Page</title>

        <!-- Bootstrap JS Library -->
<!--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.13.2/css/jquery.dataTables.min.css">-->
        <%@include file="import-css-links.jsp" %>
        <%@include file="import-js-links.jsp" %>

        <!-- CSS -->
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            #payment_app {
                width: 100%;
                height: 100vh;
                display: flex;
                justify-content: start;
                align-items: start;
                flex-direction: column;
            }

            .payment_btn_back {
                margin-top: 100px;
                margin-left: 40px;
                margin-bottom: 10px;
                padding: 5px 20px;
            }

            .payment_title {
                background-color: red;
                width: 90%;
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 10px 40px;
                margin: 10px 40px;
            }

            .payment_info {
                display: flex;
                background-color: #ccc;
                width: 90%;
                padding: 10px 40px;
                margin: 10px 40px;
                flex-wrap: wrap;
            }

            .payment_info_item {
                width: 30%;
                padding: 10px 0;
            }

            .payment_table {
                width: 90%;
                margin: 10px 40px;
            }

            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }

            .payment_detail {
                display: flex;
                background-color: #ccc;
                width: 90%;
                padding: 10px 40px;
                margin: 10px 40px;
                flex-wrap: wrap;
            }

            .payment_detail_item {
                width: 40%;
                padding: 10px 0;
            }

            .payment_confirm {
                width: 90%;
                margin: 10px 40px;
                display: flex;
                justify-content: space-evenly;
            }

            .payment_footer {
                width: 90%;
                margin: 10px 40px;
                display: flex;
                justify-content: space-evenly;
            }

            .payment_btn_cancel {
                padding: 10px 50px;
                background-color: red;
                color: white;
                border: none;
                border-radius: 5px;
            }

            .payment_btn_submit {
                padding: 10px 50px;
                background-color: green;
                color: white;
                border: none;
                border-radius: 5px;
            }
        </style>
    </head>

    <%@include file="header.jsp" %>
    <body>

        <!-- Payment App -->
        <div class="container-fluid" id="payment_app">

            <!-- Back Button -->
            <button class="payment_btn_back">back</button>

            <!-- Payment Title -->
            <div class="payment_title">
                <h1>INVOICE</h1>
                <h1>No: 001</h1>
            </div>

            <!-- Payment Info -->
            <div class="payment_info">
                <div class="payment_info_item">
                    <p>Customer Name:</p>
                </div>
                <div class="payment_info_item">
                    <p>Time check-in:</p>
                </div>
                <div class="payment_info_item">
                    <p>People:</p>
                </div>
                <div class="payment_info_item">
                    <p>Date:</p>
                </div>
                <div class="payment_info_item">
                    <p>Table:</p>
                </div>
            </div>

            <!-- Payment Table -->
            <div class="payment_table">
                <table>
                    <tr>
                        <th>No</th>
                        <th>Food name</th>
                        <th>Quantity</th>
                        <th>Unit price</th>
                        <th>Total</th>
                    </tr>
                    <tr>
                        <td>01</td>
                        <td>Chickec Rice</td>
                        <td>2</td>
                        <td>$15</td>
                        <td>$30</td>
                    </tr>
                    <tr>
                        <td>01</td>
                        <td>Chickec Rice</td>
                        <td>2</td>
                        <td>$15</td>
                        <td>$30</td>
                    </tr>
                    <tr>
                        <td>01</td>
                        <td>Chickec Rice</td>
                        <td>2</td>
                        <td>$15</td>
                        <td>$30</td>
                    </tr>
                    <tr>
                        <td>01</td>
                        <td>Chickec Rice</td>
                        <td>2</td>
                        <td>$15</td>
                        <td>$30</td>
                    </tr>

                </table>
            </div>

            <!-- Payment Detail -->
            <div class="payment_detail">
                <div class="payment_detail_item">
                    <p>Number of deposit in advance:</p>
                </div>
                <div class="payment_detail_item">
                    <p>Phone number of Staff:</p>
                </div>
                <div class="payment_detail_item">
                    <p>Discount:</p>
                </div>
                <div class="payment_detail_item">
                    <p>Total amout paid:</p>
                </div>
            </div>

            <!-- Payment Confirm -->
            <div class="payment_confirm">
                <button class="payment_btn_cancel">Cancel</button>
                <button class="payment_btn_submit">Payment</button>
            </div>

            <!-- Payment Footer -->
            <div class="payment_footer">
                <p>Thank you. See you soon</p>
            </div>

        </div>


        <!-- Bootstrap JS Library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="//cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js"></script>

        <script>
            // jquery data table
            $(document).ready(function () {
                $('#payment_table').DataTable();
            });
        </script>

    </body>
    
    <%@include file="footer.jsp" %>
</html>