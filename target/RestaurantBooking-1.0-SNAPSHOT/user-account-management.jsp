
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

            <!--Modal Delete-->

            <div class="modal" id="myDelete">
                <div class="modal-dialog  modal-dialog-centered">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">Delete</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            Are you sure?.
                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Done</button>
                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                        </div>

                    </div>
                </div>
            </div>

            <!--End Modal Delete-->  


            <!-- About Start -->
            <div style="margin-top: 80px"  class="container-fluid py-5">
                <h1 class="text-center">User Account Management</h1>
                <table id="example" class="table table-bordered">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Fullname</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Username</th>
                            <th>Password</th>
                            <th>Update</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Nguyen Van A</td>
                            <td>tranvanheo@gmail.com</td>
                            <td>0123456789</td>
                            <td>vanheo</td>
                            <td>heocon123</td>
                            <td>
                                <div class="row">
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
            <!-- About End -->





        </div>

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


        

 
