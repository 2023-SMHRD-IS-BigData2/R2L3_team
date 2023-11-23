<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>메인</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<!-- 필수 css -->
</head>


<body class="animsition" style="background: rgb(56, 53, 53);">



	<!-- Modal1 -->
	<div class="js-modal1 p-t-60 p-b-20">
		<div class="overlay-modal1 js-hide-modal1"></div>

		<div class="container">
			<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent flex-w">
				<button class="how-pos3 hov3 trans-04 js-hide-modal1">
					<img src="images/icons/icon-close.png" alt="CLOSE">
				</button>
				<div class="size-210 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
					<form>
						<h4 class="mtext-105 cl2 txt-center p-b-30">회원가입</h4>

						<div class="form-group m-b-20 how-pos4-parent">
							<label class="label" for="subject">닉네임</label> <input type="text"
								class="form-control stext-111 cl2 plh3 size-116 p-r-30"
								name="nickname" placeholder="닉네임">
						</div>


						<div class="form-group m-b-30 m-b-20 how-pos4-parent">
							<label class="label" for="#">주소 입력</label>
							<div class="form-control stext-111 cl2 plh3 size-120 p-tb-25">
								<input type="text"
									class="form-control stext-111 cl2 plh3 size-116 p-r-30"
									id="sample6_postcode" placeholder="우편번호"> <input
									type="button"
									class="flex-c-m stext-101 cl0 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer"
									onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>

								<input type="text"
									class="form-control stext-111 cl2 plh3 size-116 p-r-30"
									name="address" id="sample6_address" placeholder="주소"> <input
									type="text"
									class="form-control stext-111 cl2 plh3 size-116 p-r-30"
									id="sample6_detailAddress" placeholder="상세주소"> <input
									type="text"
									class="form-control stext-111 cl2 plh3 size-116 p-r-30"
									id="sample6_extraAddress" placeholder="참고항목"
									style="display: none;"> <input type="submit"
									class="flex-c-m stext-101 cl0 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer"
									value="지도에서 찾기">
							</div>

						</div>

						<button
							class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
							완료</button>
					</form>
				</div>
			</div>
		</div>
	</div>




	<!-- 필수 js -->
	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>
</body>

</html>