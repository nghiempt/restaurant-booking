
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Revenue Management</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">


        <%@include file="import-js-links.jsp" %>
        <%@include file="import-css-links.jsp" %>
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                let table = new DataTable('#example');
            });
        </script>
    </head>

    <body>
        <div class="container-xxl bg-white p-0">
            <%@include file="header.jsp" %>

            <!-- Header End -->
            <div style="margin-top: 100px" class="container  ">
                <div  class="container my-5 pt-5 pb-4 d-flex flex-row-reverse ">
                    <div class="btn-group btn-group-lg mx-5">
                        <button type="button" class="btn btn-primary">Staff account management</button>
                    </div>
                    <div class="btn-group btn-group-lg ">
                        <button type="button" class="btn btn-primary">User account management</button>
                    </div>
                </div>
            </div>
            <!-- Header End -->
            <h1 class="text-center mb-5">Revenue Management</h1>
            <div>
                <form action="#" method="">
                    <div class="row ">
                        From
                        <div class="col-md-3">
                            <input type="date" class=" text-center form-control" name="from">
                        </div>
                        to
                        <div class="col-md-3">
                            <input type="date" class="text-center form-control"  name="to">
                        </div>
                        <div class="col-md-3">
                            <button type="submit"class="btn btn-primary">Filter</button>
                        </div>
                    </div>
                </form>
            </div>
            <!-- About Start -->
            <div class="container-xxl py-5">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th scope="col">No</th>
                            <th scope="col">Date time</th>
                            <th scope="col">People</th>
                            <th scope="col">Table</th>
                            <th scope="col">Total order</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">0001</th>
                            <td>10/01/2021</td>
                            <td>10</td>
                            <td>02</td>
                            <td>1400.0</td>
                        </tr>
                        <tr>
                            <th scope="row">0007</th>
                            <td>15/02/2021</td>
                            <td>02</td>
                            <td>03</td>
                            <td>1500.0</td>
                        </tr>
                        <tr>
                            <th scope="row">0013</th>
                            <td>18/07/2022</td>
                            <td>06</td>
                            <td>03</td>
                            <td>2000.0</td>
                        </tr>
                        <tr>
                            <th scope="row">0023</th>
                            <td>11/01/2022</td>
                            <td>06</td>
                            <td>04</td>
                            <td>1300.0</td>
                        </tr>
                        <tr>
                            <th colspan="4" class="text-center">Total Revenue</th>
                            <td>62000.0</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- About End -->





        </div>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>

</html>