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
        <!-- Header End -->
        <div style="margin-top: 50px" class="container  ">
            <div class="container my-5 pt-5 pb-4 d-flex flex-row-reverse ">
                <div class="btn-group btn-group-lg ">
                    <button type="button" class="btn btn-primary">User account management</button>
                </div>
                <div class="btn-group btn-group-lg ">
                    <button type="button" class="btn "></button>
                </div>
                <div class="btn-group btn-group-lg ">
                    <button type="button" class="btn btn-primary">Revenue management</button>
                </div> <div class="btn-group btn-group-lg ">
                    <button type="button" class="btn "></button>
                </div>
            </div>
        </div>

        <!-- The Modal -->
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

        <!--Modal Delete-->

        <!--End Modal Delete-->  
        <section class="container ">
            <h1 class="text-center">Staff Account Management</h1>
            
            <!--Update Staff Modal-->
            <div class="d-flex justify-content-end mb-3 col">
                <button
                    class="btn btn-primary"
                    href="#"
                    data-bs-toggle="modal"
                    data-bs-target="#AddModal"
                    >
                    ADD STAFF
                </button>
                <div class="modal" id="AddModal">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h3 class="modal-title">ADD STAFF</h3>  
                                <button
                                    type="button"
                                    class="btn-close"
                                    data-bs-dismiss="modal"
                                    ></button>
                            </div>
                            <div class="modal-body text-start">
                                <form>
                                    <div class="mb-3">
                                        <label class="form-label required"
                                               >FullName</label
                                        >
                                        <input type="text" class="form-control" />
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label required">Email</label>
                                        <input type="email" class="form-control" />
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label required">Phone</label>
                                        <input type="phone" class="form-control" />
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label required">Username</label>
                                        <input type="username" class="form-control" />
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label required">Password</label>
                                        <input type="password" class="form-control" />
                                    </div>

                                </form>
                            </div>
                            <div class="modal-footer text-center">
                                <button type="submit" class="btn btn-danger">
                                    ADD
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--End UpdateStaff Modal-->
            <table id="example" class="table table-bordered">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Fullname</th>
                        <th>Email</th>
                        <th>Phone number</th>
                        <th>Username</th>
                        <th>Password</th>
                        <th class="text-center">Update</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Nguyen Van A</td>
                        <td>vanteoo@gmail.com</td>
                        <td>01234556789</td>
                        <td>vanteo</td>
                        <td>nguyenvanteo123</td>
                        <td>
                            <div class="row mx-2">
                                <!--Update Staff Modal-->
                                <div class="col">
                                    <button
                                        class="btn btn-success"
                                        href="#"
                                        data-bs-toggle="modal"
                                        data-bs-target="#UpdateModal"
                                        >
                                        Update
                                    </button>
                                    <div class="modal" id="UpdateModal">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h3 class="modal-title">Update Staff information</h3>
                                                    <button
                                                        type="button"
                                                        class="btn-close"
                                                        data-bs-dismiss="modal"
                                                        ></button>
                                                </div>
                                                <div class="modal-body text-start">
                                                    <form>
                                                        <div class="mb-3">
                                                            <label class="form-label required"
                                                                   >FullName</label
                                                            >
                                                            <input type="text" class="form-control" />
                                                        </div>
                                                        <div class="mb-3">
                                                            <label class="form-label required">Email</label>
                                                            <input type="email" class="form-control" />
                                                        </div>
                                                        <div class="mb-3">
                                                            <label class="form-label required">Phone</label>
                                                            <input type="phone" class="form-control" />
                                                        </div>
                                                        <div class="mb-3">
                                                            <label class="form-label required">Username</label>
                                                            <input type="username" class="form-control" />
                                                        </div>
                                                        <div class="mb-3">
                                                            <label class="form-label required">Password</label>
                                                            <input type="password" class="form-control" />
                                                        </div>

                                                    </form>
                                                </div>
                                                <div class="modal-footer text-center">
                                                    <button type="submit" class="btn btn-danger">
                                                        Update
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--End UpdateStaff Modal-->

                                <div class="col text-end">
                                    <button
                                        class="btn btn-danger"
                                        href="#"
                                        data-bs-toggle="modal"
                                        data-bs-target="#Delete"
                                        >
                                        Delete
                                    </button>
                                    <div class="modal" id="Delete">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title">Confirm delete</h5>
                                                    <button
                                                        type="button"
                                                        class="btn-close"
                                                        data-bs-dismiss="modal"
                                                        ></button>
                                                </div>
                                                <div class="modal-body text-start">
                                                    <div class="text-center">
                                                        <h4>Do you want to delete this?</h4>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="submit" class="btn btn-primary">
                                                        Yes
                                                    </button>
                                                    <button type="submit" class="btn btn-danger">
                                                        No
                                                    </button>
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



