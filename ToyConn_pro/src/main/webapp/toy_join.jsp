<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>장난감 등록</title>
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
						<a href="#" onclick="kakaoLogin()"
						class="flex-c-m trans-04 p-lr-25" style="font-size: small;">
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
                                <a href="trade_list.jsp" style="font-size: large;font-weight: 600;">장난감 등록</a>
                                <ul class="sub-menu">
                                    <li><a href="#">내 장난감</a></li>
                                    <li><a href="#">빌린 장난감</a></li>
                                </ul>
                            </li>
                            <li style="margin: 30px;">
                                <a href="board_list.jsp" style="font-size: large;font-weight: 600;">게시판</a>
                            </li>

                            <li>
                                <a href="toy_join.jsp" style="font-size: large;font-weight: 600;">거래 목록</a>
                            </li>
                        </ul>
                    </div>

                    <!-- Icon header -->
                    <div class="wrap-icon-header flex-w flex-r-m">
                        <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
                            <i class="zmdi zmdi-search"></i>
                        </div>

                        <!-- 상품 cart 개수 확인 -->
                        <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart"
                            data-notify="7">
                            <i class="zmdi zmdi-shopping-cart"></i>
                        </div>

                        <a href="#"
                            class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti"
                            data-notify="0">
                            <i class="zmdi zmdi-favorite-outline"></i>
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

                <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart"
                    data-notify="2">
                    <i class="zmdi zmdi-shopping-cart"></i>
                </div>

                <a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti"
                    data-notify="0">
                    <i class="zmdi zmdi-favorite-outline"></i>
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
                        <a href="CorrectionMember.jsp" class="flex-c-m trans-04 p-lr-25" style="font-size: small;">
                            회원정보 수정
                        </a>
                        <a href="#" class="flex-c-m trans-04 p-lr-25" style="font-size: small;">
                            로그아웃
                        </a>
                        <!-- 로그아웃 상태 -->
                        <a href="#" onclick="kakaoLogin()"  
                        class="flex-c-m trans-04 p-lr-25" style="font-size: small;">
                            로그인
                        </a>
                    </div>
                </li>
            </ul>

            <ul class="main-menu-m">
                <li style="margin: 30px;">
                    <a href="main.jsp" style="font-size: large;font-weight: 600;">메인</a>
                </li>

                <li style="margin: 30px;">
                    <a href="toy_list.jsp" style="font-size: large;font-weight: 600;">동네 장난감</a>
                </li>

                <li class="label1" style="margin: 30px;" data-label1="hot">
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
                    <a href="toy_join.jsp" style="font-size: large;font-weight: 600;">장난감 등록</a>
                </li>
                <li style="margin: 30px;">
                    <a href="toy_join.jsp" style="font-size: large;font-weight: 600;">장난감 등록</a>
                </li>
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
    
    
    
    
    
    
    <hr>
    <h1 style="margin-left:190px;">물품등록</h1>

    <section class="bg0 p-t-23 p-b-140" style="margin-top: 50px;">


        <div class="container">
            <form action="ProductService" name="newProduct" method="post" class="form-horizontal" enctype="multipart/form-data">
                <div class="form-group row">
                    <label class="col-sm-2">이미지 등록</label>
                    <div class="col-sm-5">
                        <input type="file" accept="images/png" src="images/image_join.png" name="image_file" class="form-control" multiple>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="flex-w flex-c-m m-tb-10">
                        <div
                            class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
                            <i class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
                            <i class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
                            카테고리
                        </div>
                    </div>


                    <div class="dis-none panel-filter w-full p-t-10">
                        <div class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm">
                            <div class="filter-col1 p-r-15 p-b-27">
                                <div class="mtext-102 cl2 p-b-15">
                                    물품
                                </div>

                                <ul>
                                    <li class="p-b-6" name = "category">
                                        <a href="#" class="filter-link stext-106 trans-04">
                                            차/소방차/트럭
                                        </a>
                                    </li>

                                    <li class="p-b-6" name = "category">
                                        <a href="#" class="filter-link stext-106 trans-04">
                                            로봇
                                        </a>
                                    </li>
                                    <li class="p-b-6" name = "category">
                                        <a href="#" class="filter-link stext-106 trans-04">
                                            인형
                                        </a>
                                    </li>
                                    <li class="p-b-6" name = "category">
                                        <a href="#" class="filter-link stext-106 trans-04">
                                            레고/모형
                                        </a>
                                    </li>
                                    <li class="p-b-6" name = "category">
                                        <a href="#" class="filter-link stext-106 trans-04">
                                            드론/비행기
                                        </a>
                                    </li>
                                    <li class="p-b-6" name = "category">
                                        <a href="#" class="filter-link stext-106 trans-04">
                                            동물모형
                                        </a>
                                    </li>
                                    <li class="p-b-6" name = "category">
                                        <a href="#" class="filter-link stext-106 trans-04">
                                            요리/뷰티/병원/전화
                                        </a>
                                    </li>
                                    <li class="p-b-6" name = "category">
                                        <a href="#" class="filter-link stext-106 trans-04">
                                            교육장난감
                                        </a>
                                    </li>
                                    <li class="p-b-6" name = "category">
                                        <a href="#" class="filter-link stext-106 trans-04">
                                            기타
                                        </a>
                                    </li>
                                </ul>
                            </div>

                            <div class="filter-col2 p-r-15 p-b-27">
                                <div class="mtext-102 cl2 p-b-15">
                                    성별
                                </div>

                                <ul>
                                    <li class="p-b-6" name ="gender">
                                        <a href="#" class="filter-link stext-106 trans-04 filter-link-active">
                                            여아완구
                                        </a>
                                    </li>

                                    <li class="p-b-6" name ="gender">
                                        <a href="#" class="filter-link stext-106 trans-04">
                                            남아완구
                                        </a>
                                    </li>

                                    <li class="p-b-6" name ="gender">
                                        <a href="#" class="filter-link stext-106 trans-04">
                                            영유아완구
                                        </a>
                                    </li>
                                    <li class="p-b-6" name ="gender">
                                        <a href="#" class="filter-link stext-106 trans-04">
                                            남여아완구
                                        </a>
                                    </li>

                                </ul>
                            </div>

                            <div class="filter-col3 p-r-15 p-b-27">
                                <div class="mtext-102 cl2 p-b-15">
                                    품질 상태
                                </div>

                                <ul>
                                    <li class="p-b-6" name = "p_quality">
                                        <span class="fs-15 lh-12 m-r-6" style="color: #4272d7;">
                                            <i class="zmdi zmdi-circle"></i>
                                        </span>

                                        <a href="#" class="filter-link stext-106 trans-04 filter-link-active">
                                            상
                                        </a>
                                    </li>

                                    <li class="p-b-6" name = "p_quality">
                                        <span class="fs-15 lh-12 m-r-6" style="color: #00ad5f;">
                                            <i class="zmdi zmdi-circle"></i>
                                        </span>

                                        <a href="#" class="filter-link stext-106 trans-04">
                                            중
                                        </a>
                                    </li>

                                    <li class="p-b-6" name = "p_quality">
                                        <span class="fs-15 lh-12 m-r-6" style="color: #fa4251;">
                                            <i class="zmdi zmdi-circle"></i>
                                        </span>

                                        <a href="#" class="filter-link stext-106 trans-04">
                                            하
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>



                <div class="form-group row">
                    <label class="col-sm-2">상품명</label>
                    <div class="col-sm-3">
                        <input type="text" name="p_name" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">가격</label>
                    <div class="col-sm-3">
                        <input type="text" name="rent_price" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">상세정보</label>
                    <div class="col-sm-5">
                        <textarea rows="1" cols="5" name="p_content" class="form-control"></textarea>
                    </div>
                </div>


                <div class="form-group row">
                    <div class="col-sm-3">
                        <input type="submit" class="btn btn-primary" value="등록">
                    </div>
                </div>
            </form>

        </div>
    </section>

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
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
    <script src="js/map-custom.js"></script>
    <!--===============================================================================================-->
    <script src="js/main.js"></script>

</body>

</html>