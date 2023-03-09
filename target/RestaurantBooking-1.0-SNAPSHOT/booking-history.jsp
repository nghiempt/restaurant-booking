<!DOCTYPE html>
<html>

    <head>
        <!-- Title Page -->
        <title>Booking History Page</title>

        <!-- Bootstrap JS Library -->
                <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
                <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.13.2/css/jquery.dataTables.min.css">
                

        <!-- CSS -->
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            #booking_history_app {
                width: 100%;
                height: 100vh;
                display: flex;
                justify-content: start;
                align-items: center;
                flex-direction: column;
            }

            .booking_btn_back {
                margin-top: 100px;
                margin-left: 40px;
                padding: 5px 20px;
                align-self: start;
                border: none;
                font-weight: bold;
            }

            .booking_title {
                padding: 10px 40px;
                margin-top: 50px;
                background-color: #4436c2;
                width: 100%;
                color: #fff;
                text-align: center;
            }

            .booking_table_container {
                padding: 10px 40px;
                margin-top: 50px;
            }

            .booking_note {
                padding: 10px 40px;
                margin-top: 50px;
            }

            table,
            th,
            td {
                border: 1px solid black;
                border-collapse: collapse;
            }

            .btn_view_food {
                border: none;
                background-color: #813939;
                color: #fff;
                font-weight: bold;
                font-size: 12px;
                padding: 5px 5px;
            }
        </style>

    </head>
    <%@include file="header.jsp" %>
    
    <body>
        <!-- root app -->
        <div id="booking_history_app">

            <!-- back button -->
            <button class=" booking_btn_back">back</button>

            <!-- booking history table -->
            <div class="booking_title">
                <h1 >Booking History</h1>
            </div>

            <!-- table -->
            <div class="booking_table_container">
                <table id="booking_table" class="display" style="width:100%">
                    <thead>
                        <tr style="background-color:#4c3fc5; color: #fff;">
                            <th>#</th>
                            <th>OrderID</th>
                            <th>Name</th>
                            <th>Time Check-in</th>
                            <th>People</th>
                            <th>Table</th>
                            <th>Payment time</th>
                            <th>Total payment</th>
                            <th>Food</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>001</td>
                            <td>Cristiano Ronaldo</td>
                            <td>16:00</td>
                            <td>5</td>
                            <td>04</td>
                            <td>20:00</td>
                            <td>1290</td>
                            <td><button class="btn_view_food">View Food Booked</button></td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>001</td>
                            <td>nghiem Ronaldo</td>
                            <td>16:00</td>
                            <td>5</td>
                            <td>04</td>
                            <td>20:00</td>
                            <td>1290</td>
                            <td><button class="btn_view_food">View Food Booked</button></td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>001</td>
                            <td>Cristiano Ronaldo</td>
                            <td>16:00</td>
                            <td>5</td>
                            <td>04</td>
                            <td>20:00</td>
                            <td>1290</td>
                            <td><button class="btn_view_food">View Food Booked</button></td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>001</td>
                            <td>cuong Ronaldo</td>
                            <td>16:00</td>
                            <td>5</td>
                            <td>04</td>
                            <td>20:00</td>
                            <td>1290</td>
                            <td><button class="btn_view_food">View Food Booked</button></td>
                        </tr>
                        <tr>
                            <td>299999</td>
                            <td>001</td>
                            <td>Cristiano Ronaldo</td>
                            <td>16:00</td>
                            <td>5</td>
                            <td>04</td>
                            <td>20:00</td>
                            <td>1290</td>
                            <td><button class="btn_view_food">View Food Booked</button></td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>001</td>
                            <td>Cristiano Ronaldo</td>
                            <td>16:00</td>
                            <td>5</td>
                            <td>04</td>
                            <td>20:00</td>
                            <td>1290</td>
                            <td><button class="btn_view_food">View Food Booked</button></td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>001</td>
                            <td>Cristiano Ronaldo</td>
                            <td>16:00</td>
                            <td>5</td>
                            <td>04</td>
                            <td>20:00</td>
                            <td>1290</td>
                            <td><button class="btn_view_food">View Food Booked</button></td>
                        </tr>
                        <tr>
                            <td>6666</td>
                            <td>001</td>
                            <td>Cristiano Ronaldo</td>
                            <td>16:00</td>
                            <td>5</td>
                            <td>04</td>
                            <td>20:00</td>
                            <td>1290</td>
                            <td><button class="btn_view_food">View Food Booked</button></td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>001</td>
                            <td>Cristiano Ronaldo</td>
                            <td>16:00</td>
                            <td>5</td>
                            <td>04</td>
                            <td>20:00</td>
                            <td>1290</td>
                            <td><button class="btn_view_food">View Food Booked</button></td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>001</td>
                            <td>Cristiano Ronaldo</td>
                            <td>16:00</td>
                            <td>5</td>
                            <td>04</td>
                            <td>20:00</td>
                            <td>1290</td>
                            <td><button class="btn_view_food">View Food Booked</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- note -->
            <p class="booking_note">=> NOTE: Within 6 hours from the time you pay the bill, if you cancel the order, you
                will be refunded the paid deposit.</p>
            
        </div>


        <!-- Bootstrap JS Library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="//cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js"></script>

        <script>
            // jquery data table
            $(document).ready(function () {
                $('#booking_table').DataTable();
            });
        </script>

    </body>
    
</html>