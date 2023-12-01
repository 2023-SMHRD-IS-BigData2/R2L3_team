# R2L3_team
핵심 프로젝트를 왼손과 오른손으로!<br>
주제 : 동네기반 중고 장난감 대여 서비스<br>
리버스 엔지니어링 : 전자 상거래(당근마켓)<br>

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
  <li>박세호 : Front_end</li>
  <li>노은평 : PM, Front_end</li>
  <li>화이티 : DB, Crowling</li>
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
  <summary><b>서비스 전체 흐름도 / 로그인 흐름도</b></summary>
<h3>전체 서비스 흐름도</h3>
        <img src="https://github.com/2023-SMHRD-IS-BigData2/R2L3_team/assets/145408166/53e04760-ffea-444d-b127-0adcfbd87611" 
        style="width: 60%;" alt="IMG">
        <h3>로그인 서비스 흐름도</h3>
        <img src="https://github.com/2023-SMHRD-IS-BigData2/R2L3_team/assets/145408166/609fc2c1-d6ad-44e5-9adb-55cd3889e8db" 
        style="width: 60%;" alt="IMG">
</details>
<h3> 5. 핵심 트러블 슈팅 </h3>
<h4> 5-1 실시간 채팅 관련 문제</h4>
<br>
 <ul>
   <li>저희는 이 서비스에서 사용자 간 거래가 이루어지기 때문에 실시간 채팅울 구현할 마음으로 개발했습니다.</li>
   <li>하지만 실시간 채팅을 하기 위해서는 웹 소켓 방법이 필요했고 찾아본 결과 Socket.io와 Spring 프레임 워크에서 지원하는 웹소켓을 활용하는 방법이 었습니다</li>
   <li>소켓 아이오는 nodejs 서버를 사용하는 라이브러리이기 때문에 jsp, Servlet과 호환이 되지 않았습니다</li>
   <li>그리고 spring 프레임 워크는 현재까지 설계한 틀을 바꿔야만 했습니다</li>
   <li>그래서 대안 코드로 저희는 사용자의 발신 메세지 정보를 전송 버튼을 누를때마다 db에 저장하게 하였고 send Redirect 방식을 통해 새로고침 하여 사용자가 바로바로 전송이 된 화면을 구현하게 하였습니다.</li>
</ul>
<strong>대안코드</strong>

