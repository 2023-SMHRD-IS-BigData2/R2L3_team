<%@page import="model.ToyDTO"%>
<%@page import="model.ToyDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>메인</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.png" />
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/linearicons-v1.0.0/icon-font.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/MagnificPopup/magnific-popup.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<!--===============================================================================================-->

</head>

<body class="animsition">
<%
	int p_num = Integer.parseInt(request.getParameter("p_num")); 
	String address = new ToyDAO().getToyAddress(p_num);
	ToyDTO toy = new ToyDAO().getToyInfo(p_num);
%>
	<!-- Header -->
	<header class="header-v4">
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- Topbar -->
			<div class="top-bar">
				<div class="content-topbar flex-sb-m h-full container">
					<div class="left-top-bar">
						More kids, More joy
					</div>

					<div class="right-top-bar flex-w h-full">

						<!-- 로그인 되면 출력 -->
						
						<a href="#memberSet" class="flex-c-m trans-04 p-lr-25 js-show-modal1" style="font-size: small;">
							회원정보 수정
						</a>
						<a href="#" class="flex-c-m trans-04 p-lr-25" style="font-size: small;">
							로그아웃
						</a>
						<!-- 로그아웃 상태 -->
						<a href="#loginPage" class="flex-c-m trans-04 p-lr-25 js-show-modal1" style="font-size: small;">
							로그인
						</a>
					</div>
				</div>
			</div>

			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop container">

					<!-- Logo desktop -->
					<a href="#" class="logo">
						<img src="images/icons/logo-01.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li style="margin: 40px;">
								<a href="main.jsp" style="font-size: large;font-weight: 600;">메인</a>
							</li>

							<li style="margin: 40px;">
								<a href="toy_list.jsp" style="font-size: large;font-weight: 600;">동네 장난감</a>
							</li>

							<li class="label1" style="margin: 40px;" data-label1="hot">
								<a href="premium.jsp" style="font-size: large;font-weight: 600;">프리미엄</a>
							</li>

							<li style="margin: 40px;">
								<a href="trade_list.jsp" style="font-size: large;font-weight: 600;">거래 목록</a>
								<ul class="sub-menu">
									<li><a href="#">내 장난감</a></li>
									<li><a href="#">빌린 장난감</a></li>
								</ul>
							</li>
							<li style="margin: 30px;">
                                <a href="board_list.jsp" style="font-size: large;font-weight: 600;">게시판</a>
                            </li>

							<li>
								<a href="toy_join.jsp" style="font-size: large;font-weight: 600;">장난감 등록</a>
							</li>
						</ul>
					</div>

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m">
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
							<i class="zmdi zmdi-search"></i>
						</div>

						
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart"
							data-notify="7">
						<!--<i class="zmdi zmdi-shopping-cart"></i>-->
						<img src="images/icons/종종.png" alt="" style="height: 20px;">

						</div>

						<a href="message.jsp"
							class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti"
							data-notify="1">
							<img src="images/icons/말풍선 .png" alt="" style="height: 20px;">
						</a>
					</div>
				</nav>
			</div>
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->
			<div class="logo-mobile">
				<a href="main.jsp"><img src="images/icons/logo-01.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m m-r-15">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>

				<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart"
							data-notify="7">
						<!--<i class="zmdi zmdi-shopping-cart"></i>-->
						<img src="images/icons/종종.png" alt="" style="height: 20px;">

						</div>

				<a href="message.jsp"
							class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti"
							data-notify="1">
							<img src="images/icons/말풍선 .png" alt="" style="height: 20px;">
						</a>
			</div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
			</div>
		</div>


		<!-- Menu Mobile -->
		<div class="menu-mobile">
			<ul class="topbar-mobile">
				<li>
					<div class="left-top-bar">
						More kids, More joy
					</div>
				</li>

				<li>
					<div class="right-top-bar flex-w h-full">
						<!-- 로그인 되면 출력 -->
						<a href="#memberSet" class="flex-c-m trans-04 p-lr-25 js-show-modal1" style="font-size: small;">
							회원정보 수정
						</a>
						<a href="#" class="flex-c-m trans-04 p-lr-25" style="font-size: small;">
							로그아웃
						</a>
						<!-- 로그아웃 상태 -->
						<a href="#loginPage" class="flex-c-m trans-04 p-lr-25 js-show-modal1" style="font-size: small;">
							로그인
						</a>
					</div>
				</li>
			</ul>

			<ul class="main-menu-m" style = "background-color: #fff;">
				<li style="margin: 30px;"><a href="main.jsp"
					style="font-size: large; font-weight: 600; color: black; ">메인</a></li>

				<li style="margin: 30px;"><a href="toy_list.jsp"
					style="font-size: large; font-weight: 600; color: black;">동네 장난감</a></li>

				<li class="label1" style="margin: 30px;" data-label1="hot"><a
					href="premium.jsp" style="font-size: large; font-weight: 600; color: black;">프리미엄</a>
				</li>

				<li style="margin: 30px;"><a href="trade_list.jsp"
					style="font-size: large; font-weight: 600; color: black;">거래 목록</a>
					<ul class="sub-menu">
						<li><a href="#">내 장난감</a></li>
						<li><a href="#">빌린 장난감</a></li>
					</ul></li>

				<li style="margin: 30px;"><a href="toy_join.jsp"
					style="font-size: large; font-weight: 600; color: black;">게시판</a></li>
				<li style="margin: 30px;"><a href="toy_join.jsp"
					style="font-size: large; font-weight: 600; color: black;">장난감 등록</a></li>
			</ul>
		</div>

		<!-- Modal Search -->
		<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="images/icons/icon-close2.png" alt="CLOSE">
				</button>

				<!-- 검색 기능 -->
				<form action="#" class="wrap-search-header flex-w p-l-15">
					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
					<input class="plh3" type="text" name="search" placeholder="Search...">
				</form>
			</div>
		</div>
	</header>

	<!-- 오른쪽 상단 Cart 공간 -->
	<div class="wrap-header-cart js-panel-cart">
		<div class="s-full js-hide-cart"></div>

		<div class="header-cart flex-col-l p-l-65 p-r-25">
			<div class="header-cart-title flex-w flex-sb-m p-b-8">
				<span class="mtext-103 cl2">
					알림
				</span>
				<!-- 닫기 버튼 -->
				<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
					<i class="zmdi zmdi-close"></i>
				</div>
			</div>

			<div class="header-cart-content flex-w js-pscroll">
				<ul class="header-cart-wrapitem w-full">
					<!-- 상품 리스트 -->
					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<!-- 상품 이미지 -->
							<img src="images/item-cart-01.jpg" alt="IMG">
						</div>
						<div class="header-cart-item-txt p-t-8">
							<!-- 상품 이름 -->
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								상품명
							</a>
							<!-- 상품 가격 -->
							<span class="header-cart-item-info">
								상품 가격
							</span>
						</div>
					</li>

					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<!-- 상품 이미지 -->
							<img src="images/item-cart-02.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<!-- 상품 이름 -->
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								name
							</a>
							<!-- 상품 개수 & 가격 -->

							<span class="header-cart-item-info">
								price
							</span>
						</div>
					</li>

				</ul>

				
				<div class="w-full">
					<!-- 구매 시 이동 버튼 -->
					<div class="header-cart-buttons flex-w w-full">
						<a href="#"
							class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
							채팅하기
						</a>

						<a href="#" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
							거래하기
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>


