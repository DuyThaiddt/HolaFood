<%-- 
    Document   : aboutus
    Created on : Mar 14, 2023, 11:21:36 PM
    Author     : Duy Thai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>About Us</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="About Us" name="keywords">
        <meta content="About Us" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
              rel="stylesheet">

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <c:set var="users" value="${requestScope.users}"/>
        <c:if test="${not empty users.name}">
            <%@include file="logoutheader.jsp" %>
        </c:if>
        <c:if test="${empty users.name}">
            <%@include file="loginheader.jsp" %>
        </c:if>


        <!-- Navbar Start -->
        <div class="container-fluid">
            <div class="row border-top px-xl-5">
                <div class="col-lg-3 d-none d-lg-block">
                    <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100"
                       data-toggle="collapse" href="#navbar-vertical"
                       style="height: 65px; margin-top: -1px; padding: 0 30px;">
                        <h6 class="m-0">Categories</h6>
                        <i class="fa fa-angle-down text-dark"></i>
                    </a>
                    <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0 bg-light"
                         id="navbar-vertical" style="width: calc(100% - 30px); z-index: 1;">
                        <div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
                            <a href="" class="nav-item nav-link">Cơm hộp</a>
                            <a href="" class="nav-item nav-link">Đồ ăn khác</a>
                            <a href="" class="nav-item nav-link">Đồ ăn vặt</a>
                            <a href="" class="nav-item nav-link">Đồ uống</a>
                            <a href="" class="nav-item nav-link">Tráng miệng</a>
                            <a href="" class="nav-item nav-link">Homemade</a>
                            <a href="" class="nav-item nav-link">Vỉa hè</a>
                            <a href="" class="nav-item nav-link">Pizza</a>
                            <a href="" class="nav-item nav-link">Burger</a>
                        </div>
                    </nav>
                </div>
                <div class="col-lg-9">
                    <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                        <a href="" class="text-decoration-none d-block d-lg-none">
                            <h1 class="m-0 display-5 font-weight-semi-bold"><span
                                    class="text-primary font-weight-bold border px-3 mr-1">Hola</span>Food</h1>
                        </a>
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav mr-auto py-0">
                                <a href="home" class="nav-item nav-link">Home</a>
                                <a href="aboutus" class="nav-item nav-link active">About Us</a>
                                <a href="discover" class="nav-item nav-link">Discover</a>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Available</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a href="restaurants" class="dropdown-item">Shopping Cart</a>
                                        <a href="dishes" class="dropdown-item">Checkout</a>
                                    </div>
                                </div>
                                <a href="contact" class="nav-item nav-link">Contact</a>
                            </div>
                            <%-- <div class="navbar-nav ml-auto py-0">
                                <a href="login.jsp" class="loginButton nav-item nav-link">Sign up/Login</a>

                            </div> --%>
                            
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Navbar End -->


        <!-- Page Header Start -->
        <div class="container-fluid bg-secondary mb-5">
            <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
                <h1 class="font-weight-semi-bold text-uppercase mb-3 aboutusheading">ABOUT US</h1>
                <div class="d-inline-flex">


                </div><br>
                <div class="d-inline-flex aboutustext">
                    <p class="m-0">Welcome to HolaFood, your go-to destination for ordering delicious food from local
                        restaurants! We are passionate about food and dedicated to connecting hungry customers with the best
                        local eateries.</p>
                </div>
                <div class="d-inline-flex aboutustext">
                    <p class="m-0">
                        Our mission is simple: to provide a fast, easy, and convenient way for customers to order food
                        online. We believe that everyone deserves access to great food, and that's why we work hard to bring
                        you a wide range of options from the best local restaurants.</p>
                </div>
                <div class="d-inline-flex aboutustext">
                    <p class="m-0">We understand that everyone has unique tastes and preferences when it comes to food,
                        which is why we
                        offer a diverse range of cuisines and menus to choose from. Whether you're in the mood for Italian,
                        Chinese, Indian, or anything in between, we've got you covered.</p>
                </div>
                <div class="d-inline-flex aboutustext">
                    <p class="m-0">Our team is committed to providing excellent customer service, and we're always here to
                        help with
                        any questions or concerns you may have. We also strive to ensure that your food arrives fresh, hot,
                        and on time.</p>
                </div>
                <div class="d-inline-flex aboutustext">
                    <p class="m-0">At HolaFood, we believe in supporting our local community and small businesses.
                        That's why we
                        partner with local restaurants to bring you the best food around, while also helping to boost the
                        local economy.</p>
                </div>
                <div class="d-inline-flex aboutustext">
                    <p class="m-0">Thank you for choosing HolaFood for your food ordering needs. We look forward to
                        serving you
                        and helping you discover new, delicious restaurants in your area!</p>
                </div>
            </div>
        </div>
        <!-- Page Header End -->


        <!-- Shop End -->



        <!-- Footer Start -->
        <div class="container-fluid bg-secondary text-dark mt-5 pt-5">
            <div class="row px-xl-5 pt-5">
                <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
                    <a href="" class="text-decoration-none">
                        <h1 class="mb-4 display-5 font-weight-semi-bold"><span
                                class="text-primary font-weight-bold border border-white px-3 mr-1">Hola</span>Food</h1>
                    </a>
                    <p>Bring the taste of Hola to your door</p>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>Đại học FPT, Thạch Hoà, Thạch Thất, Hà Nội</p>
                    <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>dduythai.ddt@gmail.com</p>
                    <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>(+84) 79 6428 094</p>
                </div>
                <div class="col-lg-8 col-md-12">
                    <div class="row">
                        <div class="col-md-4 mb-5">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4180.411450813989!2d105.55265584322431!3d21.01973362997215!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345b22d5cab2bd%3A0xb2ecc434d81c1de0!2sHelios%20Billard%20Cafe!5e0!3m2!1svi!2s!4v1679423221682!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                        <div class="col-md-4 mb-5">
                            
                        </div>
                        
                    </div>
                </div>
            </div>
            <div class="row border-top border-light mx-xl-5 py-4">
                <div class="col-md-6 px-xl-0">
                    <p class="mb-md-0 text-center text-md-left text-dark">
                        &copy; <a class="text-dark font-weight-semi-bold" href="#">HolaFood</a>. All Rights Reserved.
                        Designed
                        by
                        Distributed By <a href="https://www.facebook.com/duythai.ddt/" target="_blank">Đào Duy Thái</a>
                    </p>
                </div>
                <div class="col-md-6 px-xl-0 text-center text-md-right">
                    <img class="img-fluid" src="img/payments.png" alt="">
                </div>
            </div>
        </div>

        <!-- Back to Top -->
        <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Contact Javascript File -->
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>
</html>
