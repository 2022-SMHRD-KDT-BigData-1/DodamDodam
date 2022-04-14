<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="UTF-8" />
    <title>2021 MINI HOMEPAGE</title>
    <link rel="stylesheet" href="${path}/resources/static/font.css" />
    <link rel="stylesheet" href="${path}/resources/static/layout.css" />
    <link rel="stylesheet" href="${path}/resources/static/home.css" />
    <link rel="stylesheet" href="${path}/resources/static/board2.css" />
</head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
              <div class="home_contents" style="overflow: auto; width: 1000px; height: 800px">
              	<div class="page_name">
              		<h1 style="text-align:center; color:#FFA9AA;">게시판 페이지</h1>
              	</div> 	
				<section class="notice">
				    <!-- board search area -->
				    <div id="board-search">
				        <div class="container">
				            <div class="search-window">
				                <form action="">
				                    <div class="search-wrap">
				                        <label for="search" class="blind">공지사항 내용 검색</label>
				                        <input id="search" type="search" name="" placeholder="검색어를 입력해주세요." value="">
				                        <button type="submit" class="btn btn-dark">검색</button>
				                    </div>
				                </form>
				            </div>
				        </div>
				    </div>
				  <!-- board list area -->
				    <div id="board-list">
				        <div class="container">
				            <table class="board-table">
				                <thead>
				    				<tr>
				    					<th width=10%>번호</th>
				           				<th width=45%>제목</th>
				           				<th width=15%>이름</th>
				           				<th width=20%>작성일</th>
				           				<th width=10%>조회수</th>
				    				</tr>
				                </thead>
				                <tbody>
				    				<c:forEach var="vo" items="${list}" varStatus="i">
				    				<tr>
				    					<td>${i.count}</td>
				    					<td><a href="boardContent.do?idx=${vo.b_seq}">${vo.b_title}</a></td>
				    					<td>${vo.m_nick}</td>
				    					<td>${vo.b_date}</td>
				    					<td>${vo.b_cnt}</td>
				    				<tr>
				    				</c:forEach>
				                </tbody>
				    				<tr>
				    					<td colspan="4"></td>
				    					<td align="center"><a href="boardInsertForm.do"><button>글쓰기</button></a></td>
				    				</tr>				                
				            </table>
				        </div>
				    </div>
				
				</section>
              </div>
            </div>
          </div>
          <div class="menu_bar">
            <a href="./home.do" class="menu_button1">&nbsp;&nbsp;홈</a>
            <a href="./diary.do" class="menu_button2">&nbsp;&nbsp;육아일기</a>
            <a href="./photo.do" class="menu_button3">&nbsp;&nbsp;사진첩</a>
            <a href="./boardchoose.do" class="menu_button4">&nbsp;&nbsp;게시판</a>
            <a href="./diary2.do" class="menu_button4">&nbsp;&nbsp;육아수첩</a>
            <a href="./info.do" class="menu_button4">&nbsp;&nbsp;육아 정보</a>
            <a href="./video.do" class="menu_button4">&nbsp;&nbsp;교육용 컨텐츠</a>
          </div>
        </div>
      </div>
    </div>
    <div class="sideform_main" style="background-color: rgba(238, 176, 212, 0.219)">
      <img src="${path}/resources/static/images/unnamed.jpg" width="225px" />
      <a style="font-style: inherit; font-size: 15px; color: black; font-weight: bold; margin: auto; text-align: center;">오늘은 사랑스러운 aaa와의</a>
      <a style="font-style: inherit; font-size: 15px; color: black; font-weight: bold; margin: auto; text-align: center;">--------nnnn일 째입니다--------</a>
      <button type="button" class="btn_main1" style="background-color: rgb(209, 191, 224); color: rgb(15, 15, 13); margin-left: 30px; margin-top: 10px;">로그인</button
      ><button type="button" class="btn_main2" style="background-color:  rgb(209, 191, 224); color: rgb(15, 15, 13); margin-left: 30px; margin-top: 10px;">회원가입</button>
      <div class="lb-audio">
        <audio controls>
          <source src="${path}/resources/static/audios/order-99518.mp3" type="audio/mp3">  
        </audio>
    </div>
    </div>
</body>
</html>
