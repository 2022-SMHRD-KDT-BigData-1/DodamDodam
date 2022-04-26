<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="today" value="<%=new java.util.Date()%>" />
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="date"><fmt:formatDate value="${today}" pattern="yyyy-MM-dd" /></c:set> 
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="UTF-8" />
    <title>도담도담</title>
    <link rel="stylesheet" href="${path}/resources/static/font.css" />
    <link rel="stylesheet" href="${path}/resources/static/layout.css" />
    <link rel="stylesheet" href="${path}/resources/static/home.css" />
    <link rel="stylesheet" href="${path}/resources/static/board.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
    	.form-group {
    		width :700px;
    	}
    </style>
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
              	<div class="page_name" style = "padding-top:30px;">
              		<h1 style="text-align:center; color:#FFA9AA;">육아 수첩 작성</h1>
              	</div>
              
                <div class="Note_insert_form" align="center" style="color:#FFA9AA;">
                  <form class="form-horizontal" action="noteInsert.do" method="post">
                  	<input type="hidden" name="m_id" id="m_id" value="${member.m_id }">
					<div class="form-group" style = "padding-top:30px;">
						<label class="control-label col-sm-2" for="title"> 자녀 : </label>
						<div class="col-sm-8">
							<!-- <input type="text" class="form-control" name="b_title" id="b_title"
								placeholder="Enter title" required="required">
								 -->
							<!-- 자녀 선택  -->
							<select class="form-control" name="c_seq" style="text-align:center;">
									<option value="">아이를 선택해주세요</option>
								<c:forEach var="i" items="${list}">
									<option value="${i.c_seq}">${i.c_name}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="contents">키: </label>
						<div class="col-sm-8">
							<input class="form-control"  name="n_height"
								id="n_height" required="required"></input>
						</div>
						
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="contents">몸무게: </label>
						<div class="col-sm-8">
							<input class="form-control" name="n_weight"
								id="n_weight" required="required"></input>
						</div>
					</div >
					
					<div class ="form-group">
						<label class="control-label col-sm-2" for="contents">백신명: </label>
						<div class="col-sm-8">
							<select class="form-control" name="n_vaccine">
								<option value="없음">접종내역 없음</option>
								<optgroup label="결핵">
									<option value="결핵BCG(피내용)">결핵BCG(피내용), (0개월)</option>
									<option value="결핵BCG(경피용)">결핵BCG(경피용), (0개월)</option>
								</optgroup>
								<optgroup label="B형간염">
									<option value="HepB">HepB, (0개월,1개월,6개월)</option>
								</optgroup>
								<optgroup label="디프테리아,파상풍,백일해">
									<option value="DTaP">DTaP, (2개월,4개월,6개월,15~18개월)</option>
								</optgroup>
								<optgroup label="플리오">
									<option value="IPV">IPV, (2개월,4개월,6개월,만4세~만6세)</option>
								</optgroup>
								<optgroup label="b형헤모필루스 인플루엔자">
									<option value="PRP-T/HbOC">PRP-T/HbOC, (2개월,4개월,6개월,12개월~15개월)</option>
								</optgroup>
								<optgroup label="페렴구균">
									<option value="PCV(단백결합)">PCV(단백결합), (2개월,4개월,6개월,12개월~15개월)</option>
									<option value="PPSV(다당질)">PPSV(다당질), (24개월~만12세 사이)</option>
								</optgroup>
								<optgroup label="홍역,유행성이하선염,풍진">
									<option value="MMR">MMR, (12개월~15개월,만4세~만6세)</option>
								</optgroup>
								<optgroup label="수두">
									<option value="Var">Var, (12개월~15개월)</option>
								</optgroup>
								<optgroup label="A형간염">
									<option value="HepA">HepA, (12개월~36개월)</option>
								</optgroup>
								<optgroup label="일본뇌염">
									<option value="JE(사백신)">JE(사백신), (12개월~36개월, 만6세)</option>
									<option value="JE(생백신)">JE(생백신), (12개월~36개월)</option>
								</optgroup>
								<optgroup label="인플루엔자">
									<option value="Flu(사백신)">Flu(사백신), (6개월부터~만4세까지)</option>
									<option value="Flu(생백신)">Flu(생백신), (24개월부터~만5세까지)</option>
								</optgroup>
								<optgroup label="로타바이러스">
									<option value="RV10">RV10, (2개월,4개월)</option>
									<option value="RV50">RV50, (2개월,4개월,6개월)</option>
								</optgroup>
							</select>
						</div>
					</div>
					
					<div class ="form-group">
						<label class="control-label col-sm-2" for="contents">접종날자: </label>
						<div class="col-sm-8">
							<input class="form-control" type="date" value = "${date }"name = "n_date">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="contents">접종 및<br> 특이사항: </label>
						<div class="col-sm-8">
							<textarea class="form-control" rows="10" style="width:100%;" name="n_significant"
								id="n_significant" required="required"></textarea>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="contents"></label>
						<div class="col-sm-8">
							<button type="reset" class="btn btn-info">취소</button>
							<button type="submit" class="btn btn-info">저장</button>
						</div>
					</div>

					</form>
    			  
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
      <c:choose
      			><c:when test="${not empty member}"
      			><img src="${path}/resources/static/images/메인 사이드폼 사진.jpg" width="230px" height ="220px" style="border-radius: 10px"/><p style=" font-style: inherit; font-size: 15px; color: black; font-weight: bold; margin: 1px; text-align: center;">${member.m_nick}님 환영합니다.</p
      			><a href="memberUpdateForm.do"><button type="button" class="btn_main1" style="background-color: #f8e4d9; color: rgb(15, 15, 13); margin-left: 10px;font-family:'Single Day', cursive; font-size:14px">개인정보수정</button></a
			    ><a href="children.do"><button type="button" class="btn_main2" style="background-color:  #f8e4d9; color: rgb(15, 15, 13); margin-left: 36px;font-family:'Single Day', cursive; font-size:14px">자녀정보</button></a
			    ><a href="logout.do"><button type="button" class="btn_main2" style="background-color:  #f8e4d9; color: rgb(15, 15, 13); margin-right: 12px; float: right;font-family:'Single Day', cursive; font-size:14px">로그아웃</button></a>
					    <c:if test="${member.m_id eq 'admin'}"><a href="memberList.do"
					    	><button type="button" id="memberList" class="btn_main2" style="background-color:  #f8e4d9; color: rgb(15, 15, 13); margin-left: 125px; font-size:10px">회원정보보기</button></a>	
					    </c:if>
		    	</c:when><c:otherwise
		    		><img src="${path}/resources/static/images/noprofile.jpg" width="230px" height ="220px" style="border-radius: 10px"/>      
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
      <a href="login.do"><button type="button" class="btn_main1" style="background-color: #f8e4d9; font-family:'Poor Story', cursive; font-size:larger; color: rgb(15, 15, 13); margin-left: 30px; margin-top: 10px;">로그인</button
        ></a>&emsp;<a href="join.do"><button type="button" class="btn_main2" style="background-color:  #f8e4d9;  font-family:'Poor Story', cursive; font-size:larger;color: rgb(15, 15, 13); margin-left: 30px; margin-top: 10px;">회원가입</button></a>
		    	</c:otherwise></c:choose
		    	><div class="lb-audio"><audio controls
      	><source src="${path}/resources/static/audios/order-99518.mp3" type="audio/mp3">  
        </audio>
    </div>
    </div>
</body>
</html>
