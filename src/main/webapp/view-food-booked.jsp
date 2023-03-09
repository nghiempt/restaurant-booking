<!DOCTYPE html>
<html>

    <head>
        <!-- Title Page -->
        <title>View Food Booked Page</title>

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- CSS -->
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            #view_food_booked_app {
                width: 100%;
                height: 100vh;
                display: flex;
                justify-content: start;
                align-items: start;
                flex-direction: column;
            }

            .view_food_title_container {
                width: 100%;
                height: 100px;
                background-color: #4436c2;
                color: #fff;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .view_food_btn_back {
                padding: 5px 20px;
                border: none;
                font-weight: bold;
                margin-top: 100px;
                margin-bottom: 40px;
                margin-left: 40px;
            }

            .view_food_container {
                width: 100%;
                display: flex;
                justify-content: center;
                flex-wrap: wrap;
            }

            .view_food_item {
                width: 15%;
                margin: 20px;
                border: 1px solid #ccc;
                padding: 10px;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
            }

            .food_item_img {
                width: 100%;
                background-color: #4436c2;
            }


            .food_item_img img {
                width: 100%;
            }

            .food_item_desc {
                text-align: center;
                font-size: 10px;
            }

            .food_item_price {
                color: red;
            }
        </style>

    </head>
    <%@include file ="header.jsp" %>
    <body>

        <!-- root -->
        <div id="view_food_booked_app">

            <!-- back button -->
            <button class="view_food_btn_back">back</button>

            <!-- title -->
            <div class="view_food_title_container">
                <h1 class="view_food_title">View Food Booked</h1>
            </div>

            <!-- food container -->
            <div class="view_food_container">

                <div class="view_food_item">
                    <div class="food_item_img">
                        <img src="https://giangghe.com/upload/images/1453177743132-5894185-(1).jpg" alt="">
                    </div>
                    <div class="food_item_title">
                        <h3>Loster</h3>
                    </div>
                    <div class="food_item_type">
                        <p>Seafood</p>
                    </div>
                    <div class="food_item_desc">
                        <p>Some quick example text to build on the card title and make up the bulk of the card's content</p>
                    </div>
                    <div class="food_item_quantity">
                        <p>Quantity: 1</p>
                    </div>
                    <div class="food_item_price">
                        <h3>$100</h3>
                    </div>
                </div>

                <div class="view_food_item">
                    <div class="food_item_img">
                        <img src="https://giangghe.com/upload/images/1453177743132-5894185-(1).jpg" alt="">
                    </div>
                    <div class="food_item_title">
                        <h3>Loster</h3>
                    </div>
                    <div class="food_item_type">
                        <p>Seafood</p>
                    </div>
                    <div class="food_item_desc">
                        <p>Some quick example text to build on the card title and make up the bulk of the card's content</p>
                    </div>
                    <div class="food_item_quantity">
                        <p>Quantity: 1</p>
                    </div>
                    <div class="food_item_price">
                        <h3>$100</h3>
                    </div>
                </div>

                <div class="view_food_item">
                    <div class="food_item_img">
                        <img src="https://giangghe.com/upload/images/1453177743132-5894185-(1).jpg" alt="">
                    </div>
                    <div class="food_item_title">
                        <h3>Loster</h3>
                    </div>
                    <div class="food_item_type">
                        <p>Seafood</p>
                    </div>
                    <div class="food_item_desc">
                        <p>Some quick example text to build on the card title and make up the bulk of the card's content</p>
                    </div>
                    <div class="food_item_quantity">
                        <p>Quantity: 1</p>
                    </div>
                    <div class="food_item_price">
                        <h3>$100</h3>
                    </div>
                </div>

                <div class="view_food_item">
                    <div class="food_item_img">
                        <img src="https://giangghe.com/upload/images/1453177743132-5894185-(1).jpg" alt="">
                    </div>
                    <div class="food_item_title">
                        <h3>Loster</h3>
                    </div>
                    <div class="food_item_type">
                        <p>Seafood</p>
                    </div>
                    <div class="food_item_desc">
                        <p>Some quick example text to build on the card title and make up the bulk of the card's content</p>
                    </div>
                    <div class="food_item_quantity">
                        <p>Quantity: 1</p>
                    </div>
                    <div class="food_item_price">
                        <h3>$100</h3>
                    </div>
                </div>

            </div>

        </div>

        <!-- Bootstrap JS Library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </body>

</html>