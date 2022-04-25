<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="today" value="<%=new java.util.Date()%>" />
<!-- 현재날짜 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib  prefix="spring" uri="http://www.springframework.org/tags" %>    
<c:set var="date"><fmt:formatDate value="${today}" pattern="yyyy-MM-dd" /></c:set> 
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:formatDate value="${today}" pattern="E" var="todayE" />
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <title>도담도담</title>
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
    .photoDelBtn{
    	display:inline-block;
    	float:right;
    	border : none;
    	display :inline-block;
    	font-family: 'Single Day', cursive ;
    	font-size: 25px;
    	cursor: pointer;
    	z-index: 99;
    	color : hotpink;
    	background-color: transparent !important;
    }
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
  .sideform_main{
	    	border-radius : 5%;
	    	width : 300px;
	    	height: 459px;
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
    height: 400px;
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
#photoDate{
	 background-color: white;
	 text-align : center;
     width: 200px;
     height: 40px;
     font-size: 20px;
     font-family: 'Dongle', sans-serif;
     font-size : 30px;
}


.text-box {
	font-family: sans-serif;
    font-weight: bold;
    width:100px;
    height:50px;
}

.btn:link,
.btn:visited {
    text-transform: uppercase;
    text-decoration: none;
    padding: 15px 40px;
    display: inline-block;
    border-radius: 100px;
    transition: all .2s;
    position: absolute;
}

.btn:hover {
    transform: translateY(-3px);
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
}

.btn:active {
    transform: translateY(-1px);
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}

.btn-white {
    background-color: #fff;
    color: #777;
}

.btn::after {
    content: "";
    display: inline-block;
    height: 100%;
    width: 100%;
    border-radius: 100px;
    position: absolute;
    top: 0;
    left: 0;
    z-index: -1;
    transition: all .4s;
}

.btn-white::after {
    background-color: #fff;
}

.btn:hover::after {
    transform: scaleX(1.4) scaleY(1.6);
    opacity: 0;
}

.btn-animated {
    animation: moveInBottom 5s ease-out;
    animation-fill-mode: backwards;
}

@keyframes moveInBottom {
    0% {
        opacity: 0;
        transform: translateY(30px);
    }

    100% {
        opacity: 1;
        transform: translateY(0px);
    }
}
#photoInsertPopUp{
	position: absolute;
	top:26%;
	left :8%;
	width : 1235px;
	height : 620px;
	z-index: 99;
	display: none;
}
#photoInsert{
	cursor: pointer;
}
#formPopUp{
	position:relative;
	margin : 0 auto;
	width : 600px;
	height:620px;
	border: 2px solid #666;
	background-color: whitesmoke;
}
#photoTitle{
	position: absolute;
	top: 6%;
	left: 53%;
	transform:translate(-50%,-50%);
	font-family: 'Dongle', sans-serif;
    font-size : 30px;
}
#photoTitle > #photoTitleInput{
	background-color: white;
	text-align : center;
    width: 250px;
    height: 35px;
    font-family: 'Dongle', sans-serif;
    font-size : 30px;
}
#photoContentInput{
	background-color: white;
    font-family: 'Dongle', sans-serif;
    font-size : 30px;
}
#insertDate{
	position: absolute;
	top: 6%;
	left: 15%;
	transform:translate(-50%,-50%);
	background-color: white;
	text-align : center;
    width: 150px;
    height: 40px;
    font-family: 'Dongle', sans-serif;
    font-size : 30px;
}
#photoContent{
	position: absolute;
	top: 30%;
	left: 50%;
	transform:translate(-50%,-50%);
}
#photoFileAdd{
	position: absolute;
	top: 67.5%;
	left: 37.5%;
	transform:translate(-50%,-50%);
}
#photoSumit{
	position: absolute;
	width : 80px;
	height : 40px;
	bottom: 3%;
	left: 40%;
	transform:translate(-50%,-50%);
	font-family: 'Dongle', sans-serif;
    font-size : 30px;
}
#insertClose{
	position: absolute;
	width : 80px;
	height : 40px;
	bottom: 3%;
	left: 57.5%;
	transform:translate(-50%,-50%);
	font-family: 'Dongle', sans-serif;
    font-size : 30px;
}