<!-- Product Detail -->
	<section class="sec-product-detail bg0 p-t-65 p-b-60">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-7 p-b-30">
					<div class="p-l-25 p-r-30 p-lr-0-lg">
						<div class="wrap-slick3 flex-sb flex-w">
							<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>
							<div class="slick3 gallery-lb">
								<div class="item-slick3">
									<div class="wrap-pic-w pos-relative">
										<img src="images/crolling/<%=toy.getImage_file()%>" alt="IMG-PRODUCT">

										<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
											href="images/crolling/<%=toy.getImage_file()%>">
											<i class="fa fa-expand"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-5 p-b-30">
					<div class="p-r-50 p-t-5 p-lr-0-lg">
						<!-- 상품명 -->
						<h4 class="mtext-105 cl2 js-name-detail p-b-14">
							<%=toy.getP_name()%>
						</h4>
						<!-- 가격 -->
						<span class="mtext-106 cl2">
							1일 : <%=toy.getRent_price()%>원
						</span>
						<!-- 상품 설명 -->
						<p class="stext-102 cl3 p-t-23">
							<%=toy.getP_contenct()%>
						</p>

						<!--  -->
						<div class="p-t-33">
							<div class="flex-w flex-r-m p-b-10">
								<div class="size-203 flex-c-m respon6">
									대여시작 일시
								</div>
								<div class="size-204 respon6-next rs1-select2 bor8 bg0">
									<input type="datetime-local">
								</div>
							</div>

							<div class="flex-w flex-r-m p-b-10">
								<div class="size-203 flex-c-m respon6">
									대여끝날 일시
								</div>
								<div class="size-204 respon6-next rs1-select2 bor8 bg0">
									<input type="datetime-local">
								</div>
							</div>
						</div>
						<br>

						<div class="flex-w flex-r-m p-b-10">
							
							<span class="stext-107 cl6 p-lr-25" style="padding-right: 80px;">
								<button
									class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail"
									style="min-width: 100px;height: 40px;">
									온라인 결제
								</button></span>
							<span class="stext-107 cl6 p-lr-25" style="padding-right: 80px;">
								<button
									class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail"
									style="min-width: 100px;height: 40px;">
									결제 확인
								</button>
							</span>
						</div><br>

					</div>

					


			   
				<div class="bor10 m-t-50 p-t-43 p-b-40">
					<!-- Tab01 -->
					<div class="tab01">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<!-- 상품 설명 -->
							<li class="nav-item p-b-10">
								<a class="nav-link active" data-toggle="tab" href="#description"
									role="tab">Description</a>
							</li>
							<!-- 상품 정보 -->
							<li class="nav-item p-b-10">
								<a class="nav-link" data-toggle="tab" href="#information" role="tab">Additional
									information</a>
							</li>
							<!-- 상품 리뷰 -->
							<li class="nav-item p-b-10">
								<a class="nav-link" data-toggle="tab" href="#reviews" role="tab">Reviews (1)</a>
							</li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content p-t-43">
							<!-- 상품 설명 -->
							<div class="tab-pane fade show active" id="description" role="tabpanel">
								<div class="how-pos2 p-lr-15-md">
									<p class="stext-102 cl6">
										Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc
										fringilla
										sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in
										hendrerit
										lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla
										lectus
										enim,
										cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat
										interdum
										in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean
										tempor
										sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim,
										nunc
										nec
										laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in
										ipsum.
										Cras
										in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas
										nunc.
									</p>
								</div>
							</div>

							<!-- 상품 정보 -->
							<div class="tab-pane fade" id="information" role="tabpanel">
								<div class="row">
									<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
										<ul class="p-lr-28 p-lr-15-sm">
											<li class="flex-w flex-t p-b-7">
												<span class="stext-102 cl3 size-205">
													Weight
												</span>

												<span class="stext-102 cl6 size-206">
													0.79 kg
												</span>
											</li>

											<li class="flex-w flex-t p-b-7">
												<span class="stext-102 cl3 size-205">
													Dimensions
												</span>

												<span class="stext-102 cl6 size-206">
													110 x 33 x 100 cm
												</span>
											</li>

											<li class="flex-w flex-t p-b-7">
												<span class="stext-102 cl3 size-205">
													Materials
												</span>

												<span class="stext-102 cl6 size-206">
													60% cotton
												</span>
											</li>

											<li class="flex-w flex-t p-b-7">
												<span class="stext-102 cl3 size-205">
													Color
												</span>

												<span class="stext-102 cl6 size-206">
													Black, Blue, Grey, Green, Red, White
												</span>
											</li>

											<li class="flex-w flex-t p-b-7">
												<span class="stext-102 cl3 size-205">
													Size
												</span>

												<span class="stext-102 cl6 size-206">
													XL, L, M, S
												</span>
											</li>
										</ul>
									</div>
								</div>
							</div>

							<!-- 리뷰 -->
							<div class="tab-pane fade" id="reviews" role="tabpanel">
								<div class="row">
									<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
										<div class="p-b-30 m-lr-15-sm">
											<!-- Review -->
											<div class="flex-w flex-t p-b-68">
												<div class="wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6">
													<img src="images/avatar-01.jpg" alt="AVATAR">
												</div>

												<div class="size-207">
													<div class="flex-w flex-sb-m p-b-17">
														<!-- 사용자 이름 -->
														<span class="mtext-107 cl2 p-r-20">
															Ariana Grande
														</span>

														<span class="fs-18 cl11">
															<i class="zmdi zmdi-star"></i>
															<i class="zmdi zmdi-star"></i>
															<i class="zmdi zmdi-star"></i>
															<i class="zmdi zmdi-star"></i>
															<i class="zmdi zmdi-star-half"></i>
														</span>
													</div>

													<p class="stext-102 cl6">
														Quod autem in homine praestantissimum atque optimum est, id
														deseruit. Apud ceteros autem philosophos
													</p>
												</div>
											</div>

											<!-- Add review -->
											<form class="w-full">
												<h5 class="mtext-108 cl2 p-b-7">
													Add a review
												</h5>

												<p class="stext-102 cl6">
													Your email address will not be published. Required fields are
													marked
													*
												</p>

												<div class="flex-w flex-m p-t-50 p-b-23">
													<span class="stext-102 cl3 m-r-16">
														Your Rating
													</span>

													<span class="wrap-rating fs-18 cl11 pointer">
														<i class="item-rating pointer zmdi zmdi-star-outline"></i>
														<i class="item-rating pointer zmdi zmdi-star-outline"></i>
														<i class="item-rating pointer zmdi zmdi-star-outline"></i>
														<i class="item-rating pointer zmdi zmdi-star-outline"></i>
														<i class="item-rating pointer zmdi zmdi-star-outline"></i>
														<input class="dis-none" type="number" name="rating">
													</span>
												</div>

												<div class="row p-b-25">
													<div class="col-12 p-b-5">
														<label class="stext-102 cl3" for="review">Your
															review</label>
														<textarea class="size-110 bor8 stext-102 cl2 p-lr-20 p-tb-10"
															id="review" name="review"></textarea>
													</div>

													<div class="col-sm-6 p-b-5">
														<label class="stext-102 cl3" for="name">Name</label>
														<input class="size-111 bor8 stext-102 cl2 p-lr-20" id="name"
															type="text" name="name">
													</div>

													<div class="col-sm-6 p-b-5">
														<label class="stext-102 cl3" for="email">Email</label>
														<input class="size-111 bor8 stext-102 cl2 p-lr-20" id="email"
															type="text" name="email">
													</div>
												</div>

												<button
													class="flex-c-m stext-101 cl0 size-112 bg7 bor11 hov-btn3 p-lr-15 trans-04 m-b-10">
													Submit
												</button>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer -->
	<footer class="bg3 p-t-75 p-b-32">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-3 p-b-50" style="margin-left: 150px;">
					<a href="agreement.jsp">
						<h4 class="stext-301 cl0 p-b-30">이용약관</h4>
					</a>
				</div>
				<div class="col-sm-6 col-lg-3 p-b-50" style="margin-left: 150px;">
					<a href="#">
						<h4 class="stext-301 cl0 p-b-30">R2L3</h4>
					</a>
				</div>
				<div class="col-sm-6 col-lg-3 p-b-50" style="margin-left: 150px;">
					<a href="#">
						<h4 class="stext-301 cl0 p-b-30">신고</h4>
						<p class="stext-107 cl7 size-201">
							<b>신고사항</b> <br>
							전화번호 : 062-000-0000<br> 
							Email : aaa@naver.com
						</p>
					</a>
				</div>
			
			</div>

			<div class="p-t-40">
				<p class="stext-107 cl6 txt-center">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | Made with <i class="fa fa-heart-o"
						aria-hidden="true"></i> by <a href="https://colorlib.com"
						target="_blank">Colorlib</a> &amp; distributed by <a
						href="https://themewagon.com" target="_blank">ThemeWagon</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

				</p>
			</div>
		</div>
	</footer>


