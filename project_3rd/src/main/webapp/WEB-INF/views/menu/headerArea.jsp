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
                        <!-- <a href="cart">
                            <i class="fa fa-shopping-cart"></i>
                            cart
                        </a> -->
                        <a href="myaccount">
                            <i class="fa fa-user"></i>
                            My Account
                        </a>
                        ${sessionScope.loginId == null ? '<a href="login"><i class="fa fa-sign-in"></i>login</a><a href="registration"><i class="fa fa-user-plus"></i>register</a>' : '<a href="logout"><i class="fa fa-sign-out"></i>logout</a>'}
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
                                        <a href="<c:url value='/' />">ホーム</a>
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
                                        <a href="gallery">gallery</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <div class="kick-site-logo">
                            <div class="responsive-menu-2"></div>
                            <a href="match" class="kick-site-logo">
                                <img src="resources/img/logo.png" alt="site logo" />
                            </a>
                            <div class="responsive-menu-1"></div>
                        </div>
                        <div class="mainmenu-left second-menu">
                            <nav>
                                <ul id="navigation_menu_2">
                                	<li>
                                        <a href="myteam">My Team</a>
										<ul>
											<!-- 팀 없을때 -->
                                            <c:if test="${sessionScope.loginId != null && sessionScope.team_name == null}">
												<li>
													<a href='creation'>Create Team</a>
												</li>
											</c:if>
                                            <!-- 팀 있을때 -->
                                            <c:if test="${sessionScope.loginId != null && sessionScope.team_name != null}">
	                                            <li><a href="myteam">스텟</a></li>
	                                            <li><a href="#">일정</a></li>
                                            </c:if>
                                            <!-- 운영진 전용 -->
                                            <c:if test="${sessionScope.authority > 0}">
	                                            <li><a href="#">매칭</a></li>
	                                            <li><a href="#">구단스텟</a></li>
                                            </c:if>
                                            <!-- 감독 전용 -->
                                            <c:if test="${sessionScope.authority == 2}">
                                            	<li><a href="#">운영진임명</a></li>
                                            </c:if>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="teams">Teams</a>
                                    </li>
                                    <li>
                                    	<a href="faq">FAQ</a>
                                    </li>
                                    <li>
                                        <a href="contact">contact</a>
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