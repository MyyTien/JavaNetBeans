<%-- 
    Document   : shop
    Created on : May 9, 2023, 8:41:29 PM
    Author     : My Tien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
        <section class="breadcrumb-option">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumb__text">
                            <h4>Shop</h4>
                            <div class="breadcrumb__links">
                                <a href="./index.html">Home</a>
                                <span>Shop</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="shop spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="shop__sidebar">
                            <div class="shop__sidebar__search">
                                <form action="#">
                                    <input type="text" placeholder="Search...">
                                    <button type="submit"><span class="icon_search"></span></button>
                                </form>
                            </div>
                            <div class="shop__sidebar__accordion">

                                <div class="accordion" id="accordionExample">
                                    <div class="card">
                                        <div class="card-heading">
                                            <a data-toggle="collapse" data-target="#collapseOne">Categories</a>
                                        </div>
                                        <div id="collapseOne" class="collapse show" data-parent="#accordionExample">

                                            <div class="card-body">
                                                <div class="shop__sidebar__categories">

                                                    <ul class="nice-scroll">
                                                        <c:forEach items="${categoryList}" var="category" >
                                                            <li><a href="CategoryServlet?category_id=${category.id}">${category.name} (20)</a></li>
                                                        </c:forEach>

                                                    </ul>

                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                    <div class="card">
                                        <div class="card-heading">
                                            <a data-toggle="collapse" data-target="#collapseFour">Size</a>
                                        </div>
                                        <div id="collapseFour" class="collapse show" data-parent="#accordionExample">
                                            <div class="card-body">
                                                <div class="shop__sidebar__size">
                                                    <label for="xs">xs
                                                        <input type="radio" id="xs">
                                                    </label>
                                                    <label for="sm">s
                                                        <input type="radio" id="sm">
                                                    </label>
                                                    <label for="md">m
                                                        <input type="radio" id="md">
                                                    </label>
                                                    <label for="xl">xl
                                                        <input type="radio" id="xl">
                                                    </label>
                                                    <label for="2xl">2xl
                                                        <input type="radio" id="2xl">
                                                    </label>
                                                    <label for="xxl">xxl
                                                        <input type="radio" id="xxl">
                                                    </label>
                                                    <label for="3xl">3xl
                                                        <input type="radio" id="3xl">
                                                    </label>
                                                    <label for="4xl">4xl
                                                        <input type="radio" id="4xl">
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-heading">
                                            <a data-toggle="collapse" data-target="#collapseFive">Colors</a>
                                        </div>
                                        <div id="collapseFive" class="collapse show" data-parent="#accordionExample">
                                            <div class="card-body">
                                                <div class="shop__sidebar__color">
                                                    <label class="c-1" for="sp-1">
                                                        <input type="radio" id="sp-1">
                                                    </label>
                                                    <label class="c-2" for="sp-2">
                                                        <input type="radio" id="sp-2">
                                                    </label>
                                                    <label class="c-3" for="sp-3">
                                                        <input type="radio" id="sp-3">
                                                    </label>
                                                    <label class="c-4" for="sp-4">
                                                        <input type="radio" id="sp-4">
                                                    </label>
                                                    <label class="c-5" for="sp-5">
                                                        <input type="radio" id="sp-5">
                                                    </label>
                                                    <label class="c-6" for="sp-6">
                                                        <input type="radio" id="sp-6">
                                                    </label>
                                                    <label class="c-7" for="sp-7">
                                                        <input type="radio" id="sp-7">
                                                    </label>
                                                    <label class="c-8" for="sp-8">
                                                        <input type="radio" id="sp-8">
                                                    </label>
                                                    <label class="c-9" for="sp-9">
                                                        <input type="radio" id="sp-9">
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-heading">
                                            <a data-toggle="collapse" data-target="#collapseSix">Tags</a>
                                        </div>
                                        <div id="collapseSix" class="collapse show" data-parent="#accordionExample">
                                            <div class="card-body">
                                                <div class="shop__sidebar__tags">
                                                    <a href="#">Product</a>
                                                    <a href="#">Bags</a>
                                                    <a href="#">Shoes</a>
                                                    <a href="#">Fashio</a>
                                                    <a href="#">Clothing</a>
                                                    <a href="#">Hats</a>
                                                    <a href="#">Accessories</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="shop__product__option">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="shop__product__option__left">
                                        <p>Showing 1–12 of 126 results</p>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="shop__product__option__right">
                                        <p>Sort by Price:</p>
                                        <select>
                                            <option value="">Low To High</option>
                                            <option value="">$0 - $55</option>
                                            <option value="">$55 - $100</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <c:forEach items="${productList}" var="product">

                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="product__item">

                                        <div class="product__item__pic set-bg" data-setbg="${product.img}">
                                            <ul class="product__hover">
                                                <li><a href="#"><img src="./public/img/icon/heart.png" alt=""></a></li>
                                                <li><a href="ProductDetailServlet?product_id=${product.id}"><img src="./public/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                                </li>
                                                <li><a href="#"><img src="./public/img/icon/search.png" alt=""></a></li>
                                            </ul>
                                        </div>
                                        <div class="product__item__text">
                                            <h6>${product.name}</h6>
                                            <form action="CartServlet" method="post">
                                                <input type="hidden" name="product_id" value="${product.id}"/>
                                                <input type="hidden" name="quantity" value="1"/>
                                                <input type="hidden" name="action" value="create"/>
                                                <button type="submit" class="add-cart">Add to cart</button>
                                            </form>
                                            <div class="rating">
                                                <i class="fa fa-star-o"></i>
                                                <i class="fa fa-star-o"></i>
                                                <i class="fa fa-star-o"></i>
                                                <i class="fa fa-star-o"></i>
                                                <i class="fa fa-star-o"></i>
                                            </div>
                                            <h5>$67.24</h5>
                                            <div class="product__color__select">
                                                <label for="pc-4">
                                                    <input type="radio" id="pc-4">
                                                </label>
                                                <label class="active black" for="pc-5">
                                                    <input type="radio" id="pc-5">
                                                </label>
                                                <label class="grey" for="pc-6">
                                                    <input type="radio" id="pc-6">
                                                </label>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="product__pagination">
                                    <a class="active" href="#">1</a>
                                    <a href="#">2</a>
                                    <a href="#">3</a>
                                    <span>...</span>
                                    <a href="#">21</a>
                                </div>
                            </div>
                        </div>
                    </div>
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
    </script>

</body>
</html>
