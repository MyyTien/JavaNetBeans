<%-- 
    Document   : header
    Created on : May 9, 2023, 10:39:42 PM
    Author     : My Tien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>
        <!-- Offcanvas Menu Begin -->
        <div class="offcanvas-menu-overlay"></div>
        <div class="offcanvas-menu-wrapper">
            <div class="offcanvas__option">
                <div class="offcanvas__links">
                    <a href="#">Sign in</a>
                    <a href="#">FAQs</a>
                </div>
                <div class="offcanvas__top__hover">
                    <span>Usd <i class="arrow_carrot-down"></i></span>
                    <ul>
                        <li>USD</li>
                        <li>EUR</li>
                        <li>USD</li>
                    </ul>
                </div>
            </div>
            <div class="offcanvas__nav__option">
                <a href="#" class="search-switch"><img src="./public/img/icon/search.png" alt=""></a>
                <a href="#"><img src="./public/img/icon/heart.png" alt=""></a>
                <a href="#"><img src="./public/img/icon/cart.png" alt=""> <span>0</span></a>
                <div class="price">$0.00</div>
            </div>
            <div id="mobile-menu-wrap"></div>
            <div class="offcanvas__text">
                <p>Free shipping, 30-day return or refund guarantee.</p>
            </div>
        </div>
        <!-- Offcanvas Menu End -->

        <!-- Header Section Begin -->
        <header class="header">
            <div class="header__top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-7">
                            <div class="header__top__left">
                                <p>Free shipping, 30-day return or refund guarantee.</p>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-5">
                            <div class="header__top__right">
                                <div class="header__top__links">
                                    <c:if test="${sessionScope.user == null}">
                                        <button class="" type="button"> <a class="btn-dark" href="LoginServlet">login</a></button>
                                        <button class="" type="button"> <a class="btn-dark" href="RegisterServlet">Register</a></button>
                                    </c:if>
                                    <i class="">
                                        <c:if test="${sessionScope.user == null}"></c:if>
                                    </i>
                                    <c:if test="${sessionScope.user != null}">
                                        <a href="">${sessionScope.user.name}</a> 
                                    </c:if>
                                    <c:if test="${sessionScope.user.role == 'admin'}">
                                        <a class="btn-danger" href="DashBoardServlet">admin</a>
                                    </c:if>
                                    <c:if test="${sessionScope.user != null}">
                                        <a href="LogoutServlet">Logout</a>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-3">
                        <div class="header__logo">
                            <a href="./index.html"><img src="./public/img/logo.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li class="active"><a href="HomeServlet">Home</a></li>
                                <li><a href="ShopServlet">Shop</a></li>
                                <li><a href="#">Pages</a>
                                    <ul class="dropdown">
                                        <li><a href="CartServlet">Shopping Cart</a></li>
                                        <li><a href="./checkout.html">Check Out</a></li>
                                        <li><a href="./blog-details.html">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li><a href="BlogServlet">Blog</a></li>
                                <li><a href="./contact.html">Contacts</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-lg-3 col-md-3">
                        <div class="header__nav__option">
                            <form action="SearchServlet" method="get">
                                <div class="input-group">
                                    <input type="text"  name="search" class="form-control" placeholder="Search for products">
                                    <div class="input-group-append">
                                        <span class="input-group-text bg-transparent text-primary">
                                            <i class="fa fa-search"  href=""></i>
                                        </span>
                                    </div>
                                </div>
                            </form>
                            <a href="CartServlet"><img src="./public/img/icon/cart.png" alt=""> <span>0</span></a>
                            <div class="price">$0.00</div>
                        </div>
                    </div>
                </div>
                <div class="canvas__open"><i class="fa fa-bars"></i></div>
            </div>
        </header>
        <!-- Header Section End -->

        <!-- Hero Section Begin -->

    </body>
</html>
