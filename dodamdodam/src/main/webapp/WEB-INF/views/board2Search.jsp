<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta charset="UTF-8" />
<title>도담도담</title>
<link rel="stylesheet" href="${path}/resources/static/font.css" />
<link rel="stylesheet" href="${path}/resources/static/layout.css" />
<link rel="stylesheet" href="${path}/resources/static/home.css" />
<link rel="stylesheet" href="${path}/resources/static/board2.css" />
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
<style>
.sideform_main {
	border-radius: 5%;
	width: 300px;
	height: 459px;
}
</style>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
						<br />
						<strong>&emsp;&emsp;&emsp; <span
							style="color: coral"></span>
						</strong> &emsp;&emsp;&emsp; &emsp; <span class="title"></span>
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					</div>
					<div class="home_main">
						<div class="home_contents" style="width: 1000px; height: 800px">
							<div class="page_name">
								<h1 style="text-align: center; color: #FFA9AA;">게시판 페이지</h1>
							</div>
							<section class="notice">
								<!-- board search area -->
								<div id="board-search">
									<div class="container">
										<div class="search-window">
											<form action="board2Search.do?pageNum=1" method="post">
												<div class="search-wrap">
													<label for="search" class="blind">공지사항 내용 검색</label> <input
														id="b_search" type="search" name="b_search"
														placeholder="검색어를 입력해주세요.">
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
												<c:set var="p" value="${postStart}" />
												<c:set var="plus" value="1" />
												<c:forEach var="i" items="${list}">
													<tr>
														<td>${p+plus }</td>
														<td><a href="board2Content.do?b_seq=${i.b_seq}">${i.b_title}</a></td>
														<td>${i.m_nick }</td>
														<td>${i.b_date}</td>
														<td>${i.b_cnt}</td>
													</tr>
													<c:set var="plus" value="${plus +1}" />
												</c:forEach>
											</tbody>
											<tr>
												<td colspan="4"></td>
												<td align="center"><a href="boardInsertForm.do"><button>글쓰기</button></a></td>
											</tr>
										</table>
									</div>


									<!-- 페이징 처리 -->
									<div class="page-line" align="center">
										<nav aria-label="Page navigation example">
											<ul style="justify-content: center" class="pagination">
												<c:set var="back" value="${postStart/10}" />
												<li class="page-item" style="display: inline;"><a
													class="page-link"
													href="board2Search.do?b_search=${b}&pageNum=
										
										<fmt:formatNumber type="number" maxFractionDigits="0"  value="${back }" />"
													aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
												</a></li>

												<c:forEach begin="1" end="${endPageNum}" var="i">
													<c:choose>
														<c:when test="${postEnd eq 10 }">
															<li class="page-item" style="display: inline;"><a
																class="page-link" href="board2Search.do?b_search=${b}&pageNum=${i}">${i}</a></li>
														</c:when>
														<c:otherwise>
															<li class="page-item" style="display: inline;"><a
																class="page-link" href="board2Search.do?b_search=${b}&pageNum=${i}">${i}</a></li>
														</c:otherwise>
													</c:choose>
												</c:forEach>


												<li class="page-item" style="display: inline;"><a
													class="page-link"
													href="board2Search.do?b_search=${b}&pageNum=<fmt:formatNumber type="number" maxFractionDigits="0"  value="${back+2 }" />"
													aria-label="Next"> <span aria-hidden="true">&raquo;</span></a>
												</li>
											</ul>
										</nav>
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
</body>
</html>
