<%@page import="model.MemberInfo"%>
<%@page import="model.ToyDAO"%>
<%@page import="model.addressToyDTO"%>
<%@page import="java.util.List"%>
<%@page import="model.MemberInfoDAO"%>
<%@page import="model.boardDTO"%>
<%@page import="model.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>공지사항</title>
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
    <link rel="stylesheet" href="css/css.css">
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
   Kakao.init('884fc5c900adbd0a43cf5178eee68d38'); // 카카오 키
   console.log(Kakao.isInitialized()); // SDK 초기화 (boolean)
</script>  
</head>

<body class="animsition">
<% int board_num = Integer.parseInt(request.getParameter("board_num"));
	boardDTO vo = new boardDAO().getThisBoard(board_num);
	String user_id = (String) session.getAttribute("id");
	String nick = null;
	if (user_id == null) {
		user_id = "test4";
	}
	String address = new MemberInfoDAO().getAddress(user_id);
	session.setAttribute("address", address);
	List<addressToyDTO> list = new ToyDAO().getAddressToys();

	String result = address.substring(0, address.indexOf(" "));
	if (result.length() > 4) { //로까지
		result = address.substring(0, 12);
	} else { //동까지
		result = address.substring(0, 9);
	}
	MemberInfo memberInfo = (MemberInfo) session.getAttribute("memberInfo");

	if (memberInfo != null) {
		nick = memberInfo.getNick();
		session.setAttribute("id", memberInfo.getUser_id());
	} else if (session.getAttribute("user_id") != null) {
		user_id = (String) session.getAttribute("user_id");
		nick = (String) session.getAttribute("nick");
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
			<% if (memberInfo != null) { %>
				<%  if (nick.equals("admin")) { %>
				  <a href="Member_admin.jsp"
                     class="flex-c-m trans-04 p-lr-25"
                     style="font-size: small;"> 회원관리 </a>
				  <a href="#" id="CorrectionMember"
                     class="flex-c-m trans-04 p-lr-25"
                     style="font-size: small;"> 회원정보 수정 </a>
                  <a href="#" id="kakaoLogout"	
                     class="flex-c-m trans-04 p-lr-25" style="font-size: small;">
                     로그아웃 </a>
                  <a class="flex-c-m trans-04 p-lr-25"
                     style="font-size: small;"><%= nick + " 관리자" %></a>
                     <% } else { %>
                  <!-- 로그인 되면 출력 -->
                  <a href="#" id="CorrectionMember"
                     class="flex-c-m trans-04 p-lr-25"
                     style="font-size: small;"> 회원정보 수정 </a>
                  <a href="#" id="kakaoLogout"	
                     class="flex-c-m trans-04 p-lr-25" style="font-size: small;">
                     로그아웃 </a>
                  <a class="flex-c-m trans-04 p-lr-25"
                     style="font-size: small;"><%= nick %></a>
             <% }} else { %>                
                  <!-- 로그아웃 상태 -->
                  <a href="#" id="kakaoLogin"
                     class="flex-c-m trans-04 p-lr-25"
                     style="font-size: small;"><%=memberInfo != null ? nick : "로그인"%></a>
                <% } %>
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
			<% if (memberInfo != null) { %>
				<%  if (nick.equals("admin")) { %>
				  <a href="Member_admin.jsp"
                     class="flex-c-m trans-04 p-lr-25"
                     style="font-size: small;"> 회원관리 </a>
				  <a href="#" id="CorrectionMember"
                     class="flex-c-m trans-04 p-lr-25"
                     style="font-size: small;"> 회원정보 수정 </a>
                  <a href="#" id="kakaoLogout"	
                     class="flex-c-m trans-04 p-lr-25" style="font-size: small;">
                     로그아웃 </a>
                  <a class="flex-c-m trans-04 p-lr-25"
                     style="font-size: small;"><%= nick + " 관리자" %></a>
                     <% } else { %>
                  <!-- 로그인 되면 출력 -->
                  <a href="#" id="CorrectionMember"
                     class="flex-c-m trans-04 p-lr-25"
                     style="font-size: small;"> 회원정보 수정 </a>
                  <a href="#" id="kakaoLogout"	
                     class="flex-c-m trans-04 p-lr-25" style="font-size: small;">
                     로그아웃 </a>
                  <a class="flex-c-m trans-04 p-lr-25"
                     style="font-size: small;"><%= nick %></a>
             <% }} else { %>                
                  <!-- 로그아웃 상태 -->
                  <a href="#" id="kakaoLogin"
                     class="flex-c-m trans-04 p-lr-25"
                     style="font-size: small;"><%=memberInfo != null ? nick : "로그인"%></a>
                <% } %>
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
    <div class="board_wrap">
        <div class="board_title">
            <strong>게시판</strong>
            <p>문의사항을 적어주세요</p>
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                    <%=vo.getTitle()%>
                </div>
                <div class="info">
                    <dl>
                        <dt>번호</dt>
                        <dd> <%=vo.getBoard_num()%></dd>
                    </dl>
                    <dl>
                        <dt>글쓴이</dt>
                        <dd> <%=vo.getUser_id()%></dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd> <%=vo.getWrite_date().substring(0, 11)%></dd>
                    </dl>
                </div>
                <div class="cont">
                    <%=vo.getText_content() %>
                </div>
            </div>
            <div class="bt_wrap">
                <a href="board_list.jsp" class="on">목록</a>
                <a href="board_edit.jsp?board_num=<%=vo.getBoard_num()%>">수정</a>
            </div>
        </div>
    </div>
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
        $('.js-addwish-b2').on('click', function (e) {
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