<!-- Back to top -->
<div class="btn-back-to-top" id="myBtn">
	<span class="symbol-btn-back-to-top">
		<i class="zmdi zmdi-chevron-up"></i>
	</span>
</div>

<!-- Modal1 : 회원정보 수정(로그인 했을 때)-->
<div class="wrap-modal1 js-modal1 p-t-60 p-b-20" id="memberSet">
	<div class="overlay-modal1 js-hide-modal1"></div>

	<div class="container">
		<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent flex-w">
			<button class="how-pos3 hov3 trans-04 js-hide-modal1">
				<img src="images/icons/icon-close.png" alt="CLOSE">
			</button>
			<div class="size-210 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
				<form>
					<h4 class="mtext-105 cl2 txt-center p-b-30">
						회원정보 수정
					</h4>
					<div class="form-group m-b-20 how-pos4-parent">
						<label class="label" for="subject">닉네임</label>
						<input type="text" class="form-control stext-111 cl2 plh3 size-116 p-r-30" name="nickname"
							placeholder="닉네임">
					</div>
					<div class="form-group m-b-30 m-b-20 how-pos4-parent">
						<label class="label" for="#">주소 입력</label>
						<div class="form-control stext-111 cl2 plh3 size-120 p-tb-25">
							<input type="text" class="form-control stext-111 cl2 plh3 size-116 p-r-30"
								id="sample6_postcode" placeholder="우편번호">
							<input type="button"
								class="flex-c-m stext-101 cl0 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer"
								onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
							<input type="text" class="form-control stext-111 cl2 plh3 size-116 p-r-30"
								name="address" id="sample6_address" placeholder="주소">
							<input type="text" class="form-control stext-111 cl2 plh3 size-116 p-r-30"
								id="sample6_detailAddress" placeholder="상세주소">
							<input type="text" class="form-control stext-111 cl2 plh3 size-116 p-r-30"
								id="sample6_extraAddress" placeholder="참고항목" style="display: none;">
							<input type="submit"
								class="flex-c-m stext-101 cl0 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer"
								value="지도에서 찾기">
						</div>
					</div>
					<button class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
						완료
					</button>
				</form>
			</div>
		</div>
	</div>
