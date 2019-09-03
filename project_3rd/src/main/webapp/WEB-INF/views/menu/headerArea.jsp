<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<section class="kick-header-area">
    <div class="header-top-area">
        <div class="header-top-overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-sm-5">
                	<!-- 언어선택 -->
                    <!-- <div class="header-top-left">
                        <div class="dropdown">
                            <button class="btn-dropdown dropdown-toggle" type="button" id="dropdowncur" data-toggle="dropdown" aria-haspopup="true">
                            USD
                                <i class="fa fa-angle-down"></i>
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdowncur">
                                <li>USD</li>
                                <li>EURO</li>
                                <li>BDT</li>
                            </ul>
                        </div>
                        <div class="dropdown">
                            <button class="btn-dropdown dropdown-toggle" type="button" id="dropdownlang" data-toggle="dropdown" aria-haspopup="true">
                            English
                                <i class="fa fa-angle-down"></i>
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownlang">
                                <li>English</li>
                                <li>French</li>
                                <li>Arabic</li>
                                <li>Chinese</li>
                            </ul>
                        </div>
                    </div> -->
                </div>
                <div class="col-sm-7">
                    <div class="header-top-right">
                        <a href="cart">
                            <i class="fa fa-shopping-cart"></i>
                            cart
                        </a>
                        <a href="#">
                            <i class="fa fa-user"></i>
                            My Account
                        </a>
                        <a href="login">
                            <i class="fa fa-sign-in"></i>
                            login
                        </a>
                        <a href="registration">
                            <i class="fa fa-user-plus"></i>
                            register
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-mainmenu-area">
        <div class="container">
            <div class="kick-desktop-menu">
                <div class="row">
                    <div class="col-md-12">
                        <div class="mainmenu-left pull-left">
                            <nav>
                                <ul id="navigation_menu">
                                    <li>
                                        <a href="<c:url value='/' />">Home</a>
                                    </li>
                                    <li>
                                        <a href="about">about</a>
                                    </li>
                                    <li>
                                        <a href="fixture">fixture</a>
                                        <ul>
                                            <li><a href="fixture">Fixtures</a></li><li><a href="singlefixture">Fixtures details</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="player">Player</a>
                                        <ul>
                                            <li><a href="player">players</a></li><li><a href="playerdetails">player details</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="gallery">gallery</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <div class="kick-site-logo">
                            <div class="responsive-menu-2"></div>
                            <a href="<c:url value='/' />" class="kick-site-logo">
                                <img src="resources/img/logo.png" alt="site logo" />
                            </a>
                            <div class="responsive-menu-1"></div>
                        </div>
                        <div class="mainmenu-left second-menu">
                            <nav>
                                <ul id="navigation_menu_2">
                                    <li>
                                        <a href="tickets">all tickets</a>
                                        <ul>
                                            <li><a href="tickets">tickets</a></li>
                                            <li><a href="buytickets">tickets details</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="shop">shop</a>
                                        <ul>
                                            <li><a href="shop">shop</a></li>
                                            <li><a href="singleshop">single shop</a></li>
                                            <li><a href="cart">cart page</a></li>
                                            <li><a href="checkout">checkout page</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="bloggrid">blog</a>
                                        <ul>
                                            <li><a href="bloggrid">blog grid</a></li>
                                            <li><a href="blogleft">blog left sidebar</a></li>
                                            <li><a href="blogright">blog right sidebar</a></li>
                                            <li><a href="singleblog">single blog</a></li>
                                        </ul>
                                    </li>
                                    <!-- 선택된 css -->
                                    <!-- <li class="current-page-item"> -->
                                    <li>
                                        <a>page</a>
                                        <ul>
                                            <li>
                                                <a href="page404">404 page</a>
                                            </li>
                                            <li>
                                                <a href="faq">FAQs Page</a>
                                            </li>
                                            <li>
                                                <a href="login">login</a>
                                            </li>
                                            <li>
                                                <a href="registration">registration
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="contact.html">contact</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>