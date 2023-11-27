<%@page import="model.ToyDAO"%>
<%@page import="model.addressToyDTO"%>
<%@page import="java.util.List"%>
<%@page import="model.MemberInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

	<title>동네 장난감</title>
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
	String id = (String)session.getAttribute("id");//(String)session.getAttribute("id");
	String address = new MemberInfoDAO().getAddress(id);
	session.setAttribute("address", address);
	List<addressToyDTO> list = new ToyDAO().getAddressToys();
	
	String result = address.substring(0, address.indexOf(" "));
	if(result.length()>4){ //로까지
		result = address.substring(0, 12);
	}else{ //동까지
		result = address.substring(0, 9);
	}

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
						<a href="CorrectionMember.jsp" class="flex-c-m trans-04 p-lr-25" style="font-size: small;">
							회원정보 수정
						</a>
						<a href="#" class="flex-c-m trans-04 p-lr-25" style="font-size: small;">
							로그아웃
						</a>
						<!-- 로그아웃 상태 -->
						<a href="#" id="kakaoLogin()"
						class="flex-c-m trans-04 p-lr-25" style="font-size: small;">
							로그인
						</a>
					</div>
				</div>
			</div>

			<div class="wrap-menu-desktop how-shadow1">
				<nav class="limiter-menu-desktop container">

					<!-- Logo desktop -->
					<a href="#" class="logo">
						<img src="images/icons/logo-01.png" alt="IMG-LOGO">
					</a>

<!-- Menu desktop -->
                    <div class="menu-desktop">
                        <ul class="main-menu">
                            <li style="margin: 30px;">
                                <a href="main.jsp" style="font-size: large;font-weight: 600;">메인</a>
                            </li>

                            <li style="margin: 30px;">
                                <a href="toy_list.jsp" style="font-size: large;font-weight: 600;">동네 장난감</a>
                            </li>

                            <li class="label1" style="margin: 40px;" data-label1="hot">
                                <a href="premium.jsp" style="font-size: large;font-weight: 600;">프리미엄</a>
                            </li>

                            <li style="margin: 30px;">
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
                        <a href="CorrectionMember.jsp" class="flex-c-m trans-04 p-lr-25" style="font-size: small;">
                            회원정보 수정
                        </a>
                        <a href="#" class="flex-c-m trans-04 p-lr-25" style="font-size: small;">
                            로그아웃
                        </a>
                        <!-- 로그아웃 상태 -->
                        <a href="#" id="kakaoLogin()"
                        class="flex-c-m trans-04 p-lr-25" style="font-size: small;">
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

	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/bannertoy.png');">
		<h2 class="ltext-105 cl0 txt-center" style="font-weight: bold;">
			<%=result%> 장난감
		</h2>
	</section>
<%
String catego = null;
String gender = null;
String qual = null;
if(request.getParameter("catego")!=null){
	catego = request.getParameter("catego");
}
if(request.getParameter("gender")!=null){
	gender = request.getParameter("gender");
}
if(request.getParameter("qual")!=null){
	qual = request.getParameter("qual");
}

%>
	<!-- Product -->
		<div class="bg0 m-t-23 p-b-140">
		<div class="container">
			<section class="bg0 p-t-104 p-b-116">
				<div class="container">
					<div class="flex-w flex-tr">
						<div class="size-100  p-lr-70" >
							<div class="flex-w flex-r-m p-b-10">
								<div class="size-205 flex-c-m respon6">
									전체보기
								</div>


								<form action="toy_list" style="width: 300px; display: inline-block; display: flex;">
								<div class="flex-w flex-r-m p-b-10" style="margin-left: 50px;">
									<div class="size-210 flex-c-m respon6">

									</div>

									<div class="size-205 respon6-next" style="margin-left: 30px;">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="catego">
												<option value="all">전체 카테고리</option>
												<option value="car">차/소방차/트럭</option>
												<option value="robot">로봇</option>
												<option value="doll">인형</option>
												<option value="lego">레고/모형</option>
												<option value="dron">드론/비행기</option>
												<option value="animal">동물모형</option>
												<option value="cook">요리/뷰티/병원/전화</option>
												<option value="adu">교육장난감</option>
												<option value="etc">기타</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>
								<div class="flex-w flex-r-m p-b-10" style="margin-left: 30px;">
									<div class="size-210 flex-c-m respon6">

									</div>

									<div class="size-205 respon6-next" style="margin-left: 30px;">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="gender">
												<option value="all">전체 성별</option>
												<option value="girl">여아완구</option>
												<option value="boy">남아완구</option>
												<option value="baby">영유아완구</option>
												<option value="girlboy">남여아완구</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>
								<div class="flex-w flex-r-m p-b-10" style="margin-left: 30px;">
									<div class="size-210 flex-c-m respon6">

									</div>

									<div class="size-205 respon6-next" style="margin-left: 30px;">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="qual">
												<option value="all">전체 품질</option>
												<option value="top">상</option>
												<option value="middle">중</option>
												<option value="bottom">하</option>

											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>
								<div class="size-203 flex-c-m respon6" style="margin-left: 50px;">

									<input type="submit" class="btn btn-primary" value="검색" style ="width: 117px; height: 47px;">

								</div>
								</form>

							</div>


			</section>
			<!--                        ----------------------------------------------------------------------------------------------------------->


			<!-- 상품 목록 -->
			<div class="row isotope-grid" style="margin-left: 100px;">
				<!-- 상품 1 -->
				<%for(int i=0; i<list.size(); i++){ %>
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<div class="block2">
						<div class="block2-pic hov-img0">
							<!-- 상품 사진 -->
							<img src="images/crolling/<%=list.get(i).getImage_file()%>" alt="IMG-PRODUCT">
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<!-- 상품명 -->
								<a href="toy_info.jsp?p_num=<%=list.get(i).getP_num()%>" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									<%=list.get(i).getP_name()%>
								</a>
								<!-- 가격 -->
								<span class="stext-105 cl3">
									<%=list.get(i).getRent_price()%>원
								</span>
							</div>

							<!-- 하트 아이콘 -->
							<div class="block2-txt-child2 flex-r p-t-3">
								<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
									<img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png"
										alt="ICON">
									<img class="icon-heart2 dis-block trans-04 ab-t-l"
										src="images/icons/icon-heart-02.png" alt="ICON">
								</a>
							</div>
						</div>
					</div>
				</div>
				<%}%>
				
			</div>
		</div>
	</div>

	<!-- Footer -->
	<footer class="bg3 p-t-75 p-b-32">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-3 p-b-50">
					<a href="#">
						<h4 class="stext-301 cl0 p-b-30">
							카테고리
						</h4>
					</a>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<a href="#">
						<h4 class="stext-301 cl0 p-b-30">
							이용약관
						</h4>
					</a>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<a href="#">
						<h4 class="stext-301 cl0 p-b-30">
							중고거래
						</h4>
					</a>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<a href="#">
						<h4 class="stext-301 cl0 p-b-30">
							신고
						</h4>
					</a>
				</div>
				<div class="col-sm-6 col-lg-3 p-b-50">
					<a href="#">
						<h4 class="stext-301 cl0 p-b-30">
							R2L3
						</h4>
					</a>
				</div>
			</div>

			<div class="p-t-40">
				<p class="stext-107 cl6 txt-center">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>document.write(new Date().getFullYear());</script> All rights reserved | Made with <i
						class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com"
						target="_blank">Colorlib</a> &amp; distributed by <a href="https://themewagon.com"
						target="_blank">ThemeWagon</a>
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
	<script src="js/main.js"></script>

</body>

</html>