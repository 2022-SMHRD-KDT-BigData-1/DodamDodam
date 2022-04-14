<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>2022 MINI HOMEPAGE</title>
    <link rel="stylesheet" href="${path}/resources/static/font.css" />
    <link rel="stylesheet" href="${path}/resources/static/layout.css" />
    <link rel="stylesheet" href="${path}/resources/static/home.css" />
    <link rel="stylesheet" href="${path}/resources/static/board2.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
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
					<form action="joinInsert.do" method="post">
						<table style="width: 500px; margin:auto; text-align: center;"  class="table table-hover table-bordered">
							<tr>
								<td>아이디</td>
								<td>
									<input id="m_id" style="float:left; width:200px;" required="required" class="form-control" type="text" name="m_id" placeholder="Enter ID">
									<button class="btn btn-info btn-sm" id="idCheck" type="button">중복체크</button>
									<br><br>
									<p id="resultIdCheck" style="text-align:left">테스트용입니다.</p>
								</td>
							</tr>
							<tr>
								<td>비밀번호</td>
								<td><input id="m_pw" readonly="readonly" required="required" class="form-control" type="password" name="m_pw" placeholder="Enter PW"></td>
							</tr>
							<tr>
								<td>닉네임</td>
								<td><input id="m_nick" readonly="readonly" required="required" class="form-control" type="text" name="m_nick" placeholder="Enter NICK"></td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td><input id="m_tel" readonly="readonly" required="required" class="form-control" type="tel" name="m_tel" placeholder="Enter TEL"></td>
							</tr>
							<tr>
								<td>성별</td>
								<td>
								남 : <input id="m_gender" readonly="readonly" required="required" class="form-control" type="radio" name="m_gender">
								여 : <input id="m_gender" readonly="readonly" required="required" class="form-control" type="radio" name="m_gender">
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
            <a href="diary.do" class="menu_button2">&nbsp;&nbsp;육아일기</a>
            <a href="./photo.do" class="menu_button3">&nbsp;&nbsp;사진첩</a>
            <a href="./board.do" class="menu_button4">&nbsp;&nbsp;게시판</a>
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
      <a href="login.do"><button type="button" class="btn_main1" style="background-color: rgb(209, 191, 224); color: rgb(15, 15, 13); margin-left: 30px; margin-top: 10px;">로그인</button
   		></a><a href="join.do"><button type="button" class="btn_main2" style="background-color:  rgb(209, 191, 224); color: rgb(15, 15, 13); margin-left: 30px; margin-top: 10px;">회원가입</button></a>
      <div class="lb-audio">
        <audio controls>
          <source src="${path}/resources/static/audios/order-99518.mp3" type="audio/mp3">  
        </audio>
    </div>
    </div>
    
    <script>
		
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
			
			if(data.id == null) {
				$('p').text("사용가능한 ID 입니다.");
				$('p').css('color','blue');
				$('#m_pw').removeAttr("readonly");
				$('#m_nick').removeAttr("readonly");
				$('#m_tel').removeAttr("readonly");
				$('#m_gender').removeAttr("readonly");
			} else {
				$('p').text("중복된 ID 입니다.");
				$('p').css('color','red');
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
