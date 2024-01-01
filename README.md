# R2L3_team
핵심 프로젝트를 왼손과 오른손으로!<br>
주제 : 동네기반 중고 장난감 대여 서비스<br>
리버스 엔지니어링 : 전자 상거래(당근마켓)<br>

<h3>메인화면</h3>
<hr>
<img src="https://github.com/2023-SMHRD-IS-BigData2/R2L3_team/assets/120622212/b1155d5c-6633-4e83-a2ef-4e81e51fb7c7">

<h3>1. 제작 기간 & 참여 인원</h3>
<hr>
<ul>
  <li>
    2023년 11월 14일 ~ 11월 30일
  </li>
  <li>
    핵심 프로젝트
  </li>
  <li>장준휴(팀장) : Back_end</li>
        <ul>
        <li>동네 장난감 출력 기능</li>
        <li>장난감 위치 확인 기능</li>
        <li>유저별 대여 상태 기능</li>
        <li>유저별 대여상태 기능</li>
        <li>결제 기능</li>
        <li>프로젝트 총괄</li>
      </ul>
  <li>주선우 : Back_end</li>
	<ul>
		<li>카카오 로그인 API 연동</li>
		<li>로그인 컨트롤러 구현</li>
		<li>회원가입 컨트롤러 구현</li>
		<li>회원수정 컨트롤러 구현</li>
		<li>로그아웃 컨트롤러 구현</li>
		<li>상품등록 컨트롤러 구현</li>
	</ul>
  <li>박세호 : Front_end</li>
	<ul>
		<li>전체 템플릿 설계</li>
		<li>프리미엄,거래목록 창 구현</li>
		<li>게시판 물품등록 창 구현</li>
		<li>이용약관 동네장난감 창 구현</li>
	</ul>
  <li>노은평 : PM, Front_end</li>
	<ul>
            <li>프로젝트 매니저</li>
            <li>전체 페이지 디자인 설정</li>
            <li>로그인 및 회원가입 화면 구현</li>
            <li>사진 및 지도 오버레이 화면 구현</li>
            <li>장난감 카테고리 기능</li>
            <li>채팅 화면 구현</li>
            <li>시연 영상 제작</li>
        </ul>
  <li>화이티 : DB, Crawling</li>
   <ul>
        <li>쿨롤링: 중고사이트 장난감정보 데이터 (상품명, 상품값, 상품이미지, 상품표현)수집</li> 
        <li>데이터배이스: 데이블 생선하고 데이터 관리 </li>
        
</ul>

<h3>2. 사용 기술</h3>
<hr>
<b>Back_end</b>
<ul>
  <li>Java</li>
  <li>Python</li>
  <li>Maven</li>
  <li>Jsp</li>
  <li>Servlet</li>
  <li>Tomcat</li>
</ul>
<b>Front_end</b>
<ul>
  <li>Html</li>
  <li>CSS</li>
  <li>JavaScript</li>
</ul>

<h3>3. ERD 설계</h3>
<hr>
<img src = "https://github.com/2023-SMHRD-IS-BigData2/R2L3_team/blob/main/ToyConn_pro/src/main/webapp/images/erd.png" style="width: 60%;">

<h3> 4. 서비스 흐름도</h3>
<hr>
<img src="https://github.com/2023-SMHRD-IS-BigData2/R2L3_team/assets/145408166/a479a9a4-e9f9-45b8-8cee-0ca711df9e01" style="width: 60%;">
<details>
  <summary><b>서비스 흐름도 더보기</b></summary>
  
  <h3>전체 서비스 흐름도</h3>
  <img src="https://github.com/2023-SMHRD-IS-BigData2/R2L3_team/assets/145408166/53e04760-ffea-444d-b127-0adcfbd87611" 
  style="width: 60%;" alt="IMG">
  <h3>로그인 흐름도</h3>
  <img src="https://github.com/2023-SMHRD-IS-BigData2/R2L3_team/assets/145408166/609fc2c1-d6ad-44e5-9adb-55cd3889e8db" 
  style="width: 60%;" alt="IMG">
</details>

<h3>5. 주요 기능</h3>
<hr>
ToyConn 서비스의 핵심 기능은 로그인 이후 해당 유저 동네에 위치한 장난감 표시 기능, 장난감 위치 확인 후 채팅, 그리고 결제 기능입니다.

<details>
	<summary><b>주요 기능 더보기</b></summary>
<h4>
    로그인기능
</h4>
<h4>
    동네에 위치한 장난감 표시 기능
</h4>
<img src="https://github.com/jangjunhyu/-/assets/120622212/0036a59d-8b67-470d-92b7-30914870d1f7">

우편주소는 불변값이기 때문에 데이터 베이스에 저장된 장난감 전부 출력하고 유저의 주소에 맞는 장난감만 출력
~~~java
<%
				for (int i = 0; i < list.size(); i++) {
					if (list.get(i).getAddress().contains(result) && !list.get(i).getUser_id().equals(id)) {
				%>
				<div
					class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item <%=list.get(i).getCategory()%>">
					<div class="block2">
						<div class="block2-pic hov-img0">
							<!-- 상품 사진 -->
							<img src="images/crolling/<%=list.get(i).getImage_file()%>"
								alt="IMG-PRODUCT">
						</div>
						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<!-- 상품명 -->
								<a href="toy_info.jsp?p_num=<%=list.get(i).getP_num()%>"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> <%=list.get(i).getP_name()%>
								</a>
								<!-- 가격 -->
								<span class="stext-105 cl3"> <%=list.get(i).getRent_price()%>원
								</span>
							</div>
							<!-- 하트 아이콘 -->
							<div class="block2-txt-child2 flex-r p-t-3">
								<a href="#"
									class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
									<img class="icon-heart1 dis-block trans-04"
									src="images/icons/icon-heart-01.png" alt="ICON"> <img
									class="icon-heart2 dis-block trans-04 ab-t-l"
									src="images/icons/icon-heart-02.png" alt="ICON">
								</a>
							</div>
						</div>
					</div>
				</div>
				<%}}%>
