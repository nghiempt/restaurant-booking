<%-- 
Document   : view-cart
Created on : Feb 20, 2023, 12:15:09 AM
Author     : giacu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="import-css-links.jsp"%>

    </head>
    <%@include file="header.jsp"%>

    <body>
        <div class="ms-5" style="margin-top:150px">
            <a href=""class="btn btn-dark"> Back </a>
        </div>
        <section class="container-fluid">
            <h1 class="text-center"  style="font-family: 'Shantell Sans', cursive;font-size: 50px">Cart</h1>
        </section>

        <!--MENU-->
        <section id="" class="container-fluid mt-5">

            <div class="container-fluid">

                <div class="d-flex">
                    <input type="text" id="myFilter" class="form-control w-25 fs-3 ms-4 searchbox-input" onkeyup="myFunction()" placeholder="Search for names.."required>
                    <!--<input type="search" placeholder="Search......" name="search" class="searchbox-input" onkeyup="buttonUp();" required>-->
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

                </div>
                <div class="text-center my-5">
                    <button class="btn btn-danger fs-3">Checkout</button>

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


        </script>
    </body>
    <%@include file="footer.jsp" %>
</html>