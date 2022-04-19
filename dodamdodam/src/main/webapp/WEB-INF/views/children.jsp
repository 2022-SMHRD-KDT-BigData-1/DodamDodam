<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
              		<h1 style="text-align:center; color:#FFA9AA;">자녀정보 페이지</h1>
              	</div> 	
				<section class="notice">
				  <!-- Children List area -->
				    <div class="panel-body">
				    	<table class="table table-hover table-bordered" border="1px">
				    		<tr class="success">
				    			<td>no</td>
				    			<td>아이 이름</td>
				    			<td>생일</td>
				    			<td>성별</td>
				    		</tr>
				    		<c:forEach var="vo" items="${list}" varStatus="i">
				    		<tr>
				    			<td>${vo.c_seq}</td>
				    			<td><a href="childrenContent.do?c_seq=${vo.c_seq}">${vo.c_name}</a></td>
				    			<td>${vo.c_birthdate }</td>
				    			<td>${vo.c_gender }</td>
				    		<tr>
				    		</c:forEach>
				    	</table>
				    	<a href="childrenInsertForm.do"><button class="btn btn-warning">자녀정보추가</button></a>
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
            <a href="./info.do" class="menu_button4">&nbsp;&nbsp;육아 정보</a>
            <a href="./video.do" class="menu_button4">&nbsp;&nbsp;교육용 컨텐츠</a>
          </div>
        </div>
      </div>
    </div>
    <div class="sideform_main" style="background-color: rgba(238, 176, 212, 0.219);">
      <img src="${path}/resources/static/images/unnamed.jpg" width="225px" align="middle"/><c:choose
      			><c:when test="${not empty member}"
      			><p style=" font-style: inherit; font-size: 15px; color: black; font-weight: bold; margin: 1px; text-align: center;">${member.m_nick}님 환영합니다.</p
      			><a href="memberUpdateForm.do"><button type="button" class="btn_main1" style="background-color: rgb(209, 191, 224); color: rgb(15, 15, 13); margin-left: 10px">개인정보수정</button></a
			    ><a href="children.do"><button type="button" class="btn_main2" style="background-color:  rgb(209, 191, 224); color: rgb(15, 15, 13); margin-left: 10px">자녀정보</button></a
			    ><a href="logout.do"><button type="button" class="btn_main2" style="background-color:  rgb(209, 191, 224); color: rgb(15, 15, 13); margin-left: 10px">로그아웃</button></a>
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
</body>
</html>
