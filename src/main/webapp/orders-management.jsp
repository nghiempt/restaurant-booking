<%-- 
    Document   : Order Management
    Created on : Feb 14, 2023, 10:06:19 PM
    Author     : Hung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Order Management</title>
        <meta content="" name="description">
        <meta content="" name="keywords">
        <%@include file="import-css-links.jsp"%>
    </head>


    <body>
        <!-- ======= Header ======= -->
        <%@include file= "header.jsp" %>
        <!-- End Header -->

        <section style="margin-top: 100px">
            <div class="container">
                <div class="text-end"><button class="btn btn-danger">Menu Management</button></div>
                <h1 class="container" style="text-align: left; font-family: 'Shantell Sans', cursive;">View table status</h1>
                <div class="form-group mx-5 my-5 p-lg-4 rounded-4" style="background-color: #6699FF;">
                    <h3 class="text-center">Front-door</h3>
                    <div class="row text-center">
                        <div class="col-6">
                            <button type="button" class="btn btn-dark my-2 mx-2 rounded-4" style="width: 20rem;height: 10rem"><h3>Table 1</h3></button>
                            <button type="button" class="btn btn-dark my-2 mx-2 rounded-4" style="width: 20rem;height: 10rem"><h3>Table 1</h3></button>
                            <button type="button" class="btn btn-dark my-2 mx-2 rounded-4" style="width: 20rem;height: 10rem"><h3>Table 1</h3></button>
                            <button type="button" class="btn btn-dark my-2 mx-2 rounded-4" style="width: 20rem;height: 10rem"><h3>Table 1</h3></button>
                            <button type="button" class="btn btn-dark my-2 mx-2 rounded-4" style="width: 20rem;height: 10rem"><h3>Table 1</h3></button>
                            <button type="button" class="btn btn-dark my-2 mx-2 rounded-4" style="width: 20rem;height: 10rem"><h3>Table 1</h3></button>
                            <button type="button" class="btn btn-dark my-2 mx-2 rounded-4" style="width: 20rem;height: 10rem"><h3>Table 1</h3></button>
                            <button type="button" class="btn btn-dark my-2 mx-2 rounded-4" style="width: 20rem;height: 10rem"><h3>Table 1</h3></button>
                        </div>
                        <div class="col-6">
                            <button type="button" class="btn btn-dark my-2 mx-2 rounded-4" style="width: 20rem;height: 10rem"><h3>Table 1</h3></button>
                            <button type="button" class="btn btn-dark my-2 mx-2 rounded-4" style="width: 20rem;height: 10rem"><h3>Table 1</h3></button>
                            <button type="button" class="btn btn-dark my-2 mx-2 rounded-4" style="width: 20rem;height: 10rem"><h3>Table 1</h3></button>
                            <button type="button" class="btn btn-danger my-2 mx-2 rounded-4" style="width: 20rem;height: 10rem"><h3>Table 1</h3></button>
                            <button type="button" class="btn btn-dark my-2 mx-2 rounded-4" style="width: 20rem;height: 10rem"><h3>Table 1</h3></button>
                            <button type="button" class="btn btn-dark my-2 mx-2 rounded-4" style="width: 20rem;height: 10rem"><h3>Table 1</h3></button>
                            <button type="button" class="btn btn-dark my-2 mx-2 rounded-4" style="width: 20rem;height: 10rem"><h3>Table 1</h3></button>
                            <button type="button" class="btn btn-dark my-2 mx-2 rounded-4" style="width: 20rem;height: 10rem"><h3>Table 1</h3></button>
                        </div>
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
                <h1 class="container" style="text-align: left; font-family: 'Shantell Sans', cursive;"">Orders Management</h1>
                <table id="example" class="table table-bordered">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Name</th>
                            <th>Phone number</th>
                            <th>Time Check-in</th>
                            <th>People</th>
                            <th>Table</th>
                            <th>Payment Time</th>
                            <th>Total Payment</th>
                            <th class="text-center">Confirm</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Nguyen Van A</td>
                            <td>01234556789</td>
                            <td>4:00</td>
                            <td>4</td>
                            <td>5</td>
                            <td>2:00</td>
                            <td>500.0</td>
                            <td>
                                <div class="row">
                                    <div class="col"><button class="btn btn-success">Confirm</button></div>
                                    <div class="text-end col">
                                        <button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#Delete">Delete</button>
                                        <div class="modal" id="Delete">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title">Confirm delete</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                                    </div>
                                                    <div class="modal-body text-start">
                                                        <div class="text-center"><h4>Do you want to delete this?</h4></div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="submit" class="btn btn-primary">Yes</button>
                                                        <button type="submit" class="btn btn-danger">No</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>

        <a href="#" class="scroll-top d-flex align-items-center
           justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
        <div id="preloader"></div>

        <!-- Vendor JS Files -->
        <%@include file="import-js-links.jsp" %>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#example').DataTable();
            });
        </script>
        <script src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.2/js/dataTables.bootstrap5.min.js"></script>
    </body>
</html>
