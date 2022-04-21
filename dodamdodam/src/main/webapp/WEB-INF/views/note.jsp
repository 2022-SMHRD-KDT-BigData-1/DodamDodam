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
              <div class="home_contents" style="width: 1000px; height: 800px">
              	<div class="page_name">
              		<h1 style="text-align:center; color:#FFA9AA; padding-top:10px;">육아 수첩</h1>
              	</div> 	
				<section class="notice"> 
				
				
				
				
				    <!-- Children List area -->
				    <div class="board-list">
				    	<div class="container">
					    	<table class="board-table table-hovered">
					    		<thead>
						    		<tr class="board-table" style="text-align: center; font-weight: bold; ">
						    			<td width="34%">아이 이름</td>
						    			<td width="33%">생일</td>
						    			<td width="33%">성별</td>
						    		</tr>
					    		</thead>
					    		<tbody>
						    		<c:choose>
						    			<c:when test="${member.m_id!=null }">
						    			<c:forEach var="vo" items="${list}" varStatus="i">
							    		<tr>
							    			<td style="font-style:oblique;"><a href="noteChild.do?pageNum=1&c_seq=${vo.c_seq}">${vo.c_name}</a></td>
							    			<td>${vo.c_birthdate }</td>
							    			<td>${vo.c_gender }</td>
							    		<tr>
							    		</c:forEach>
						    			</c:when>
						    			
						    			<c:otherwise>
						    				<script>
						    					alert('로그인하세요');
						    					location.href="login.do"
						    				</script>
						    			</c:otherwise>
						    		</c:choose>
					    		</tbody>
					    	</table>
					    	<div align="right" style="margin-top: 10px">
					    		<button type="button" id="predict" class ="btn_main1" style="width: 100px; height: 30px; font-size: 16px; font-weight: bolder;">키 예측하기</button>
					    	</div>
				    	</div>
					</div>
					
					
					
					
					<!-- 키 예측 창 -->
					<div id="update_height" align="center" style="color: black; display:none; font-family:'Single Day', cursive; width: 1300px; height: 300px;">
						<div align="center" style="background-color: whitesmoke; width: 20%; height: 100%; float:left; margin-left: 80px;">
							<form  action='http://127.0.0.1:7000/' method="post">
								<br><br><br><br>
								자녀 키 값 : <br><br>
								<input type="number" id="n_height" name="n_height">
								<br><br>
								<button type="submit" id="resultPredict" style="width: 100px; height: 30px; font-size: 16px; font-weight: bolder;">예측 값 확인</button>
							</form>
						</div>
						<div id="result" align="center" style="background-color:pink; width:80%; height:100%; display: none; ">
							키 예측 모델 입니다.

							신생아 키를 입력하시면 5~6세 때의 키를 예측 해보실 수 있습니다.
							
							표준키의 백분위 오차를 바탕으로 예측한 결과로 크게 차이가 나지 않는다면 
							우리 아이는 정상범주로 성장하는 중입니다. 
							(단, 최종 키는 소수점 아래 두자리만 나타내는 것으로 결과값은 입력 키에 따라 상이합니다.)
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
    <div class="sideform_main" style="background-color: #d5d5d5;">
      <img src="${path}/resources/static/images/unnamed.jpg" width="230px"/><c:choose
      			><c:when test="${not empty member}"
      			><p style=" font-style: inherit; font-size: 15px; color: black; font-weight: bold; margin: 1px; text-align: center;">${member.m_nick}님 환영합니다.</p
      			><a href="memberUpdateForm.do"><button type="button" class="btn_main1" style="background-color: #f8e4d9; color: rgb(15, 15, 13); margin-left: 10px;font-family:'Single Day', cursive; font-size:14px">개인정보수정</button></a
			    ><a href="children.do"><button type="button" class="btn_main2" style="background-color:  #f8e4d9; color: rgb(15, 15, 13); margin-left: 55px;font-family:'Single Day', cursive; font-size:14px">자녀정보</button></a
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
    
    <!-- 슬라이드 페이지 기능 구현 -->
    <script type="text/javascript">
	    $('#predict').on('click',function(){

	    	var btnText = $('#predict').text();
			console.log(btnText)
	    	
			if(btnText == '키 예측하기'){
				$('#predict').text('닫기');

				$('#update_height').slideDown();
				$("#update_height").css({
		            "display":"block"
		        });
				
			} else {
				$('#predict').text('키 예측하기');
				$('#update_height').slideUp();
				$("#update_height").css({
		            "display":"none"
		        });
			}
		});
	    
	    $('#resultPredict').on('click',function(){

	    	var btnText = $('#resultPredict').text();
	    	console.log(btnText)
	    	
			if(btnText == '예측 값 확인'){
				$('#resultPredict').text('닫기');
				/* $('#result').slideDown(); */
				$("#result").css({
		            "display":"block"
		        });
				
			} else {
				$('#resultPredict').text('예측 값 확인');
				/* $('#result').slideUp(); */
				$("#result").css({
		            "display":"none"
		        });
			}
		});
	    
    </script>
    
    
</body>
</html>
