<%-- 
    Document   : menu
    Created on : Feb 18, 2023, 7:06:21 AM
    Author     : giacu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="resouces/js/handleIn-decrease-btn.js"></script>
        <title>Restaurant Booking</title>
        <!--<link rel="stylesheet" type="text/css" media="all" href="resouces/css/in-decrease-btn.css"/>-->

        <%@include file="import-js-links.jsp" %>
    </head>

    <!-- Header-->
    <%@include file="header.jsp" %>     
    <!-- End-Header-->

    <body>
        <section class="container-fluid" style="margin-top:150px">
            <div class="ms-5">
                <a href=""class="btn btn-dark"> Back </a>
            </div>
            <div class="d-flex align-items-end flex-column" style="margin-right: 15rem">

                <a href="/?type=cart">
                    <svg xmlns="http://www.w3.org/2000/svg" width="160" height="160" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16" style="font-size: 40px">
                    <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                    </svg>
                </a>                    
            </div>


            <h1 class="text-center"  style="font-family: 'Shantell Sans', cursive;font-size: 50px">Menu</h1>
            <div>
                <h3>Catelogies</h3>
                <div class="d-flex justify-content-between w-50 p-lg-4 bg-grey" >
                    <div>
                        <select id="food" style="width: 200px;height: 40px;font-size: 20px;">
                            <option value="first">Sea food</option>
                            <option value="second">Meat</option>
                            <option value="third">Drink</option>
                        </select>
                        <select id="price" style="width: 200px;height: 40px;font-size: 20px">
                            <option value="first">From 10$ - 20$</option>
                            <option value="second">From 21$ - 50$</option>
                            <option value="third">Over 50$</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-dark w-25">Filter</button>
                </div>
            </div>
        </section>

        <section>
            <button class="btn btn-success catelogies-all">All Categories</button>
            <button class="catelogies-seafood">Seafood</button>
            <button class="catelogies-drink">Drink</button>
            <button class="catelogies-meat">Meat</button>
        </section>

        <!--MENU-->
        <section id="" class="container-fluid mt-5">

            <div class="container-fluid">

                <div class="row">
                    <div class="col-sm-12 mb-3">
                        <input type="text" id="myFilter" class="form-control w-50 fs-3 searchbox-input" onkeyup="myFunction()" placeholder="Search for names.."required>
                        <!--<input type="search" placeholder="Search......" name="search" class="searchbox-input" onkeyup="buttonUp();" required>-->
                    </div>
                </div>

                <div class="row" id="myItems">

                    <div class="col-3 card my-3 mx-5 text-center">
                        <a href="url" target="target"><img src="https://giangghe.com/upload/images/1453177743132-5894185-(1).jpg" id="image-food"class="card-img-top" style="height: 400px" alt="..."></a>
                        <div class="card-body">
                            <h4 class="card-title text-center">chien</h4>
                            <div class="card-title meatfood">meatfood</div>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>

                            <div class="quantity">
                                <button class="btn btn-danger minus-btn"><i class="fa fa-minus"></i></button>
                                <input type="text" class="text-center qty-input fs-3" value="0" maxlength="10">
                                <button class="btn btn-success plus-btn"><i class="fa fa-plus"></i></button>
                            </div>

                            <h3 class="">$<span class="price_value Source Title">67</span></h3>
                        </div>
                    </div>   
                    <div class="col-3 card my-3 mx-5 text-center">
                        <a href="url" target="target"><img src="https://giangghe.com/upload/images/1453177743132-5894185-(1).jpg" id="image-food"class="card-img-top" style="height: 400px" alt="..."></a>
                        <div class="card-body">
                            <h4 class="card-title text-center">xao</h4>
                            <div class="card-title seafood">Seafood</div>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>

                            <div class="quantity">
                                <button class="btn btn-danger minus-btn"><i class="fa fa-minus"></i></button>
                                <input type="text" class="text-center qty-input fs-3" value="0" maxlength="10">
                                <button class="btn btn-success plus-btn"><i class="fa fa-plus"></i></button>
                            </div>

                            <h3 class="">$<span class="price_value Source Title">32</span></h3>
                        </div>
                    </div>   
                    <div class="col-3 card my-3 mx-5 text-center">
                        <a href="url" target="target"><img src="https://giangghe.com/upload/images/1453177743132-5894185-(1).jpg" id="image-food"class="card-img-top" style="height: 400px" alt="..."></a>
                        <div class="card-body">
                            <h4 class="card-title text-center">nuong</h4>
                            <div class="card-title drinkfood">drinkfood</div>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>

                            <div class="quantity">
                                <button class="btn btn-danger minus-btn"><i class="fa fa-minus"></i></button>
                                <input type="text" class="text-center qty-input fs-3" value="0" maxlength="10">
                                <button class="btn btn-success plus-btn"><i class="fa fa-plus"></i></button>
                            </div>

                            <h3 class="">$<span class="price_value Source Title">420</span></h3>
                        </div>
                    </div>   
                    <div class="text-center my-5">
                        <button class="btn btn-success fs-3 mx-4">Add to cart</button>
                        <button class="btn btn-danger fs-3">Buy Now</button>

                    </div>
                </div>
            </div>
        </section><!-- End s Section -->
        <script>

            let minusBtns = document.querySelectorAll(".minus-btn");
            let plusBtns = document.querySelectorAll(".plus-btn");
            let qtyInputs = document.querySelectorAll(".qty-input");
            let priceValues = document.querySelectorAll(".price_value");



            for (let i = 0; i < minusBtns.length; i++) {
                minusBtns[i].addEventListener("click", () => {
                    if (qtyInputs[i].value >= 1) {
                        qtyInputs[i].value = parseInt(qtyInputs[i].value) - 1;

                    }
                });
            }

            for (let i = 0; i < plusBtns.length; i++) {
                plusBtns[i].addEventListener("click", () => {
                    if (qtyInputs[i].value < 10) {
                        qtyInputs[i].value = parseInt(qtyInputs[i].value) + 1;
                    }
                });
            }

//-------------------------- Fillter by Search everything ------------------------------------ -

            $(document).ready(function () {
                $('.searchbox-input').on("keyup", function () {
                    var value = $(this).val().toLowerCase();
                    $(".card").filter(function () {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                    });
                });
            });


// ----------------------- Fillter by catelogies--------------------------------------- -

            $(document).ready(function () {
                var activeCat = "";
                function filterGroup(group) {
                    if (activeCat != group) {
                        $("div").filter("." + group).show();
                        $("div").filter(":not(." + group + ")").hide();
                        activeCat = group;
                    }
                }

                $(".catelogies-all").click(function () {
                    $("div").show();
                    activeCat = "all";
                });
                $(".catelogies-seafood").click(function () {
                    filterGroup("seafood");
                });
                $(".catelogies-drink").click(function () {
                    filterGroup("drinkfood");
                });
                $(".catelogies-meat").click(function () {
                    filterGroup("meatfood");
                });
            });

        </script>
    </body>
    <%@include file="footer.jsp" %>
</html>
