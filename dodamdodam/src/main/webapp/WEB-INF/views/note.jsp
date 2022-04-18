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
              		<h1 style="text-align:center; color:#FFA9AA; padding-top:30px;">육아 수첩</h1>
              	</div> 	
				<section class="notice">	   
				  <!-- board list area -->
				    <div id="board-list">
				        <div class="container">
				            <table class="board-table">
				                <thead>
				    				<tr>
				    					<th width=20%>자녀</th>
				           				<th width=20%>특이사항</th>
				           				<th width=20%>키</th>
				           				<th width=20%>몸무게</th>
				           				<th width=20%>날짜</th>
				    				</tr>
				                </thead>
				                <tbody>
				                	<c:set var="p" value="${postStart}" />
									<c:set var="plus" value="1" />
				    				<c:forEach var="i" items="${list}">
				    				<tr>
				    					<td>${i.c_seq}</td>
				    					<td><a href="noteContent.do?n_seq=${i.n_seq}">${i.n_significant}</a></td>
				    					<td>${i.n_height}</td>
				    					<td>${i.n_weight}</td>
				    					<td>${i.n_date}</td>
				    				<tr>
				    				</c:forEach>
				                </tbody>
				    				<tr>
				    					<td colspan="4"></td>
				    					<td style ="text-align:right; padding-right: 15px;"><a href="noteInsertForm.do" ><button type = "button" class ='btn'>글쓰기</button></a></td>
				    				</tr>				                
				            </table>
				        </div>
				        
				        <!-- 페이징 처리 -->
				        <div class="page-line" align="center">
					        <nav aria-label="Page navigation example">
								<ul style="justify-content: center" class="pagination">
									<c:set var="back" value="${postStart/10}" />
									<li class="page-item" style="display: inline;"><a class="page-link"
										href="note.do?pageNum=
										
										<fmt:formatNumber type="number" maxFractionDigits="0"  value="${back }" />"
										aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									</a></li>
									
									<c:forEach begin="1" end="${endPageNum}" var="i">
										<c:choose>
											<c:when test="${postEnd eq 10 }">
												<li class="page-item" style="display: inline;"><a class="page-link"
													href="note.do?pageNum=${i}">${i}</a></li>
											</c:when>
											<c:otherwise>
												<li class="page-item" style="display: inline;"><a class="page-link"
													href="note.do?pageNum=${i}">${i}</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									
									
									<li class="page-item" style="display: inline;">
									<a class="page-link" href="note.do?pageNum=<fmt:formatNumber type="number" maxFractionDigits="0"  value="${back+2 }" />" aria-label="Next"> 
									<span aria-hidden="true">&raquo;</span></a>
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
            <a href="./video.do" class="menu_button4"
              >&nbsp;&nbsp;교육용 컨텐츠</a
            >
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
