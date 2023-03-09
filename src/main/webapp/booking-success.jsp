

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

    <head>
        <%--<%@include file="importFavicon.jsp" %>--%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Thank you</title>
        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
        <!--Table data-->
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
    </head>

    <body style="background-color:#FFD230;">
        <%@include file="header.jsp" %>
        <div class="container" style="background-color: white; margin-top: 100px; padding: 10px 5px 10px 5px;">
            <div class="justify-content-center">
                <div style="padding: 15px 20px 15px 20px;" align="center">
                    <div>
                        <span>
                            <h1 style="color: green;">ORDER SUCCESS</h1>
                        </span>
                    </div>

                    <div style="margin-top: 5px;">
                        <span>
                            Thank you
                        </span>
                    </div>
                    <div class="a-container" style="margin-top: 20px;">
                        <a href="/food/list" type="submit" name="btnHome" id="btnHome"
                           class="form-control btn btn-dark rounded submit px-3">Back to menu</a>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="footer.jsp" %>
    </body>

</html>