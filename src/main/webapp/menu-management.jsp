<%-- Document : Menu Management Created on : Feb 14, 2023, 7:05:53 PM Author :
Hung --%> <%@page import="com.DAOS.AccountDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />

        <title>Menu Management</title>
        <meta content="" name="description" />
        <meta content="" name="keywords" />
        <%@include file="import-css-links.jsp"%>
        <style>
            .modal-header {
                background: red;
                color: #fff;
            }
        </style>

  <body>
    <!-- ======= Header ======= -->
    <%@include file= "header.jsp" %>
    <!-- End Header -->

        <%  cookies = request.getCookies();
            String accountId = "";
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("account")) {
                        accountId = cookie.getValue();
                        break;
                    }
                }
            }
            AccountDAO dao = new AccountDAO();
        %>

        <% if (dao.getAccountById(accountId).getUser_role().equals("admin")) {%>
        <section style="margin-top: 100px">
            <div class="container">
                <div class="text-end">
                    <button class="btn btn-danger">Orders Management</button>
                </div>

                <h1 class="text-center">Menu Management</h1>
                <div class="row">
                  <div class="col">
                    <button
                      class="btn btn-success"
                      href="#"
                      data-bs-toggle="modal"
                      data-bs-target="#UpdateModal"
                    >
                      Edit
                    </button>
                    <div class="modal" id="UpdateModal">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title">Update Food</h5>
                            <button
                              type="button"
                              class="btn-close"
                              data-bs-dismiss="modal"
                            ></button>
                          </div>
                          <div class="modal-body text-start">
                            <form>
                              <div class="mb-4">
                                <label class="form-label required"
                                  >Category of food</label
                                >
                                <select name="category">
                                  <option value="Seafood">Seafood</option>
                                  <option value="Drink">Drink</option>
                                  <option value="Meat">Meat</option>
                                </select>
                              </div>
                              <div class="mb-3">
                                <label class="form-label required"
                                  >Name of food</label
                                >
                                <input type="text" class="form-control" />
                              </div>
                              <div class="mb-3">
                                <label class="form-label required">Price</label>
                                <input type="email" class="form-control" />
                              </div>
                              <div class="mb-3">
                                <label class="form-label required"
                                  >Food description</label
                                >
                                <textarea class="form-control"></textarea>
                              </div>
                            </form>
                          </div>
                          <div class="modal-footer">
                            <button type="submit" class="btn btn-danger">
                              Update
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col"></div>
                    <div class="col text-end">
                        <button
                            type="button"
                            class="btn btn-danger"
                            data-bs-toggle="modal"
                            data-bs-target="#myModal"
                            >
                            Add Food
                        </button>
                        <div class="modal" id="myModal">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Add Food</h5>
                                        <button
                                            type="button"
                                            class="btn-close"
                                            data-bs-dismiss="modal"
                                            ></button>
                                    </div>
                                    <div class="modal-body text-start">
                                        <form>
                                            <div class="mb-4">
                                                <label class="form-label required"
                                                       >Category of food</label
                                                >
                                                <select name="category">
                                                    <option value="Seafood">Seafood</option>
                                                    <option value="Drink">Drink</option>
                                                    <option value="Meat">Meat</option>
                                                </select>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label required">Name of food</label>
                                                <input type="text" class="form-control" />
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label required">Price</label>
                                                <input type="email" class="form-control" />
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label required"
                                                       >Food description</label
                                                >
                                                <textarea class="form-control"></textarea>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-danger">Add</button>
                                    </div>
                                </div>
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
                <div class="row">
                    <div class="col">
                        <select name="category">
                            <option value="Seafood">Seafood</option>
                            <option value="Drink">Drink</option>
                            <option value="Meat">Meat</option>
                        </select>
                    </div>
                </div>
                <table id="example" class="table table-bordered">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Name of food</th>
                            <th>Food price</th>
                            <th>Food description</th>
                            <th class="text-center">Update</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Ca chien</td>
                            <td>2$</td>
                            <td>Ca tuoi thom ngon</td>
                            <td>
                                <div class="row">
                                    <div class="col">
                                        <button
                                            class="btn btn-success"
                                            href="#"
                                            data-bs-toggle="modal"
                                            data-bs-target="#UpdateModal"
                                            >
                                            Edit
                                        </button>
                                        <div class="modal" id="UpdateModal">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title">Update Food</h5>
                                                        <button
                                                            type="button"
                                                            class="btn-close"
                                                            data-bs-dismiss="modal"
                                                            ></button>
                                                    </div>
                                                    <div class="modal-body text-start">
                                                        <form>
                                                            <div class="mb-4">
                                                                <label class="form-label required"
                                                                       >Category of food</label
                                                                >
                                                                <select name="category">
                                                                    <option value="Seafood">Seafood</option>
                                                                    <option value="Drink">Drink</option>
                                                                    <option value="Meat">Meat</option>
                                                                </select>
                                                            </div>
                                                            <div class="mb-3">
                                                                <label class="form-label required"
                                                                       >Name of food</label
                                                                >
                                                                <input type="text" class="form-control" />
                                                            </div>
                                                            <div class="mb-3">
                                                                <label class="form-label required">Price</label>
                                                                <input type="email" class="form-control" />
                                                            </div>
                                                            <div class="mb-3">
                                                                <label class="form-label required"
                                                                       >Food description</label
                                                                >
                                                                <textarea class="form-control"></textarea>
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="submit" class="btn btn-danger">
                                                            Update
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
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
            </div>
        </section>
        <a
            href="#"
            class="scroll-top d-flex align-items-center justify-content-center"
            ><i class="bi bi-arrow-up-short"></i
            ></a>
        <div id="preloader"></div>
        <% } else { %>
        <h1>Don't have permission</h1>
        <% }%>

    <!-- Template Main JS File -->
    <%@include file="import-js-links.jsp" %>

        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#example").DataTable();
            });
        </script>
        <script src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.2/js/dataTables.bootstrap5.min.js"></script>
    </body>
</html>
