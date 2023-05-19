<%-- 
    Document   : search
    Created on : May 17, 2023, 11:27:51 PM
    Author     : My Tien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
              rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="./public/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="./public/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="./public/css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="./public/css/magnific-popup.css" type="text/css">
        <link rel="stylesheet" href="./public/css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="./public/css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="./public/css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="./public/css/style.css" type="text/css">
    </head>
    <body>
        <%@include file="./inc/header.jsp" %>
        <section class="product spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <ul class="filter__controls">
                            <li class="active" data-filter="*">Best Sellers</li>
                            <li data-filter=".new-arrivals">New Arrivals</li>
                            <li data-filter=".hot-sales">Hot Sales</li>
                        </ul>
                    </div>
                </div>
                <div class="row product__filter">
                    <c:forEach items="${productList}" var="product">
                        <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="${product.img}">
                                    <span class="label">New</span>
                                    <ul class="product__hover">
                                        <li><a href="#"><img src="./public/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="ProductDetailServlet?product_id=${product.id}"><img src="./public/img/icon/compare.png" alt=""> <span>Compare</span></a></li>
                                        <li><a href="#"><img src="./public/img/icon/search.png" alt=""></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6>${product.name}</h6>

                                    <a href="#" class="add-cart">+ Add To Cart</a>
                                    <div class="rating">
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <h5>$${product.price}</h5>
                                    <div class="product__color__select">
                                        <label for="pc-1">
                                            <input type="radio" id="pc-1">
                                        </label>
                                        <label class="active black" for="pc-2">
                                            <input type="radio" id="pc-2">
                                        </label>
                                        <label class="grey" for="pc-3">
                                            <input type="radio" id="pc-3">
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>
        <%@include file="./inc/footer.jsp" %>

        <script src="./public/js/jquery-3.3.1.min.js"></script>
        <script src="./public/js/bootstrap.min.js"></script>
        <script src="./public/js/jquery.nice-select.min.js"></script>
        <script src="./public/js/jquery.nicescroll.min.js"></script>
        <script src="./public/js/jquery.magnific-popup.min.js"></script>
        <script src="./public/js/jquery.countdown.min.js"></script>
        <script src="./public/js/jquery.slicknav.js"></script>
        <script src="./public/js/mixitup.min.js"></script>
        <script src="./public/js/owl.carousel.min.js"></script>
        <script src="./public/js/main.js"></script>
    </body>
</html>
