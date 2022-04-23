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
       * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    outline: none;
}

ul,
li {
    list-style: none;
}

a {
    color: #000;
    text-decoration: none;
}

input,
textarea {
    outline: none;
}

.clearfix {
    clear: both;
}

.container {
    width: 1130px;
    margin: 0 auto;
}

button {
    border: none;
}


/*main_blog*/
#blog_wrap {
    padding-top: 35px;
}

.blog_header {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    align-items: center;
    padding-bottom: 17px;
}

.left_header {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
}

.left_header h3 {
    font-size: 14px;
    margin-right: 8px;
}

.left_header span {
    font-size: 12px;
    color: gray;
}

.right_header {
    display: flex;
    flex-wrap: wrap;
    justify-content: flex-end;
    align-items: center;
}

.right_header span {
    font-size: 12px;
    color: gray;
}

.right_header span strong {
    color: #000;
}

/*main_blog_nav*/
.blog_nav ul {
    overflow: hidden;
    border: solid 1px #eae1e6;
}

.blog_nav ul li {
    float: left;
    width: 12.5%;
    height: 49px;
    border-right: solid 1px #eae1e6;
}

.blog_nav ul li:last-child {
    border-right: none;
}

.blog_nav ul li a {
    display: block;
    width: 100%;
    height: 100%;
    line-height: 49px;
    text-align: center;
}

/*main_blog_list*/
.blog_list_wrap {
    padding-top: 18px;
    border-bottom: solid 1px #dae1e6;
    width: max-content;
    display: flex;
    flex-direction: row;
    float: left;
    margin-left: 50px;

}

.blog_list_wrap li {
    margin-bottom: 18px;
}

.blog_list_wrap li a {
    display: flex;
    flex-wrap: wrap;
    justify-content: flex-start;
    align-items: center;
}

.blog_list_wrap li a img {
    width: 170px;
    height: 114px;
    margin-right: 21px;
}

.blog_list_info {
    width: 559px;
    padding-right: 47px;
}

.blog_list_info span {
    font-size: 12px;
    color: #35ae5e;
}

.blog_list_info h4 {
    font-size: 13px;
}

.blog_list_info p {
    font-size: 13px;
}

.date_wrap span {
    color: #505050;
}

.age_info{
    display: table;
    float: right;
    color: black;
    font-size: 20px;
    font-weight: 900;
    font-family: 'Single Day', cursive;
}
.age_info span{
    display: table;
    padding-left: 3px;
    margin-right: 150px;
    margin-top: 40px;
    text-align: left;
    vertical-align: middle;
    font-size: 30px;
}
.age_info:hover{
    cursor: pointer;
}

/*blog_media*/
.blog_media_wrap {
    clear: both;
    height: 200px;
}

.blog_media_wrap ul {
  display: flex; 
  flex-wrap: wrap;
  justify-content: space-between;
  align-items: center; 
  padding: 18px 0;
  border-bottom: solid 1px #dae1e6;
}

.blog_media_wrap ul li {}

.blog_media_wrap ul li img {}

.blog_media_info {
  padding-top: 12px;
  color: black;
}

.blog_media_info h4 {
  font-size: 13px;
}

.blog_media_info span {
  font-size: 12px;
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
              
              
                 <div class="miniroom_contents">
                    <div class="blog_list_wrap">
                        <ul>
                            <strong style="color: #000; font-family: 'Single Day', cursive; font-size: 24px;">블로그 정보</strong>
                          <li>
                            <a href="https://m.post.naver.com/viewer/postView.nhn?volumeNo=13997572&memberNo=12161421">
                              <img src="${path}/resources/static/images/1_checklist.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>1살 육아정보</span>
                                <h4>아이 발달 체크리스트</h4>
                                <p>
                                  	영아의 발달 과정을 평가하는 목적은 영아의 현재 수준을 파악하여 영아의 최적의 발달을 돕는데 있습니다. 영아기는 한 인간의 일생을 통해 다른 어느 시기보다 발달이 급속도로 이루어지는 시기입니다.
                                </p>
                                <div class="date_wrap">
                                  <span>네이버 포스트</span>
                                  <span>7일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://post.naver.com/viewer/postView.nhn?volumeNo=16993209&memberNo=37305962">
                              <img src="${path}/resources/static/images/edu1.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>2살 육아정보</span>
                                <h4>2세아이 발달팁</h4>
                                <p>
                                   	...우리 아이들은 제법 잘 걷고 뛰어다니는 모습을 보입니다. 운동 기술이 꽃피우고 언어 발달도 능숙해집니다...
                                </p>
                                <div class="date_wrap">
                                  <span>네이버 포스트</span>
                                  <span>13일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://brunch.co.kr/@pictorygogo/65">
                              <img src="${path}/resources/static/images/baby.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>3살 육아정보</span>
                                <h4>생후부터 3살까지 아기 뇌의 발달 속도 도움되는 육아팁</h4>
                                <p>
                                  	'아기 두뇌 교육'에 대한 괌심이 점차 커지고 있습니다. 그럼에도 불구하고 두뇌를 교육한다는 개념 자체는 아직까지 많이 낯설죠. '아기의 두뇌는 왜 교육해야하는 것일까?'...
                                </p>
                                <div class="date_wrap">
                                  <span>브런치</span>
                                  <span>24일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://www.maeili.com/cms/contents/contentsView.do?idx=5723&categoryCd1=5&categoryCd2=1&categoryCd3=1&reCome=1&gubn=1">
                              <img src="${path}/resources/static/images/baby.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>4살 육아정보</span>
                                <h4>4세아이 발달특징</h4>
                                <p>
                                    	4세는 발달의 전환점이 되는 시기로, 자신의 능력을 향상시키기 위한 노력을 합니다. 아이는 신체적으로 더 성장했고, 더 많은 에너지...
                                </p>
                                <div class="date_wrap">
                                  <span>매일아이</span>
                                  <span>2달전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://brunch.co.kr/@sjenny00/18">
                              <img src="${path}/resources/static/images/baby.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>5살 육아정보</span>
                                <h4>5세가 되면 달라지는 11가지</h4>
                                <p>
                                    	'아기'로서 가장 귀여움이 만개한 나이인 5세! 아이가 이제 더이상 '아기'가 아니고 완연한 '어린이'가 되어버릴 것 같다는 아쉬움...
                                </p>
                                <div class="date_wrap">
                                  <span>매일아이</span>
                                  <span>2달전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                        </ul>
                      </div>

                      <div class="age_info">
                          <span style="background-color: rgb(255, 232, 197);">1살 육아정보</span>
                        </br>
                          <span style="background-color: rgb(255, 207, 188);">2살 육아정보</span>
                        </br>
                          <span style="background-color: rgb(255, 189, 151);">3살 육아정보</span>
                        </br>
                          <span style="background-color:#ffa977;">4살 육아정보</span>
                        </br>
                          <span style="background-color: rgb(255, 158, 94);">5살 육아정보</span>
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
    
   <div class="sideform_main" style="background-color: #d5d5d5;">
      <img src="${path}/resources/static/images/메인 사이드폼 사진.jpg" width="230px" height="220px"/><c:choose
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