</style>
  </head>
  <body>
   <div id = "photoInsertPopUp">
   	<form action = "GalleryInsert.do" method="post" id = "formPopUp" enctype="multipart/form-data">
   		<input type="date" value="${date }" name = "g_date" id="insertDate">
   		<input type = "hidden" value="${member.m_id }" name ="m_id">
   		<div id = "photoTitle">
   		<input type="text" id ="photoTitleInput" name="g_title" placeholder="제목을 입력해주세요.">
   		</div>
   		<div id = "photoContent">
   		<textarea rows="5" cols="50" id = "photoContentInput" name="g_msg" placeholder="여기에 사진과 함께할 짧은 메세지를 넣을 수 있습니다."></textarea>
   		</div>
   		<div id ="photoFileAdd">
   		<input type = "file" name = "uploadFile" multiple>
   		</div>  
   		<button type = "button" id ="insertClose"> Close </button>
   		<button type = "submit" id = "photoSumit"> 전송 </button>
   	</form>
   </div>
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
                  <h1 style="color: #4a494e; font-family:'Single Day', cursive ; font-size: 60px;">
                  	<c:choose>
                  		<c:when test = "${member != null }">
                  		${member.m_nick }의 사진첩
	                  	</c:when>
	                  	<c:otherwise>
	                  	나의 사진첩
	                  	</c:otherwise>
                  	</c:choose>
                  	</h1>

                  <div class="calendar">
                  	<input type = "date" value="${date }" id = "photoDate">
                  	<div class="text-box">
					    <a href="#" class="btn btn-white btn-        animate" id="photoGo">검색</a>
					</div>
                  </div>
                  <button type="button" id="photoInsert" style="float: right; margin-right: 30px; font-size: 20px; font-family:'Single Day', cursive; background-color:#f8e4d9;">새로운 추억 남기기</button>
                </div>
                
                
                <div class="main-container" >
                <c:choose>
                <c:when test="${Gallery != null }">
                	<c:forEach var = 'vo' items ="${Gallery }" varStatus="i">
                		<form action="galleryDelete.do" method = "post">
                		<input type = "hidden" name = "g_date" value="${vo.g_date}" class = "getDate">
                		<input type = "hidden" name = "m_id" value="${member.m_id}">
                		<div class="dayBlock" data-scroll>
                		
		                <div class="gray-text" id="basic-text">${vo.g_title }( ${vo.g_date} ) <button type = "submit" class ="photoDelBtn">[x]</button></div>
		                <div class="album-photo"><img src="<spring:url value='/resources/test/${vo.p1 }'/>"></div>
		                <div class="detail" id="basic-text">${vo.g_msg }</div>
                	</div>
		                </form>
                	</c:forEach>
                </c:when>
                <c:otherwise>
                <div class="dayBlock" data-scroll>
                <div class="gray-text" id="basic-text">오늘의 이야기( ${date } )</div>
                <div class="album-photo"><img src="${path}/resources/static/images/noLogin1.jpg"></div>
                <div class="detail" id="basic-text">당신의 이야기를 적어보세요</div>
                </div>
                <div class="dayBlock" data-scroll>
                <div class="gray-text" id="basic-text">오늘의 이야기( ${date } )</div>
                <div class="album-photo"><img src="${path}/resources/static/images/noLogin2.jpg"></div>
                <div class="detail" id="basic-text">자녀와 함께 추억을,</div>
                </div>
                <div class="dayBlock" data-scroll>
                <div class="gray-text" id="basic-text">오늘의 이야기( ${date } )</div>
                <div class="album-photo"><img src="${path}/resources/static/images/noLogin2.jpg"></div>
                <div class="detail" id="basic-text">만들어가봐요.</div>
                </div>
                </c:otherwise>
                </c:choose>
              </div>
            </div>
            </div>
          </div>
           <div class="menu_bar">
            <a href="./home.do" class="menu_button1">&nbsp;&nbsp;홈</a>
            <a href="./diary.do" class="menu_button2">&nbsp;&nbsp;육아일기</a>
            <a href="./photo.do" class="menu_button3">&nbsp;&nbsp;사진첩</a>
            <a href="./boardChoose.do" class="menu_button4">&nbsp;&nbsp;게시판</a>
            <a href="./note.do?pageNum=1" class="menu_button4">&nbsp;&nbsp;육아수첩</a>
            <a href="./info.do" class="menu_button4"
              >&nbsp;&nbsp;육아 정보</a
            >
            <a href="video.do" class="menu_button4">&nbsp;&nbsp;교육용 컨텐츠 </a
            >
          </div>
        </div>
      </div>
    </div>
     <div class="sideform_main" style="background-color: #d5d5d5;">
      <img src="${path}/resources/static/images/메인 사이드폼 사진.jpg" width="230px" height ="220px"/><c:choose
      			><c:when test="${not empty member}"
      			><p style=" font-style: inherit; font-size: 15px; color: black; font-weight: bold; margin: 1px; text-align: center;">${member.m_nick}님 환영합니다.</p
      			><a href="memberUpdateForm.do"><button type="button" class="btn_main1" style="background-color: #f8e4d9; color: rgb(15, 15, 13); margin-left: 10px;font-family:'Single Day', cursive; font-size:14px">개인정보수정</button></a
			    ><a href="children.do"><button type="button" class="btn_main2" style="background-color:  #f8e4d9; color: rgb(15, 15, 13); margin-left: 36px;font-family:'Single Day', cursive; font-size:14px">자녀정보</button></a
			    ><a href="logout.do"><button type="button" class="btn_main2" style="background-color:  #f8e4d9; color: rgb(15, 15, 13); margin-right: 12px; float: right;font-family:'Single Day', cursive; font-size:14px">로그아웃</button></a>
					    <c:if test="${member.m_id eq 'admin'}"><a href="memberList.do"
					    	><button type="button" id="memberList" class="btn_main2" style="background-color:  #f8e4d9; color: rgb(15, 15, 13); margin-left: 125px; font-size:10px">회원정보보기</button></a>	
					    </c:if>
		    	</c:when><c:otherwise
		    		>      
		    		<p
        style="
          font-style: inherit;
          font-size: 15px;
          color: black;
          font-weight: bold;
          margin: auto;
          text-align: center;
          font-family: 'Poor Story', cursive;
        "
        >로그인을 해주세요</p
      >
      <a href="login.do"> <button type="button" class="btn_main1" style="background-color: #f8e4d9; font-family:'Poor Story', cursive; font-size:larger; color: rgb(15, 15, 13); margin-left: 30px; margin-top: 10px;">로그인</button
        ></a
			      	>&emsp;<a href="join.do"><button type="button" class="btn_main2" style="background-color:  #f8e4d9;  font-family:'Poor Story', cursive; font-size:larger;color: rgb(15, 15, 13); margin-left: 30px; margin-top: 10px;">회원가입</button></a>
		    	</c:otherwise></c:choose
		    	><div class="lb-audio"><audio controls
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
    $('#photoInsert').on("click", function () {
    	if(${empty member}){
    		alert('로그인후 이용가능합니다!');
        	location.href='login.do';
    	}else{
	    	$('#photoInsertPopUp').show();
    	}
	})
    $('#insertClose').on("click", function () {
    	$('#photoInsertPopUp').hide();
    	$('#photoTitleInput').val('');
    	$('#photoContentInput').val('');
	})
	$('#photoGo').on('click', function () {
		var begyo = $('#photoDate').val();
		var geasu = $('.getDate').length;
		var ptn = 0; 
		for(var i = 0; i < geasu; i++ ){
			
			if($($('.getDate')[i]).val() == begyo ){
				/* ptn = $($('.getDate')[i]).scrollTop(); */
				ptn = 500 * i;
				break;
			}
		}
		console.log(ptn)
		$('.main-container').animate({
			scrollTop : ptn
		}, 1000)
	})
    </script>
  </body>
</html>