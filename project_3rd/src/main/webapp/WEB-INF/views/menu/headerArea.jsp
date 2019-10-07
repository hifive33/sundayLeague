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
                        ${sessionScope.loginId == null ? '<a href="login"><i class="fa fa-sign-in"></i>ログイン</a><a href="registration"><i class="fa fa-user-plus"></i>はじめてご利用の方（新規会員登録）</a>' : '<a href="myaccount"><i class="fa fa-user"></i>マイアカウント</a><a href="logout"><i class="fa fa-sign-out"></i>ログアウト</a>'}
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
                                        <a href="about">サンデーリーグについて</a>
                                    </li>
                                    <li>
                                        <a href="gallery">ギャラリー</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <div class="kick-site-logo">
                            <div class="responsive-menu-2"></div>
                            <a href="match" class="kick-site-logo">
                                <img src="resources/img/logo-match.png" alt="site logo" />
                            </a>
                            <div class="responsive-menu-1"></div>
                        </div>
                        <div class="mainmenu-left second-menu">
                            <nav>
                                <ul id="navigation_menu_2">
                                	<li>
                                        <a href="myteam">マイチーム</a>
                                        <c:if test="${sessionScope.loginId != null}">
											<ul>
												<!-- 팀 없을때 -->
	                                            <c:if test="${sessionScope.team_name == null}">
													<li>
														<a href='creation'>チームを作る</a>
													</li>
												</c:if>
	                                            <!-- 팀 있을때 -->
	                                            <c:if test="${sessionScope.team_name != null}">
		                                            <li><a href="myteam">マイチーム詳細</a></li>
		                                            <li><a href="calendar">スケジュール</a></li>
		                                            <li><a href="fixture">試合</a></li>
		                                            
	                                            </c:if>
	                                            <!-- 운영진 전용 -->
	                                            <c:if test="${sessionScope.authority > 1}">
		                                            <li><a href="match">試合申請</a></li>
	                                            </c:if>
	                                            <!-- 감독 전용 -->
	                                        </ul>
                                        </c:if>
                                    </li>
                                    <li>
                                        <a href="teams">チーム</a>
                                    </li>
                                    <li>
                                    	<a href="faq">よくある質問</a>
                                    </li>
                                    <li>
                                        <a href="contact">コンタクト</a>
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