</div>

<!-- Modal1 : 회원가입 -->
<div class="wrap-modal1 js-modal1 p-t-60 p-b-20" id="loginPage">
	<div class="overlay-modal1 js-hide-modal1"></div>

	<div class="container">
		<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent flex-w">
			<button class="how-pos3 hov3 trans-04 js-hide-modal1">
				<img src="images/icons/icon-close.png" alt="CLOSE">
			</button>
			<div class="size-210 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
				<form>
					<h4 class="mtext-105 cl2 txt-center p-b-30">
						회원가입
					</h4>

					<div class="form-group m-b-20 how-pos4-parent">
						<label class="label" for="subject">닉네임</label>
						<input type="text" class="form-control stext-111 cl2 plh3 size-116 p-r-30" name="nickname"
							placeholder="닉네임">
					</div>


					<div class="form-group m-b-30 m-b-20 how-pos4-parent">
						<label class="label" for="#">주소 입력</label>
						<div class="form-control stext-111 cl2 plh3 size-120 p-tb-25">
							<input type="text" class="form-control stext-111 cl2 plh3 size-116 p-r-30"
								id="sample6_postcode" placeholder="우편번호">
							<input type="button"
								class="flex-c-m stext-101 cl0 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer"
								onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>

							<input type="text" class="form-control stext-111 cl2 plh3 size-116 p-r-30"
								name="address" id="sample6_address" placeholder="주소">


							<input type="text" class="form-control stext-111 cl2 plh3 size-116 p-r-30"
								id="sample6_detailAddress" placeholder="상세주소">

							<input type="text" class="form-control stext-111 cl2 plh3 size-116 p-r-30"
								id="sample6_extraAddress" placeholder="참고항목" style="display: none;">

							<input type="submit"
								class="flex-c-m stext-101 cl0 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer"
								value="지도에서 찾기">
						</div>

					</div>

					<button class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
						완료
					</button>
				</form>
			</div>
		</div>
	</div>
