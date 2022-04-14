<%@page import="kr.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% MemberVO member = (MemberVO)session.getAttribute("member"); %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="UTF-8" />
    <title>2021 MINI HOMEPAGE</title>
    <link rel="stylesheet" href="${path}/resources/static/font.css" />
    <link rel="stylesheet" href="${path}/resources/static/layout.css" />
    <link rel="stylesheet" href="${path}/resources/static/home.css" />
  </head>
  <body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
                  <br /><strong>나의 최근 작성글</strong>
                </div>
                <div class="updated_news_contents">
                  <div class="updated_news_left">
                    <span class="updated_news_left1"
                      ><span class="updated_news_red">&nbsp;사진첩&nbsp;</span>
                      최찬호의 1살 때 사진</span
                    >
                    <span class="updated_news_left2"
                      ><span class="updated_news_blue">&nbsp;게시판&nbsp;</span>
                      최찬호의 2살 시절 논문</span
                    >
                    <span class="updated_news_left3"
                      ><span class="updated_news_blue">&nbsp;육아수첩&nbsp;</span>
                      최찬호의 3살 예방주사 맞는날</span
                    >
                    <span class="updated_news_left4"
                      ><span class="updated_news_red">&nbsp;육아교육용컨텐츠&nbsp;</span>
                      최찬호의 4살 토익 900점 도전기</span
                    >
                  </div>

                </div>
                <div class="miniroom_title">
                  <br /><strong>오늘의 육아정보</strong>
                </div>
                <div class="miniroom_contents">
                  <img
                    class="miniroom_gif"
                    src="${path}/resources/static/images/2020_11_1759675844b134cdb.jpg"
                  />
                </div>
              </div>
            </div>
          </div>
          <div class="menu_bar">
            <a href="./home.do" class="menu_button1">&nbsp;&nbsp;홈</a>
            <a href="./diary.do" class="menu_button2">&nbsp;&nbsp;육아일기</a>
            <a href="./photo.do" class="menu_button3">&nbsp;&nbsp;사진첩</a>
            <a href="./boardChoose.do" class="menu_button4">&nbsp;&nbsp;게시판</a>
            <a href="./diary2.do" class="menu_button4">&nbsp;&nbsp;육아수첩</a>
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
      			><span style="float : right;">${member.nick}님 환영합니다.
						<a href="logout.do">
					    	<button class="btn btn-success btn-sm" style="float: right;">로그아웃</button>
					    </a>	
					    <c:if test="${member.id eq 'admin'}">
					    	<button style="" type="button" id="memberList" class ="btn btn-info btn-sm">회원정보보기</button>
					    </c:if>		   
				    </span>
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
  </body>
</html>