~~~

<h4>장난감 위치 확인 기능</h4>
<hr>
<ul>
	<li>장난감 정보 클릭시 해당 장난감 정보(제품명, 가격, 세부내용, 유저) 표현</li>
	<li>정보 페이지 '위치확인'버튼 클릭시 오버레이로 위치정보 표현</li>
</ul>

<img src="https://github.com/jangjunhyu/-/assets/120622212/22309cc6-fea2-4105-9105-6faec8b21106">

~~~java
<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c4761ef1bd1bad042ac92bb3429a6cd9&libraries=services"></script>
	<script type="text/javascript">
		function moveChat() {
			document.querySelector(
			"#goChat").submit();
		}
	</script>
	<script>
	var mapContainer = document.getElementById('map'), 
	mapOption = {
	    center: new kakao.maps.LatLng(37.566826, 126.9786567), 
	    level: 3 
	};  
   
	var map = new kakao.maps.Map(mapContainer, mapOption); 

	var geocoder = new kakao.maps.services.Geocoder();

	geocoder.addressSearch('<%=Taddress%>'
			, function(result, status) {

			if (status === kakao.maps.services.Status.OK) {

				var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

				var marker = new kakao.maps.Marker({
					map : map,
					position : coords
				});

				map.setCenter(coords);
			}
		});
	</script>
~~~

<h4>채팅 기능</h4>
<ul>
	<li>사용자가 상품정보 페이지에 존재하는 채팅하기 버튼 클릭</li>
	<li>채팅 페이지로 이동하여 해당 장난감 소유 유저와 채팅</li>
	<li>입력 창에 채팅 내용 입력 후 전송 버튼 클릭</li>
	<li>DB에 저장 후 값을 바로 받아와 sendRedirect 형식으로 데이터 전송</li>
</ul>
<img src="https://github.com/jangjunhyu/-/assets/120622212/66d0ce2c-2040-4847-b104-49ea208434ac">

<h4>결제 기능</h4>
<ul>
	<li>채팅을 마친 사용자는 아래쪽에 대여 시작날짜, 마감 날짜 선택 후 결제하기 버튼 클릭</li>
	<li>결제 정보를 확인(대여 일수, 대여 총 금액)</li>
	<li>'온라인 버튼'클릭 시 import api를 사용하여 카카오 pay로 결제 진행</li>
</ul>
<img src="https://github.com/jangjunhyu/-/assets/120622212/a3b7d0e4-a24f-47bc-a1d9-0decf64d292b">
</details>
<h3> 6. 핵심 트러블 슈팅 </h3>
<hr>
<h4> 5-1 실시간 채팅 관련 문제</h4>
<br>
 <ul>
   <li>저희는 이 서비스에서 사용자 간 거래가 이루어지기 때문에 실시간 채팅울 구현할 마음으로 개발했습니다.</li>
   <li>하지만 실시간 채팅을 하기 위해서는 웹 소켓 방법이 필요했고 찾아본 결과 Socket.io<a href="https://velog.io/@moonshadow/Socket.IO%EB%A5%BC-%EC%95%8C%EC%95%84%EB%B3%B4%EC%9E%90">(Socket.io로 채팅창 만들기)</a>와 Spring 프레임 워크에서 지원하는 웹소켓<a href="https://velog.io/@sunkyuj/Spring-%EC%9B%B9%EC%86%8C%EC%BC%93%EC%9C%BC%EB%A1%9C-%EC%8B%A4%EC%8B%9C%EA%B0%84-%EC%B1%84%ED%8C%85-%EA%B5%AC%ED%98%84">(웹소켓으로 채팅창만들기)</a>을 활용하는 방법이 었습니다</li>
   <li>소켓 아이오는 nodejs 서버를 사용하는 라이브러리이기 때문에 jsp, Servlet과 호환이 되지 않았습니다</li>
   <li>그리고 spring 프레임 워크는 현재까지 설계한 틀을 바꿔야만 했습니다</li>
   <li>그래서 대안 코드로 저희는 사용자의 발신 메세지 정보를 전송 버튼을 누를때마다 db에 저장하게 하였고 send Redirect 방식을 통해 새로고침 하여 사용자가 바로바로 전송이 된 화면을 구현하게 하였습니다.</li>
</ul>
<strong>대안코드</strong>
<a href="https://github.com/2023-SMHRD-IS-BigData2/R2L3_team/blob/c51616abb5952f4c6d03e55d0cf5f1e3e2ffeca0/ToyConn_pro/src/main/webapp/message.jsp#L380">대안코드 상세 설명</a> 참고

<h3>시연 영상</h3>
<hr/>
<img src="https://github.com/2023-SMHRD-IS-BigData2/R2L3_team/assets/145408166/1d6617d9-9b81-480a-a3bd-44f3ea9f19de"/>
<video autoplay controls loop muted poster="aaa" preload="bbb">
  <source src="[xxx](https://github.com/2023-SMHRD-IS-BigData2/R2L3_team/assets/145408166/1d6617d9-9b81-480a-a3bd-44f3ea9f19de)" type="yyy">

</video>

<hr/>

            <a style="position:absolute;top:20px;right:1rem;opacity:0.8;" href="https://clipchamp.com/watch/ngwUNvSVx3u?utm_source=embed&utm_medium=embed&utm_campaign=watch">
                <img loading="lazy" style="height:22px;" src="https://clipchamp.com/e.svg" alt="Made with Clipchamp" />
            </a>
           
