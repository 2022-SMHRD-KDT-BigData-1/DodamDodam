<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="today" value="<%=new java.util.Date()%>" />
<!-- 현재날짜 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="date"><fmt:formatDate value="${today}" pattern="yyyy-MM-dd" /></c:set> 
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <title>2021 MINI HOMEPAGE</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://unpkg.com/scroll-out/dist/scroll-out.min.js"></script>
    <script src="https://unpkg.com/typeit@8.4.0/dist/index.umd.js"></script>
    <link rel="stylesheet" href="${path}/resources/static/font.css" />
    <link rel="stylesheet" href="${path}/resources/static/layout.css" />
    <link rel="stylesheet" href="${path}/resources/static/home.css" />
    <link
      href="https://fonts.googleapis.com/css2?family=Dongle:wght@400;700&display=swap"
      rel="stylesheet"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com"  />
    <link
      href="https://fonts.googleapis.com/css2?family=Dongle:wght@400;700&family=Poor+Story&family=Single+Day&display=swap"
      rel="stylesheet"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com"  />
    <link
      href="https://fonts.googleapis.com/css2?family=Dongle:wght@400;700&family=Single+Day&display=swap"
      rel="stylesheet"
    />
    <style>
    [data-scroll] {
	  transition: opacity 1s;
	  will-change : transform, scale, opcity;
	  transform:translateY(6rem) scale(0.93);
	  transition: all 1.5s cubic-bezier(0.165, 0.84, 0.44, 1);
	}
	[data-scroll="in"] {
	  transform : translateY(0) scale(1);
	  opacity: 1;
	}
	[data-scroll="out"] {
	  opacity: 0;
	}
    .calendar {
      margin: 20px 20px 10px 20px;
      flex: 0.1;
      border: none;
      display: flex;
      align-items: center;
      justify-content: space-evenly;
      background-color: whitesmoke;
      font-family: 'Single Day', cursive ;
  }
  
  
  .day {
      flex: 0.125;
      margin: 10px;
      text-align: center;
      color: black;
      font-size: 25px;
  }
  
  
  .month {
      flex: 0.875;
      margin: 10px;
      color: black;
      font-size: 21px;
  }
  
  .secret-button button {
      padding: 10px;
      background-color: white;
      color: white;
      border: none;
  }
  .secret-button button:hover {
      background-color: rgb(255, 70, 70);
      transition: 800ms ease-in all;
  }
  
  
  .icon {
      margin-right: 5px;
  }
  .main-container {
    margin-left: 150px;
    margin-bottom: 30px;
    width: 80%;
    height: 500px;
    background-color: whitesmoke;
    overflow: auto;
}


.gray-text {
    padding: 7px;
    margin: 10px;
    width: 320px;
    background-color: #f8e4d9;
    border-radius: 1%;
    color: black;
    font-family:'Single Day', cursive ;
    font-size: 24px;
    text-align: center;
    display: inline-block;
}


.album-photo {
    width: 80%;
    height: 75%;
    align-items: center;

}
.album-photo img{
    width: 100%;
    height: 100%;
    align-items: center;


}


