<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>도담도담</title>
    <link rel="stylesheet" href="${path}/resources/static/font.css" />
    <link rel="stylesheet" href="${path}/resources/static/layout.css" />
    <link rel="stylesheet" href="${path}/resources/static/home.css" />
    <link rel="stylesheet" href="${path}/resources/static/board2.css" />
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
              		<h1 style="text-align:center; color:#FFA9AA;">회원 가입</h1>
              	</div>
              	<div class="panel-body">
					<form id="join" action="joinInsert.do" method="post">
						<table style="width: 500px; margin:auto; text-align: center;"  class="table table-hover table-bordered">
							<tr>
								<td>아이디</td>
								<td>
									<input id="m_id" style="float:left; width:200px;" required="required" class="form-control" type="text" name="m_id" placeholder="아이디를 입력하세요">
									<button class="btn btn-info btn-sm" id="idCheck" type="button">중복체크</button>
									<br><br>
									<p id="resultIdCheck" style="text-align:left">테스트용입니다.</p>
								</td>
							</tr>
							<tr>
								<td>비밀번호</td>
								<td><input id="m_pw" readonly="readonly" required="required" class="form-control" type="password" name="m_pw" placeholder="비밀번호를 입력하세요"></td>
							</tr>
							<tr>
								<td>닉네임</td>
								<td><input id="m_nick" readonly="readonly" required="required" class="form-control" type="text" name="m_nick" placeholder="닉네임을 입력하세요"></td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td><input id="m_tel" readonly="readonly" required="required" class="form-control" type="tel" name="m_tel" placeholder="전화번호를 입력하세요"></td>
							</tr>
							<tr>
								<td>성별</td>
								<td>
									<input class="form-check-input" type="radio" name="m_gender" id="m_gender" value="남" checked />
									<label class="form-check-label" for="male"> 남성 </label>
									<input class="form-check-input" type="radio" name="m_gender" id="m_gender" value="여" />
									<label class="form-check-label" for="female"> 여성 </label>
								</td>
							</tr>						
							<tr>
								<td colspan="2">
									<button type="submit" class="btn btn-info btn-sm">회원가입</button>
								</td>
							</tr>
						</table>
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
    
    <script>
    
    	$("#id").on('click', function(){
    		
    		alert('회원가입 성공!!');
    		
    	});
		
		$("#idCheck").on('click', function(){
			
			//html에 id값 가져오기
			var id = $('#m_id').val();
			$.ajax({
				url : "idCheck.do",
				type : "POST",
				dataType : "JSON",
				//id를 보내는 아이디
				data : {"id" : id},
				success : resultJson,
				error : function(e){
					console.log(e);
				}
			});
		});
		
		function resultJson(data){
			//이미 있는 id의 회원정보가 넘어오면 resultIdCheck태그 안에
			//이미 존재하는 아이디 입니다. 글자를
			//아니라면 사용가능한 아이디 입니다. 글자를 넣어주세요
			console.log(data);
			
			if(data.m_id == null) {
				$('#resultIdCheck').text("사용가능한 ID 입니다.");
				$('#resultIdCheck').css('color','blue');
				$('#m_pw').removeAttr("readonly");
				$('#m_nick').removeAttr("readonly");
				$('#m_tel').removeAttr("readonly");
				$('#m_gender').removeAttr("readonly");
			} else {
				$('#resultIdCheck').text("중복된 ID 입니다.");
				$('#resultIdCheck').css('color','red');
				$('#m_pw').attr("readonly", true);
				$('#m_nick').attr("readonly", true);
				$('#m_tel').attr("readonly", true);
				$('#m_gender').attr("readonly", true);
			}
			
		}
		
		$('.form-control').on('click',function(){
			var text = this.getAttribute("readonly");
			if(text == 'readonly'){
				alert('중복체크를 먼저해주세요.');
			}
		});
		
		
	</script>
    
</body>
</html>