</div>

<!--===============================================================================================-->
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/bootstrap/js/popper.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/select2/select2.min.js"></script>
<script>
	$(".js-select2").each(function () {
		$(this).select2({
			minimumResultsForSearch: 20,
			dropdownParent: $(this).next('.dropDownSelect2')
		});
	})
</script>
<!--===============================================================================================-->
<script src="vendor/daterangepicker/moment.min.js"></script>
<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="vendor/slick/slick.min.js"></script>
<script src="js/slick-custom.js"></script>
<!--===============================================================================================-->
<script src="vendor/parallax100/parallax100.js"></script>
<script>
	$('.parallax100').parallax100();
</script>
<!--===============================================================================================-->
<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<script>
	$('.gallery-lb').each(function () { // the containers for all your galleries
		$(this).magnificPopup({
			delegate: 'a', // the selector for gallery item
			type: 'image',
			gallery: {
				enabled: true
			},
			mainClass: 'mfp-fade'
		});
	});
</script>
<!--===============================================================================================-->
<script src="vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/sweetalert/sweetalert.min.js"></script>
<script>
	$('.js-addwish-b2, .js-addwish-detail').on('click', function (e) {
		e.preventDefault();
	});

	$('.js-addwish-b2').each(function () {
		var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
		$(this).on('click', function () {
			swal(nameProduct, "is added to wishlist !", "success");

			$(this).addClass('js-addedwish-b2');
			$(this).off('click');
		});
	});

	$('.js-addwish-detail').each(function () {
		var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

		$(this).on('click', function () {
			swal(nameProduct, "is added to wishlist !", "success");

			$(this).addClass('js-addedwish-detail');
			$(this).off('click');
		});
	});

	/*---------------------------------------------*/

	$('.js-addcart-detail').each(function () {
		var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
		$(this).on('click', function () {
			swal(nameProduct, "is added to cart !", "success");
		});
	});

</script>
<!--===============================================================================================-->
<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script>
	$('.js-pscroll').each(function () {
		$(this).css('position', 'relative');
		$(this).css('overflow', 'hidden');
		var ps = new PerfectScrollbar(this, {
			wheelSpeed: 1,
			scrollingThreshold: 1000,
			wheelPropagation: false,
		});

		$(window).on('resize', function () {
			ps.update();
		})
	});
</script>
<!--===============================================================================================-->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
<script src="js/map-custom.js"></script>
<!--===============================================================================================-->
<script src="js/main.js"></script>

</body>

</html>