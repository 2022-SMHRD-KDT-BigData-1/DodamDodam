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
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
<style>
#choose1 {
    float:left;
    width:600px;
    height: 550px;
    background-color: white;
    margin-left: 20px;
    color: #000;
    font-family: 'Single Day', cursive ;
    text-align: center;
    font-size: 25px;
    
}
#choose2 {
    float:right;
    width:600px;
    height: 550px;
    margin-right: 20px;
    color: #000;
    background-color: white;
    font-family: 'Single Day', cursive ;
    text-align: center;
    font-size: 25px;
}

#choose1:hover{
    cursor: pointer;
}
#choose2:hover{
    cursor: pointer;
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
              <div class="home_contents" style="overflow: auto; width: 1000px; height: 800px">
              
              	<div class="miniroom_contents"> 
                    <h1 style="color: black; text-align: center;
                    font-family: 'Dongle', sans-serifs; font-size: 50px;">원하는 게시판을 선택해주세요!</h1>
                     <a href="board.do?pageNum=1"><div id="choose1" style="background-color: rgb(255, 255, 195);">
                        소통 게시판
                        <div><img src="/static/images/conversation.png" width="320px" style="margin-top: 150px;"> </div>
                    </div></a>
                    
                    <a href="board2.do?pageNum=1"><div onclick="location.href=/board2.do" id="choose2" style="background-color: rgb(205, 237, 255);">
                        물건 나눔/거래 게시판
                        <div><img src="/static/images/people-trading.png" width="320px" style="margin-top: 150px;"> </div>
                    </div></a>
                </div>
              </div>
            </div>
          </div>
          <div class="menu_bar">
            <a href="./home.do" class="menu_button1">&nbsp;&nbsp;홈</a>
            <a href="./diary.do" class="menu_button2">&nbsp;&nbsp;육아일기</a>
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
