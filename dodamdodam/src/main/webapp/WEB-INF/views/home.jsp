<%@page import="kr.smhrd.model.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% MemberVO member = (MemberVO)session.getAttribute("member"); %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="UTF-8" />
    <title>2021 MINI HOMEPAGE</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${path}/resources/static/font.css" />
    <link rel="stylesheet" href="${path}/resources/static/layout.css" />
    <link rel="stylesheet" href="${path}/resources/static/home.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
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
    <style type="text/css">
    	#bottomContent{
    		position: absolute;
    		bottom : 5%;
    	}
    	#slarea{
    		width: 1237px;
            height: 400px;
            overflow: hidden;
            margin-top :15px;
            margin-left :15px;
    	}
    	#slContain{
    		position: relative;
            width:3711px;
            height: 400px;
    	}
    	#slContain > .slide{
            margin: 0 auto;
            padding: 0 auto;
            width: 1237px;
    		height: 400px;
            position: relative;
            float: left;
    	}
    	.slide > img{
    		width: 618px;
	        height: 400px;
	        position : relative;
	        float: left;
	        cursor: pointer;
    	}
    	.slide > img:hover{
    		z-index: 999;
    		opacity: 0.7;
    	}
       .sideform_main{
          border-radius : 5%;
          width : 300px;
          height: 459px;
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
                   <div class="updated_news_title">
                  <br /><strong>도담도담 최신 인기글</strong>
                </div>
                 <div class="updated_news_contents">

                     <span class="updated_news_left1" style="width: 500PX; float: left;"
                      ><span class="updated_news_red">&nbsp;육아 정보&nbsp;</span>
                      2살 아이의 언어 발달 상황은?
                      <br>
                      <img src="${path}/resources/static/images/메인 2살.jpg" width="300px" height="150px" style="margin-top: 20px;"></span
                    > 
                     <span class="updated_news_left2" style="width: 500PX; float: left;"
                      ><span class="updated_news_blue">&nbsp;교육용 컨텐츠&nbsp;</span>
                      EBS교육방송 '우리집 유치원'
                      <br>
                        <img src="${path}/resources/static/images/edu.jpg" width="300px" height="150px" style="margin-top: 20px;">
                      </span> 
                </div>  
              
              
                <div id="bottomContent">
                <div class="miniroom_title">
                  <br /><strong>진행중인 EVENT</strong>
                </div>
                <div id = "slarea">
                <div id="slContain">
                  <div class="slide">
                  	<img  src="${path}/resources/static/images/slide01.jpg" />
                  	<img  src="${path}/resources/static/images/slide011.jpg" />
                  </div>
                  <div class="slide">
                  	<img  src="${path}/resources/static/images/slide02.jpg" />
                  	<img  src="${path}/resources/static/images/slide022.jpg" />
                  </div>
                  <div class="slide">
                 	 <img  src="${path}/resources/static/images/slide03.jpg" />
                 	 <img  src="${path}/resources/static/images/slide033.jpg" />
                  </div>
                </div>
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
            <a href="./note.do?pageNum=1" class="menu_button4">&nbsp;&nbsp;육아수첩</a>
            <a href="./info.do" class="menu_button4"
              >&nbsp;&nbsp;육아 정보</a
            >
            <a href="./video.html" class="menu_button4"
              >&nbsp;&nbsp;교육용 컨텐츠 </a
            >
          </div>
        </div>
      </div>
    </div>
    
    
    
    
<%--     <div class="sideform_main" style="background-color: #d5d5d5">
      <img src="${path}/resources/static/images/unnamed.jpg" width="225px" />
      <a
        style="
          font-style: inherit;
          font-size: 15px;
          color: black;
          font-weight: bold;
          margin: auto;
          text-align: center;
          font-family: 'Poor Story', cursive;
        "
        >-----오늘은 사랑스러운 aaa와-----</a
      >
      <a
        style="
          font-style: inherit;
          font-size: 15px;
          color: black;
          font-weight: bold;
          margin: auto;
          text-align: center;
          font-family: 'Poor Story', cursive;
        "
        >--------nnnn일 째입니다--------
        </a>
      <button type="button" class="btn_main1" style="background-color: #f8e4d9; font-family:'Poor Story', cursive; font-size:larger; color: rgb(15, 15, 13); margin-left: 30px; margin-top: 10px;">로그인</button
        >&emsp;<button type="button" class="btn_main2" style="background-color:  #f8e4d9;  font-family:'Poor Story', cursive; font-size:larger;color: rgb(15, 15, 13); margin-left: 30px; margin-top: 10px;">회원가입</button>
      <div class="lb-audio">
        <audio controls>
          <source src="${path}/resources/static/audios/order-99518.mp3" type="audio/mp3">  
        </audio>
    </div>
    <input type = "hidden" id = "DiaryContents">
    </div> --%>
    
    
    <div class="sideform_main" style="background-color: #d5d5d5;">
      <img src="${path}/resources/static/images/메인 사이드폼 사진.jpg" width="230px" height="220px"/><c:choose
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
    var current = 0;
	setInterval(function() {
		var next = (current + 1) % 3;
		var slidePosition = current * (-1237) + "px";
		$("#slContain").animate({
			left : slidePosition
		}, 500);
		current = next;
	}, 3000);
    </script>
  </body>
</html>