.detail {
margin-bottom: 30px;
    width: 100%;
    font-family:'Dongle', sans-serif; 
    font-size: 30px;
    color: black;
    text-align: center;
}
.dayBlock{
	text-align: center;
    margin: 0 auto;
	width:100%;
	height:100%;
}
.album-photo{
	display: inline-block;
}
</style>
  </head>
  <body>
    
  <div class="logo_main">
    <img src="${path}/resources/static/images/도담도담 갈색버전.png" width="200px" />
   </div>
   <div class="name_main">
    <img src="${path}/resources/static/images/도담도담 로고.png" width="250px" />
  </div>

    <div class="bookcover">
      <div class="bookdot">
        <div class="page">
          <div class="home">
            <div class="upside">
              <br /><strong
                >&emsp;&emsp;&emsp; <span style="color: coral"></span> 
              </strong>
              &emsp;&emsp;&emsp; &emsp;
              <span class="title"></span>
              &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
            </div>
            <div class="home_main">
              <div class="home_contents">

                <div class="miniroom_contents" style="text-align: center;">
                  <h1 style="color: #4a494e; font-family:'Single Day', cursive ; font-size: 60px;">찬호의 사진첩</h1>

                  <div class="calendar">
                    <div class="day" id="bold-text">01.24<br>MON</div>
                    <div class="month" id="basic-text"><span id="blue">1</span> <span id="red"> 2 </span>  3  4  5  6  7 <span id="blue">8</span> <span id="red">9</span> 10 11 12 13 14 <span id="blue">15</span> <span id="red">16</span> 17 18 19 20 21 <span id="blue">22</span> <span id="red">23</span> 24 25 26 27 28 <span id="blue">29</span> <span id="red">30</span> <span id="red">31</span></div>
                  
                  </div>
                  <button type="button" style="float: right; margin-right: 30px; font-size: 20px; font-family:'Single Day', cursive; background-color:#f8e4d9;">새로운 추억 남기기</button>
                </div>
                <div class="main-container" >
                <div class="dayBlock" data-scroll>
                <div class="gray-text" id="basic-text">오늘의 이야기(2020.01.11)</div>
                <div class="album-photo"><img src="${path}/resources/static/images/test.PNG"></div>
                <div class="detail" id="basic-text">친구랑 싸웠다. 죽고시퍼?</div>
                </div>
                <div class="dayBlock" data-scroll>
                <div class="gray-text" id="basic-text">오늘의 이야기(2022.01.19)</div>
                <div class="album-photo"><img src="${path}/resources/static/images/test.PNG"></div>
                <div class="detail" id="basic-text">내 애완동물</div>
                </div>
                <div class="dayBlock" data-scroll>
                <div class="gray-text" id="basic-text">오늘의 이야기(2020.01.23)</div>
                <div class="album-photo"><img src="${path}/resources/static/images/test.PNG"></div>
                <div class="detail" id="basic-text">친구가 찍어줬다.</div>
                </div>
              </div>
            </div>
            </div>
          </div>
         <div class="menu_bar">
            <a href="./home.do" class="menu_button1">&nbsp;&nbsp;홈</a>
            <a href="./diary.do" class="menu_button2">&nbsp;&nbsp;육아일기</a>
            <a href="./photo.do" class="menu_button3">&nbsp;&nbsp;사진첩</a>
            <a href="./boardChoose.do" class="menu_button4">&nbsp;&nbsp;게시판</a>
            <a href="./note.do" class="menu_button4">&nbsp;&nbsp;육아수첩</a>
            <a href="./info.do" class="menu_button4"
              >&nbsp;&nbsp;육아 정보</a
            >
            <a href="./video.html" class="menu_button4"
              >&nbsp;&nbsp;교육용 컨텐츠</a
            >
          </div>
        </div>
      </div>
    </div>
    <div class="sideform_main" style="background-color: rgba(238, 176, 212, 0.219);">
      <img src="${path}/resources/static/images/unnamed.jpg" width="225px" align="middle"/><c:choose
      			><c:when test="${not empty member}"
      			><p style=" font-style: inherit; font-size: 15px; color: black; font-weight: bold; margin: 1px; text-align: center;">${member.m_nick}님 환영합니다.</p
      			><a href="mypage.do"><button type="button" class="btn_main1" style="background-color: rgb(209, 191, 224); color: rgb(15, 15, 13); margin-left: 50px">마이페이지</button></a
			    ><a href="logout.do"><button type="button" class="btn_main2" style="background-color:  rgb(209, 191, 224); color: rgb(15, 15, 13); margin-left: 50px">로그아웃</button></a>	
					    <c:if test="${member.m_id eq 'admin'}"><a href="memberList.do"
					    	><button type="button" id="memberList" class="btn_main2" style="background-color:  rgb(209, 191, 224); color: rgb(15, 15, 13); margin-left: 100px">회원정보보기</button></a>	
					    </c:if>
		    	</c:when><c:otherwise
		    		><p style=" font-style: inherit; font-size: 15px; color: black; font-weight: bold; margin: 1px; text-align: center;">안녕하세요~ <br> 로그인 해주세요 </p
		    		><a href="login.do"><button type="button" class="btn_main1" style="background-color: rgb(209, 191, 224); color: rgb(15, 15, 13); margin-left: 50px">로그인</button></a
			      	><a href="join.do"><button type="button" class="btn_main2" style="background-color:  rgb(209, 191, 224); color: rgb(15, 15, 13); margin-left: 50px">회원가입</button></a>
		    	</c:otherwise></c:choose>
     <div class="lb-audio"><audio controls
      	><source src="${path}/resources/static/audios/order-99518.mp3" type="audio/mp3">  
        </audio>
    </div>
    </div>
    <script type="text/javascript">
    ScrollOut({
    	scrollingElement: ".main-container",
    	onShown: (element) => {
    	    // use the web animation API
    	    new TypeIt(element.querySelector('.gray-text'),{
    	    	   startDelay: 500,
    	    	   cursor : false,
    	    	 })
    	    	   .pause(2000)
    	    	   .go();
    	    new TypeIt(element.querySelector('.detail'),{
    	    	   startDelay: 2500,
    	    	   cursor : false,
    	    	 })
    	    	   .pause(2000)
    	    	   .go();
    	    	},
    });
    </script>
  </body>
</html>