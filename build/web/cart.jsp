<%-- 
    Document   : Cart
    Created on : Apr 19, 2023, 7:48:19 AM
    Author     : My Tien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <section class="shopping-cart spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="shopping__cart__table">
                            <table>
                                <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                        <th>Delete</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${cart}" var="orderDetailSession">
                                        <tr>
                                            <td class="product__cart__item">
                                                <div class="product__cart__item__pic">
                                                    <img src="${orderDetailSession.productImg}" alt="">
                                                </div>
                                                <div class="product__cart__item__text">
                                                    <h6>${orderDetailSession.productName}</h6>
                                                    <h5>$${orderDetailSession.productPrice}</h5>
                                                </div>
                                            </td>
                                            <td class="quantity__item">
                                                <div class="d-flex">
                                                    <div class="btn-num-product-up cl0 hov-btn3 trans-04 flex-c-m d-flex ">
                                                        <form action="CartServlet" method="post" class="quantity-item">
                                                            <input type="hidden" name="product_id" value="${orderDetailSession.productId}"/>
                                                            <input type="hidden" name="action" value="update"/>
                                                            <input type="hidden" name="quantity" value="-1"/>
                                                            <button class="btn btn-sm btn-primary btn-minus" >
                                                                <i class="fa fa-minus"></i>
                                                            </button>
                                                        </form>
                                                    </div>
                                                    <input type="text" class="form-control form-control-sm border-1 text-center w-1" value="${orderDetailSession.quantity}">
                                                    <div class="btn-num-product-up cl0 hov-btn3 trans-04 flex-c-m">
                                                        <form action="CartServlet" method="post" class="quantity-item">
                                                            <input type="hidden" name="product_id" value="${orderDetailSession.productId}"/>
                                                            <input type="hidden" name="action" value="update"/>
                                                            <input type="hidden" name="quantity" value="1"/>
                                                            <button class="btn btn-sm btn-primary btn-plus">
                                                                <i class="fa fa-plus"></i>
                                                            </button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="cart__close">${orderDetailSession.quantity * orderDetailSession.productPrice}</td>
                                            <td class="cart__close">
                                                <form action="CartServlet" method="post" value="delete">
                                                    <input type="hidden" name="product_id" value="${OrderDetailSession.productId}"/>
                                                    <input type="hidden" name="action" value="delete"/>
                                                    <button type="submit" class="fa fa-close"></button>
                                                </form>
                                            </td>
                                        </tr>

                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="continue__btn">
                                    <a href="#">Continue Shopping</a>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="continue__btn update__btn">
                                    <a href="#"><i class="fa fa-spinner"></i> Update cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="cart__discount">
                            <h6>Discount codes</h6>
                            <form action="#">
                                <input type="text" placeholder="Coupon code">
                                <button type="submit">Apply</button>
                            </form>
                        </div>
                        <div class="cart__total">
                            <h6>Cart total</h6>
                            <ul>
                                <li>Subtotal <span>$ 169.50</span></li>
                                <li>Total <span>$${total}</span></li>
                            </ul>
                            <a href="CheckoutServlet" class="primary-btn">Proceed to checkout</a>
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
    </body>
</html>
