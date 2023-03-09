
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <link rel="stylesheet" href="resouces/css/homepage-styles.css" />

        <title>Restaurant Booking</title>
        <meta content="" name="description" />
        <meta content="" name="keywords" />
        <%@include file="import-css-links.jsp"%>

        <title>Bootstrap Example</title>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>

    <body>
        <!-- ======= Hero Section ======= -->
        <section id="hero" class="hero d-flex align-items-center section-bg">
            <div class="container-fluid">
                <div class="row justify-content-between gy-5">
                    <div class="col-lg-4 d-flex flex-column justify-content-center align-items-center text-center text-lg">
                        <h2 data-aos="fade-up">
                            Enjoy Delicious Food at<br />our Restaurant
                        </h2>

                        <div class="d-flex" data-aos="fade-up" data-aos-delay="600">
                            <a
                                href="/table"
                                class="btn btn-danger"
                                style="height: 50px; width: 150px"
                                ><h4>Book a Table</h4></a
                            >
                        </div>
                        <p class="fs-4 mt-5" data-aos="fade-up" data-aos-delay="400">
                            We will bring you food the most luxurious and delicious food in
                            Vietnam.
                        </p>
                    </div>

                    <!--- Slideshow -->
                    <div class="col-lg-8 order-1 order-lg-2 text-center text-lg-start">
                        <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="" aria-label="Slide 1"></button>
                                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2" class=""></button>
                                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3" class="active" aria-current="true"></button>
                                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="3" aria-label="Slide 3" class="active" aria-current="true"></button>
                                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="4" aria-label="Slide 4" class="active" aria-current="true"></button>
                                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="5" aria-label="Slide 5" class="active" aria-current="true"></button>
                                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="6" aria-label="Slide 6" class="active" aria-current="true"></button>
                                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="7" aria-label="Slide 7" class="active" aria-current="true"></button>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item" data-bs-interval="3000">
                                    <img src="https://pasgo.vn/Upload/anh-chi-tiet/nha-hang-brilliant-seafood-ho-nghinh-1-normal-1406770444989.jpg" class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="100%" height="800" alt="alt" role="img" aria-label="Placeholder: First slide" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#f5f5f5"></rect>

                                    <div class="carousel-caption d-none d-md-block text-white">
                                        <h1>Brilliant Seafood</h1>
                                        <p>Singapore Chilli Crab, Singapore Chilli Prawn, Roasted Lobster with Garlic & Chilli/ Porridge Head, Snail Snails with Ginkgo Porridge, Snails around red fire</p>
                                    </div>
                                </div>
                                <div class="carousel-item" data-bs-interval="3000">
                                    <img src="https://kienthuc24h.vn/img_data/images/nhung-mon-an-ngon-nhat-the-gioi-ai-cung-phai-thu-mot-lan-trong-doi.jpg" class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="100%" height="800" alt="alt" role="img" aria-label="Placeholder: First slide" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#f5f5f5"></rect>

                                    <div class="carousel-caption d-none d-md-block text-white">
                                        <h1>Crab - Singapore</h1>
                                        <p>Chilli crab is available on most menus at restaurants in Singapore. The pungent flavor, smooth sauce with a gentle scent is always the attraction and keeps diners coming back to this country</p>
                                    </div>
                                </div>
                                <div class="carousel-item" data-bs-interval="3000">
                                    <img src="https://img.freepik.com/premium-photo/christmas-sparkler-white-cup-hot-chocolate-with-marshmallows-cinnamon-vintage-plate_251237-1057.jpg?w=1380" class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="100%" height="800" alt="alt" role="img" aria-label="Placeholder: First slide" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#f5f5f5"></rect>

                                    <div class="carousel-caption d-none d-md-block text-white">
                                        <h1>Christmas Cake</h1>
                                        <p>An easy Christmas cake that turns out perfect every time. No creaming, beating or soaking of fruit ..</p>
                                    </div>
                                </div>
                                <div class="carousel-item" data-bs-interval="3000">
                                    <img src="https://kienthuc24h.vn/img_data/images/tong-hop-top-30-mon-an-ngon-nhat-the-gioi.jpg" class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="100%" height="800" alt="alt" role="img" aria-label="Placeholder: First slide" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#f5f5f5"></rect>

                                    <div class="carousel-caption d-none d-md-block text-white">
                                        <h1>Peking duck - China</h1>
                                        <p>Perhaps it does not need much introduction because Peking duck has become so famous among food lovers, becoming one of the delicious,..</p>
                                    </div>
                                </div>
                                <div class="carousel-item" data-bs-interval="3000">
                                    <img src="https://media.cnn.com/api/v1/images/stellar/prod/170224162857-mango-lassi.jpg?q=x_0,y_534,h_1990,w_3537,c_crop/h_720,w_1280" class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="100%" height="800" alt="alt" role="img" aria-label="Placeholder: First slide" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#f5f5f5"></rect>

                                    <div class="carousel-caption d-none d-md-block text-white">
                                        <h1>Mango lassi, India</h1>
                                        <p> Mango, yogurt and milk combine in creamy harmony making those sweltering afternoons almost something to look forward to..</p>
                                    </div>
                                </div>

                                <div class="carousel-item" data-bs-interval="3000">
                                    <img src="https://img.freepik.com/free-photo/grilled-beef-steak-dark-wooden-surface_1150-44344.jpg?w=1800&t=st=1678003993~exp=1678004593~hmac=cb56e12ef794dfc2e4a60aa3202d00f530b9687799744fa925fb6853f9a758a4" class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="100%" height="800" alt="alt" role="img" aria-label="Placeholder: First slide" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#f5f5f5"></rect>
                                    <div class="carousel-caption d-none d-md-block text-white">
                                        <h2>Beef Steak</h2>
                                        <p>Some representative placeholder content for the second slide.</p>
                                    </div>
                                </div>

                                <div class="carousel-item active">
                                    <img src="https://as2.ftcdn.net/v2/jpg/03/39/40/21/1000_F_339402118_7OkfGh8chNwF3qXdlTV6Q5NpSsPjgj6d.jpg" class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="100%" height="800" alt="alt" role="img" aria-label="Placeholder: First slide" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#f5f5f5"></rect>

                                    <div class="carousel-caption d-none d-md-block text-white">
                                        <h2>King Crab king-dom</h2>
                                        <p>Coming from cold Alaska, King Crab is honored as the king of crabs with legs that can be up to 2.0m long and weigh up to 10kg..</p>
                                    </div>
                                </div>
                            </div>
                            <button class="carousel-control-prev btn btn-group-lg" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next btn btn-group-lg" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                        <!--end-slideshow-->

                    </div>
                </div>
            </div>
        </section>
        <!-- End Hero Section -->

        <!-- ======= Menu Section ======= -->
        <section id="menu" class="menu my-5">
            <div class="container-fluid" data-aos="fade-up">
                <div class="text-center" style="font-family: 'Shantell Sans', cursive">
                    <h1>Our Menu</h1>
                    <h4>Outstanding dishes <span>at Restaurant Booking</span></h4>
                </div>
                <div class="d-flex justify-content-center">
                    <div class="card mx-4">
                        <a href="url" target="target"
                           ><img
                                src="https://www.licious.in/blog/wp-content/uploads/2022/02/shutterstock_1773695441-min-750x750.jpg"
                                id="image-food"
                                class="card-img-top"
                                style="height: 400px"
                                alt="..."
                                /></a>
                        <div class="card-body">
                            <h4 class="card-title text-center">Name</h4>
                            <p class="card-text">
                                Some quick example text to build on the card title and make up
                                the bulk of the card's content.
                            </p>
                            <h3 class="card-text">$30</h3>
                        </div>
                    </div>
                    <div class="card mx-4">
                        <a href="url" target="target"
                           ><img
                                src="https://www.licious.in/blog/wp-content/uploads/2022/02/shutterstock_1773695441-min-750x750.jpg"
                                id="image-food"
                                class="card-img-top"
                                style="height: 400px"
                                alt="..."
                                /></a>
                        <div class="card-body">
                            <h4 class="card-title text-center">Name</h4>
                            <p class="card-text">
                                Some quick example text to build on the card title and make up
                                the bulk of the card's content.
                            </p>
                            <h3 class="card-text">$30</h3>
                        </div>
                    </div>
                    <div class="card mx-4">
                        <a href="url" target="target"
                           ><img
                                src="https://www.licious.in/blog/wp-content/uploads/2022/02/shutterstock_1773695441-min-750x750.jpg"
                                id="image-food"
                                class="card-img-top"
                                style="height: 400px"
                                alt="..."
                                /></a>
                        <div class="card-body">
                            <h4 class="card-title text-center">Name</h4>
                            <p class="card-text">
                                Some quick example text to build on the card title and make up
                                the bulk of the card's content.
                            </p>
                            <h3 class="card-text">$30</h3>
                        </div>
                    </div>

                    <!-- End Starter Menu Content -->
                </div>
            </div>
        </section>
        <!-- End Menu Section -->

        <!-- ======= Events Section ======= -->
        <section id="events" class="events my-5">
            <div class="container-fluid">
                <div class="text-center" style="font-family: 'Shantell Sans', cursive">
                    <h1>Events</h1>
                    <h4>Share <span>Your Moments</span> In Our Restaurant</h4>
                </div>
                <div class="row">
                    <div class="col-4 card">
                        <a href="url" target="target"
                           ><img
                                src="https://www.licious.in/blog/wp-content/uploads/2022/02/shutterstock_1773695441-min-750x750.jpg"
                                id="image-food"
                                class="card-img-top"
                                style="height: 400px"
                                alt="..."
                                /></a>
                        <div class="card-body">
                            <h4 class="card-title text-center">Name</h4>
                            <p class="card-text">
                                Some quick example text to build on the card title and make up
                                the bulk of the card's content.
                            </p>
                            <div class="row d-flex justify-content-between my-5">
                                <a href="#" class="col-4 btn btn-danger"
                                   ><h4 style="height: 20px">Book a combo</h4></a
                                >
                                <h3 class="col-4 card-text">$30</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 card">
                        <a href="url" target="target"
                           ><img
                                src="https://www.licious.in/blog/wp-content/uploads/2022/02/shutterstock_1773695441-min-750x750.jpg"
                                id="image-food"
                                class="card-img-top"
                                style="height: 400px"
                                alt="..."
                                /></a>
                        <div class="card-body">
                            <h4 class="card-title text-center">Name</h4>
                            <p class="card-text">
                                Some quick example text to build on the card title and make up
                                the bulk of the card's content.
                            </p>
                            <div class="row d-flex justify-content-between my-5">
                                <a href="#" class="col-4 btn btn-danger">Book a combo</a>
                                <h3 class="col-4 card-text">$30</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 card">
                        <a href="url" target="target"
                           ><img
                                src="https://www.licious.in/blog/wp-content/uploads/2022/02/shutterstock_1773695441-min-750x750.jpg"
                                id="image-food"
                                class="card-img-top"
                                style="height: 400px"
                                alt="..."
                                /></a>
                        <div class="card-body">
                            <h4 class="card-title text-center">Name</h4>
                            <p class="card-text">
                                Some quick example text to build on the card title and make up
                                the bulk of the card's content.
                            </p>
                            <div class="row d-flex justify-content-between my-5">
                                <a href="#" class="col-4 btn btn-danger">Book a combo</a>
                                <h3 class="col-4 card-text">$30</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Events Section -->

        <!-- ======= Contact Section ======= -->
        <section id="contact" class="contact my-5">
            <div class="" data-aos="fade-up">
                <div class="text-center" style="font-family: 'Shantell Sans', cursive">
                    <h1>Contact</h1>
                    <h4>Need Help? <span>Contact Us</span></h4>
                </div>
                <div class="mb-3">
                    <iframe
                        style="border: 0; width: 100%; height: 350px"
                        src="https://www.google.com/maps/embed?pb=!1m26!1m12!1m3!1d15716.422953841911!2d105.71792262735836!3d10.008124085528593!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m11!3e6!4m3!3m2!1d10.0029376!2d105.7233818!4m5!1s0x31a0882139720a77%3A0x3916a227d0b95a64!2sdh%20fpt%20can%20tho!3m2!1d10.0140085!2d105.73174279999999!5e0!3m2!1svi!2s!4v1676476168660!5m2!1svi!2s"
                        frameborder="0"
                        allowfullscreen
                        ></iframe>
                </div>
                <!-- End Google Maps -->
            </div>
        </section>
        <!-- End Contact Section -->

        <!-- ======= Header ======= -->
        <%@include file= "header.jsp" %>
        <%@include file="footer.jsp" %>
        <!-- End Footer -->

        <!--Icon redirect to header-->
        <a href="#" 
           id="btn-scroll-up" 
           class="btn btn-danger me-5 mb-5" 
           style="position: fixed; right: 0; bottom: 0; display: none;">
            <i class="fa fa-arrow-up" style="font-size: 30px"></i>
        </a>

        <div id="preloader"></div>

        <!-- Vendor JS Files -->
        <%@include file="import-js-links.jsp" %>

        <script>
            $(document).ready(function () {
                $(window).scroll(function () {
                    if ($(this).scrollTop() > 100) { // giá trị 100 ở đây là giá trị mà mình muốn nút cuộn lên hiển thị
                        $('#btn-scroll-up').fadeIn();
                    } else {
                        $('#btn-scroll-up').fadeOut();
                    }
                });
            });

        </script>
    </body>

