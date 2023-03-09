<%-- Document : footer Created on : Feb 15, 2023, 10:57:47 PM Author : giacu
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

    <%@include file="import-css-links.jsp"%>
    <title>Restaurant Booking</title>
    <link rel="stylesheet" href="resouces/css/footer-styles.css" />
  </head>
  <body></body>
  <footer
    id="footer"
    style="
      background-color: #1f1f24;
      color: whitesmoke;
      margin-top: 10px;
      height: 250px;
      font-size: 18px;
    "
  >
    <div class="container">
      <div class="d-flex justify-content-between mt-4">
        <div class="">
          <i class="bi bi-geo-alt icon"></i>
          <div>
            <h4>Address</h4>
            <p>
              đường A1, KDC Hưng Phú 1, <br />
              Q. Cái Răng, Tp. Cần Thơ.<br />
            </p>
          </div>
        </div>

        <div class="footer-links d-flex">
          <i class="bi bi-telephone icon"></i>
          <div>
            <h4>Reservations</h4>
            <p>
              <strong>Phone:</strong> 0845.2969.17<br />
              <strong>Email:</strong> cuongtgce160068@fpt.edu.com<br />
            </p>
          </div>
        </div>

        <div class="footer-links d-flex">
          <i class="bi bi-clock icon"></i>
          <div>
            <h4>Opening Hours</h4>
            <p>
              <strong>Mon-Sat: 7AM</strong> - 22PM<br />
              Sunday: Closed
            </p>
          </div>
        </div>
      </div>
    </div>

    <div class="container" id="footer-end" style="text-align: center">
      <div class="copyright">
        &copy; Copyright <strong><span>Restaurant Booking</span></strong
        >. All Rights Reserved
      </div>
      <div class="credits">
        Designed by <a href="https://bootstrapmade.com/">CuongSeven</a>
      </div>
    </div>
  </footer>
</html>
