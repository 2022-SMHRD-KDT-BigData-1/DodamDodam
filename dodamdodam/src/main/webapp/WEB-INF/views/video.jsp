<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" /> 
    <title>도담도담</title>
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
    <style>
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
    width: 600px;
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
    width: 450px;
    padding-right: 47px;
        margin-top:10px;
}

.blog_list_info span {
    font-size: 16px;
    color: blue;
      font-weight:bold;

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
.blog_list_wrap2 {
  padding-top: 18px;
    border-bottom: solid 1px #dae1e6;
    width: 600px;
    display: flex;
    flex-direction: row;
    float: right;
   

}

.blog_list_wrap2 li {
    margin-bottom: 18px;
}

.blog_list_wrap2 li a {
    display: flex;
    flex-wrap: wrap;
    justify-content: flex-start;
    align-items: center;
}

.blog_list_wrap2 li a img {
    width: 170px;
    height: 114px;
    margin-right: 21px;
}

.blog_list_info {
    width: 450px;
    padding-right: 47px;
        margin-top:10px;
}

.blog_list_info span {
    font-size: 16px;
    color: blue;
    margin-top:10px;
    font-weight:bold;
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

                  <div class="miniroom_contents">
                    <div class="blog_list_wrap">
                      <ul>
                          <span style="color: green; font-family: 'Single Day', cursive; font-size: 24px;">EBS 교육 컨텐츠</span>
                        <li>
                          <a href="#">
                            <img src="${path}/resources/static/images/우리집유치원.jpg" width="170px" height="114px">
                            <div class="blog_list_info">
                              <span>우리집 유치원</span>

                              <p>
                                (1) 아이들에게 즐거운 놀이경험 지원 
  (2) 부모님들의 보육/교육에 대한 부담완화 
  (3) EBS의 모든 유아프로그램콘텐츠를 재구성한 놀이중심.유아중심 실천
                              </p>

                            </div>
                          </a>
                        </li>
                        <li>
                          <a href="#">
                            <img src="${path}/resources/static/images/꾸미와 토리.jpg" width="170px" height="114px">
                            <div class="blog_list_info">
                              <span>꾸미와 토리</span>

                              <p>유아어린이 예술교육 프로젝트 안녕 예술아
                                (1) 유아예술기획 꾸미와 토리 
                                (2) 예술아 놀자 
                                (3) 예술교육 다큐 아티스트
                              </p>

                            </div>
                          </a>
                        </li>
                        <li>

                      
                          <a href="#">
                            <img src="${path}/resources/static/images/내 친구 몬덕이.jpg" width="170px" height="114px">
                            <div class="blog_list_info">
                              <span>내 친구 몬덕이</span>

                              <p>
                                1. 2019 개정 누리과정에 입각한 커리큘럼을 개발하고 유아와 학부모교육콘텐츠를 제작하여, 
  2. 창의적 감성과 정서적 공감 능력이 풍부한 어린이로 성장할 수 있도록 합니다.
                              </p>

                            </div>
                          </a>
                        </li>
  
                      </ul>
                    </div>
                    <div class="blog_list_wrap2">
                      <ul>
                          <span style="color: green; font-family: 'Single Day', cursive; font-size: 24px;">쥬니어네이버 교육 컨텐츠</span>
                        <li>
                          <a href="#">
                            <img src="${path}/resources/static/images/핑크퐁.jpg" width="170px" height="114px">
                            <div class="blog_list_info">
                              <span>핑크퐁</span>

                              <p>
                                핑크퐁 은 글로벌 유·아동 브랜드로,
                                다양한 채널, 제품, 도서, 교구, 팝업스토어, 뮤지컬에 이르기까지
                                일상생활 속 다양한 영역에서 전 세계적으로 사랑받고 있습니다.
                              </p>

                            </div>
                          </a>
                        </li>
                        <li>
                          <a href="#">
                            <img src="${path}/resources/static/images/코코몽.jpg" width="170px" height="114px">
                            <div class="blog_list_info">
                              <span>코코몽</span>

                              <p>
                                건강에너지가 가득한 비밀음식을 찾아 떠나는 코코몽과 친구들! 
                                코코몽 친구들과 함께 냉장고나라를 모험하며 아이들은 음식의 소중함을 배우고 편식 없는 식습관을 갖게 됩니다.
                              </p>

                            </div>
                          </a>
                        </li>
                        <li>
                          <a href="#">
                            <img src="${path}/resources/static/images/트니트니.jpg" width="170px" height="114px">
                            <div class="blog_list_info">
                              <span>트니트니</span>

                              <p>
                                트니트니는 ‘튼튼한 아이’의 순우리말 표현으로 독창적인 
                                스토리와 자체개발 놀이교구에 아이들의 신체활동을 접목
                                시켜 1세~7세 아이들에게 다양한 신체활동 놀이프로그램
                                을 제공하는 ‘영유아 신체활동 교육프로그램’ 입니다.
                              </p>

                            </div>
                          </a>
                        </li>

                      </ul>
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
