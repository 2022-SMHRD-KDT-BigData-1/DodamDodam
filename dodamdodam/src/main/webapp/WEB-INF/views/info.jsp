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
    <title>도담도담</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${path}/resources/static/font.css" />
    <link rel="stylesheet" href="${path}/resources/static/layout.css" />
    <link rel="stylesheet" href="${path}/resources/static/home.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Dongle:wght@400;700&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Dongle:wght@400;700&family=Poor+Story&family=Single+Day&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Dongle:wght@400;700&family=Single+Day&display=swap" rel="stylesheet"/>
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
    background-color: white;
    font-size: 20px;
    font-weight: 900;
    font-family: 'Single Day', cursive;
}
.age_info button{
    display: table;
    padding-left: 3px;
    margin-right: 150px;
    margin-top: 40px;
    text-align: left;
    vertical-align: middle;
    font-size: 30px;
    font-family: 'Single Day', cursive
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
.btn_main1 {
	cursor: pointer;
	border-color: coral;
	border: 2px; 
}
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
                 
                 
                 
                 	
                 	<!-- Info_Main -->
                    <div class="blog_list_wrap" id="info_main" style="display: none;">
                        <strong style="color: #000; font-family: 'Single Day', cursive; font-size: 24px;">육아정보 메인</strong><hr>
                        <ul>
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
                              <img src="${path}/resources/static/images/2_tip9.jpg" width="170px" height="114px">
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
                              <img src="${path}/resources/static/images/3_brain.jpg" width="170px" height="114px">
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
                              <img src="${path}/resources/static/images/4_grow.jpg" width="170px" height="114px">
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
                              <img src="${path}/resources/static/images/5_different.jpg" width="170px" height="114px">
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
                      
                      
                      
                      
                      <!-- 1살 육아정보 -->
                      <div class="blog_list_wrap" id="info_1" style="display: none;">
                        <strong style="color: #000; font-family: 'Single Day', cursive; font-size: 24px;">1살 육아정보</strong><hr>
                        <ul>
                          <li>
                            <a href="https://www.maeili.com/cms/contents/contentsList.do?cateCd1=3&gubn=1">
                              <img src="${path}/resources/static/images/1_father.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>1살 육아정보</span>
                                <h4>0~12개월 육아맞춤정보</h4>
                                <p>
                                  	아이가 이물질을 삼켰을 때!?, 질식을 조심하세요!, 코피가 날 때 응급 처치법...
                                </p>
                                <div class="date_wrap">
                                  <span>네이버 포스트</span>
                                  <span>7일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://blog.naver.com/momtalk2013/221517515892">
                              <img src="${path}/resources/static/images/1_sleep.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>1살 육아정보</span>
                                <h4>아이의 낮잠 수면시간</h4>
                                <p>
                                   	아이들은 자면서 큰다는 말이 있듯이, 잠은 아이들 발달 과정에서 매우 중요한 역할을 하는데요. 월령별 아기들이 취해야 할...
                                </p>
                                <div class="date_wrap">
                                  <span>네이버 포스트</span>
                                  <span>8일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="http://www.bfmed.co.kr/subView2.html?cate=3&cate=3&idx=92">
                              <img src="${path}/resources/static/images/1_milk.png" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>1살 육아정보</span>
                                <h4>개월별 모유수유 간격 및 횟수</h4>
                                <p>
                                  	어린 아가들은 밤에도 먹어야 합니다. 이 때도 아가가 먹고 싶어할 때 먹어야 하기 때문에 엄마와 아가가 같은 방을 사용하는 것이 무엇보다도 중요합니다. 너무 조금씩 자주 먹거나 먹다가 잠들어서...
                                </p>
                                <div class="date_wrap">
                                  <span>대한 모유수유 의사회</span>
                                  <span>10일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://m.post.naver.com/viewer/postView.naver?volumeNo=16569908&memberNo=12161421">
                              <img src="${path}/resources/static/images/1_grow.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>1살 육아정보</span>
                                <h4>개월별 아이 필수 발달 육아정보</h4>
                                <p>
                                    	출생에서 생후 1개월 신생아의 빨기 행동은 굉장히 기본적인 욕구입니다. 처음에는 그저 본능적으로 빨던 행동에서 점차 모유를 찾기 시작하고 울음을 통해 자신의 욕구를 표현합니다. 1개월까지의 영아는...
                                </p>
                                <div class="date_wrap">
                                  <span>네이버 포스트</span>
                                  <span>11일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://m.post.naver.com/viewer/postView.nhn?volumeNo=13997572&memberNo=12161421">
                              <img src="${path}/resources/static/images/1_checklist.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>1살 육아정보</span>
                                <h4>1~12개월 우리아이 발달 과정 체크리스트</h4>
                                <p>
                                	영아의 발달 과정을 평가하는 목적은 영아의 현재 수준을 파악하여 영아의 최적의 발달을 돕는데 있습니다. 영아기는 한 인간의 일생을 통해 다른 어느 시기보다 발달이 급속도로 이루어지는 시기입니다. 영아 발달 과정 체크리스트를 통해...
                                </p>
                                <div class="date_wrap">
                                  <span>네이버 포스트</span>
                                  <span>13일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                        </ul>
                      </div>
                      
                      
                      
                      
                      
                      
                      <!-- 2살 육아정보 -->
                      <div class="blog_list_wrap" id="info_2" style="display: none;">
                        <strong style="color: #000; font-family: 'Single Day', cursive; font-size: 24px;">2살 육아정보</strong><hr>
                        <ul>
                          <li>
                            <a href="https://m.post.naver.com/viewer/postView.nhn?volumeNo=13997572&memberNo=12161421">
                              <img src="${path}/resources/static/images/2_play.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>2살 육아정보</span>
                                <h4>1~2세 아이를 위한 휴일 육아&놀이 팁</h4>
                                <p>
                                  	휴일 아침, 놀아달라고 조르는 아이들과 무엇을 하고 놀이할까 고민이시죠? 이제 아이의 연령에 맞는 휴일 놀이를 해보세요! 아이의 성장도 쑥쑥!! 애착도 쑥쑥!! 자라납니다.
                                </p>
                                <div class="date_wrap">
                                  <span>차이의 놀이</span>
                                  <span>어제</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://post.naver.com/viewer/postView.nhn?volumeNo=16993209&memberNo=37305962">
                              <img src="${path}/resources/static/images/2_tip9.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>2살 육아정보</span>
                                <h4>2세아이 발달팁</h4>
                                <p>
                                   	...우리 아이들은 제법 잘 걷고 뛰어다니는 모습을 보입니다. 운동 기술이 꽃피우고 언어 발달도 능숙해집니다...
                                </p>
                                <div class="date_wrap">
                                  <span>네이버 포스트</span>
                                  <span>어제</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://post.naver.com/viewer/postView.nhn?volumeNo=28940628&memberNo=3265970">
                              <img src="${path}/resources/static/images/2_love.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>2살 육아정보</span>
                                <h4>바쁜 하루 일과 속 밀도 있는 애착 육아 팁! Step By Step!</h4>
                                <p>
                                  	일과 육아, 두 마리의 토끼를 모두 잡고 싶은 마음은 굴뚝같지만, 결과적으로 두 가지 모두 제대로 해내기엔 많은 어려움이 존재하지요. 어린 연령의 아이를 둔 부모일수록...
                                </p>
                                <div class="date_wrap">
                                  <span>차이의 놀이</span>
                                  <span>4일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://www.maeili.com/cms/contents/contentsView.do?idx=5723&categoryCd1=5&categoryCd2=1&categoryCd3=1&reCome=1&gubn=1">
                              <img src="${path}/resources/static/images/2_angry.png" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>2살 육아정보</span>
                                <h4>그대로만 따라 하면 뚝! 떼쓰기 없애는 양육의 정석</h4>
                                <p>
                                    	달래도 소용없고, 야단치면 일만 커진다. 온몸이 벌게지도록 악을 쓰고 발을 동동 구르다 드러눕는 똥고집 아이. 과연 어디까지 받아주고 어떻게 훈육해야 할지 고민된다면 떼쓰는 이유와 상황에 따라...
                                </p>
                                <div class="date_wrap">
                                  <span>맘큐</span>
                                  <span>7일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://brunch.co.kr/@sjenny00/18">
                              <img src="${path}/resources/static/images/2_play2.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>2살 육아정보</span>
                                <h4>따라 하기 쉬운 언어 발달 놀이</h4>
                                <p>
                                	아이 언어 발달이 가장 활발한 시기는 바로 2~3살입니다. 옹알이를 하던 아이가 어느새 엄마, 아빠라는 말을 익히고 매일 새로운 어휘를 습득하며 대화를 하려고 노력하는 시기....
                                </p>
                                <div class="date_wrap">
                                  <span>브런치</span>
                                  <span>8일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                        </ul>
                      </div>
                      
                      
                      
                      
                      
                      
                      <!-- 3살 육아정보 -->
                      <div class="blog_list_wrap" id="info_3" style="display: none;">
                        <strong style="color: #000; font-family: 'Single Day', cursive; font-size: 24px;">3살 육아정보</strong><hr>
                        <ul>
                          <li>
                            <a href="https://www.chaisplay.com/stories/1111-3%EC%84%B8-%EC%95%84%EC%9D%B4-%EC%97%84%EB%A7%88%EA%B0%80-%EC%95%84%EC%9D%B4-%EB%B0%9C%EB%8B%AC%EC%9D%84-%EB%8F%95%EA%B8%B0-%EC%9C%84%EC%97%90-%EA%BC%AD-%EC%B1%99%EA%B8%B0%EB%A9%B4-%EC%A2%8B%EC%9D%84-34%EA%B0%80%EC%A7%80">
                              <img src="${path}/resources/static/images/3_grow.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>3살 육아정보</span>
                                <h4>3세 아이 엄마가 아이 발달을 돕기 위해 꼭 챙기면 좋을 34가지</h4>
                                <p>
                                  	#1. 몸이 자라는 만큼 힘도 넘치지요. 이시기의 활발한 움직임들은 아이의 힘과 근육을 자라게 합니다. 활동적이 놀이들을...
                                </p>
                                <div class="date_wrap">
                                  <span>차이의 놀이</span>
                                  <span>오늘</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://www.chaisplay.com/stories/293-1-3%EC%84%B8-%EC%95%84%EC%9D%B4-%EC%95%84%EB%B9%A0%EA%B0%80-%EC%95%84%EC%9D%B4%EC%99%80-%EA%BC%AD-%ED%95%B4%EC%95%BC-%ED%95%A0-5%EA%B0%80%EC%A7%80">
                              <img src="${path}/resources/static/images/3_grow2.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>3살 육아정보</span>
                                <h4>1~3세 아이 아빠가 아이와 꼭 해야할 5가지</h4>
                                <p>
                                   	아이는 이제 어느 정도 자신의 의사 표현이 가능해지는 시기가 됩니다. 이 때 아빠와 놀이를 하면서...
                                </p>
                                <div class="date_wrap">
                                  <span>차이의 놀이</span>
                                  <span>하루전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://brunch.co.kr/@pictorygogo/65">
                              <img src="${path}/resources/static/images/3_brain.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>3살 육아정보</span>
                                <h4>생후부터 3살까지 아기 뇌의 발달 속도 도움되는 육아팁</h4>
                                <p>
                                  	'아기 두뇌 교육'에 대한 괌심이 점차 커지고 있습니다. 그럼에도 불구하고 두뇌를 교육한다는 개념 자체는 아직까지 많이 낯설죠. '아기의 두뇌는 왜 교육해야하는 것일까?'...
                                </p>
                                <div class="date_wrap">
                                  <span>브런치</span>
                                  <span>3일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://www.smlounge.co.kr/best/article/26397">
                              <img src="${path}/resources/static/images/3_grow3.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>3살 육아정보</span>
                                <h4>어서와, 3세 육아는 처음이지?</h4>
                                <p>
                                    	동서양을 막론하고 3세 아이를 키우는 부모들의 고통은 비슷한 듯하다. 한국에 '미운 세 살'이 있다면...
                                </p>
                                <div class="date_wrap">
                                  <span>베스트 베이비</span>
                                  <span>4일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://rscce.silla.ac.kr/rscce/index.php?pCode=info013">
                              <img src="${path}/resources/static/images/3_grow4.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>3살 육아정보</span>
                                <h4>3세 발달 특성</h4>
                                <p>
                                    	3세 아이의 주요 발달 특성들에는 어떤 것들이 있는지 살펴보자
                                </p>
                                <div class="date_wrap">
                                  <span>아동교육 연구 지원센터</span>
                                  <span>5일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                        </ul>
                      </div>
                      
                      
                      
                      
                      
                      
                      <!-- 4세 육아정보 -->
                      <div class="blog_list_wrap" id="info_4" style="display: none;">
                        <strong style="color: #000; font-family: 'Single Day', cursive; font-size: 24px;">4살 육아정보</strong><hr>
                        <ul>
                          <li>
                            <a href="https://m.post.naver.com/viewer/postView.nhn?volumeNo=13997572&memberNo=12161421">
                              <img src="${path}/resources/static/images/4_grow1.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>4살 육아정보</span>
                                <h4>4살 아이 훈육법, 놓치기 쉬운 5가지</h4>
                                <p>
                                  	아이가 문제 행동을 할 때 즉각적으로 개입해, 일관적인 훈육을 반복해왔습니다. 그럼에도 4살 아이가 여전히 떼를 부리고 말을 듣지 않으면...
                                </p>
                                <div class="date_wrap">
                                  <span>네이버 포스트</span>
                                  <span>3일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://www.chaisplay.com/stories/405-4%EC%84%B8-%EC%9A%B0%EB%A6%AC-%EC%95%84%EC%9D%B4-%EC%84%B1%EC%9E%A5%EB%B0%9C%EB%8B%AC-%EC%95%8C%EC%95%84%EB%B3%B4%EA%B8%B0">
                              <img src="${path}/resources/static/images/4_grow2.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>4살 육아정보</span>
                                <h4>4세, 우리 아이 성장발달 알아보기</h4>
                                <p>
                                   	우리 아이의 성장발달을 인지발달, 정서/사회성 발달, 언어발달, 신체발달 측면에서 알아보자!
                                </p>
                                <div class="date_wrap">
                                  <span>차이의 놀이</span>
                                  <span>5일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://www.chaisplay.com/stories/1112-4%EC%84%B8-%EC%95%84%EC%9D%B4-%EC%97%84%EB%A7%88%EA%B0%80-%EC%95%84%EC%9D%B4-%EB%B0%9C%EB%8B%AC%EC%9D%84-%EB%8F%95%EA%B8%B0-%EC%9C%84%EC%97%90-%EA%BC%AD-%EC%B1%99%EA%B8%B0%EB%A9%B4-%EC%A2%8B%EC%9D%84-25%EA%B0%80%EC%A7%80">
                              <img src="${path}/resources/static/images/4_grow3.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>4살 육아정보</span>
                                <h4>4세 아이 엄마가 아이 발달을 돕기 위에 꼭 챙기면 좋을 25가지</h4>
                                <p>
                                  	#1. 아이는 이제 36개월이 지났습니다. 태어난지 벌써 3년이나 지난 것이지요. 이제 아이는 자신의 존재에 대해서도 확신이 생깁니다. 고집이 점점...
                                </p>
                                <div class="date_wrap">
                                  <span>차이의 놀이</span>
                                  <span>7일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://www.maeili.com/cms/contents/contentsView.do?idx=5723&categoryCd1=5&categoryCd2=1&categoryCd3=1&reCome=1&gubn=1">
                              <img src="${path}/resources/static/images/4_grow.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>4살 육아정보</span>
                                <h4>4세아이 발달특징</h4>
                                <p>
                                    	4세는 발달의 전환점이 되는 시기로, 자신의 능력을 향상시키기 위한 노력을 합니다. 아이는 신체적으로 더 성장했고, 더 많은 에너지...
                                </p>
                                <div class="date_wrap">
                                  <span>매일아이</span>
                                  <span>11일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://post.naver.com/viewer/postView.nhn?volumeNo=26608339&memberNo=12161421">
                              <img src="${path}/resources/static/images/4_grow4.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>4살 육아정보</span>
                                <h4>4세 잘 키우는 육아의 기본</h4>
                                <p>
                                    	‘미운 네 살’이 되어 버린 우리 아이들. 사실, 네 살의 아이들을 보면 너무 너무 귀엽고 예쁘고 애교도 많고 아직 아기 아기 하잖아요. 그런데 이제 말도 더 잘하고 제법 어른 흉내도 내면서...
                                </p>
                                <div class="date_wrap">
                                  <span>매일아이</span>
                                  <span>13일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                        </ul>
                      </div>
                      
                      
                      
                      
                      
                      
                      
                      <div class="blog_list_wrap" id="info_5" style="display: none;">
                        <strong style="color: #000; font-family: 'Single Day', cursive; font-size: 24px;">5살 육아정보</strong><hr>
                        <ul>
                          <li>
                            <a href="https://m.post.naver.com/viewer/postView.nhn?volumeNo=13997572&memberNo=12161421">
                              <img src="${path}/resources/static/images/5_grow.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>5살 육아정보</span>
                                <h4>5세 아이 발달 돕는 육아팁 8</h4>
                                <p>
                                  	이제는 정말 능숙하게 말하고, 친구들끼리 어울리는 일도 제법 잘 해냅니다. 마치 꼬마 어른 처럼 보이는 5~6살 어른들이죠...
                                </p>
                                <div class="date_wrap">
                                  <span>네이버 포스트</span>
                                  <span>2일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://post.naver.com/viewer/postView.nhn?volumeNo=16993209&memberNo=37305962">
                              <img src="${path}/resources/static/images/5_grow2.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>5살 육아정보</span>
                                <h4>5세 아이 엄마가 아이 발달을 돕기 위해 꼭 챙기면 좋을 38가지</h4>
                                <p>
                                   	아이들은 이제 5살이 되었습니다. 5세 아이들은 구체적인 상황에 대해 무서움을 느낍니다. 예전에는 막연하게...
                                </p>
                                <div class="date_wrap">
                                  <span>차이의 놀이</span>
                                  <span>4일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://www.ibabynews.com/news/articleView.html?idxno=87766">
                              <img src="${path}/resources/static/images/5_grow3.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>5살 육아정보</span>
                                <h4>다섯 살 아이의 ‘이유 없는 반항’…정말 이유가 없을까요?</h4>
                                <p>
                                  	엄마를 때리는 건 잘못된 행동이다. 아이가 엄마를 때리려고 할 때, 그 행동을 못 하게 손이나 몸을 잡아 저지해야 한다. 아이가 흥분했을 때 혼내거나 잔소리하는 건 아무 소용 없다. 흥분해서...
                                </p>
                                <div class="date_wrap">
                                  <span>베이비 뉴스</span>
                                  <span>5일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://m.blog.naver.com/saynow21/222025159756">
                              <img src="${path}/resources/static/images/5_grow4.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>5살 육아정보</span>
                                <h4>5살 아이발달 과정과 놀이 방법 알아보았어요</h4>
                                <p>
                                	상상력과 창의력을 기르기 위한 놀이들을 알아보자
                                </p>
                                <div class="date_wrap">
                                  <span>네이버 블로그</span>
                                  <span>7일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="https://brunch.co.kr/@sjenny00/18">
                              <img src="${path}/resources/static/images/5_different.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>5살 육아정보</span>
                                <h4>5세가 되면 달라지는 11가지</h4>
                                <p>
                                    	'아기'로서 가장 귀여움이 만개한 나이인 5세! 아이가 이제 더이상 '아기'가 아니고 완연한 '어린이'가 되어버릴 것 같다는 아쉬움...
                                </p>
                                <div class="date_wrap">
                                  <span>매일아이</span>
                                  <span>8일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                        </ul>
                      </div>
                      
                      
                      
                      
                      
                      
                      

                      <div class="age_info">
                      	<br>
                      		<button type="button" id="btn_info_main" class="btn_main1" style="background-color: rgb(255, 240, 210);">육아정보 메인</button>
                        <br>
                        	<button type="button" id="btn_info_1" class="btn_main1" style="background-color: rgb(255, 232, 197);">1살 육아정보</button>
                        <br>
                        	<button type="button" id="btn_info_2" class="btn_main1" style="background-color: rgb(255, 207, 188);">2살 육아정보</button>
                        <br>
                        	<button type="button" id="btn_info_3" class="btn_main1" style="background-color: rgb(255, 189, 151);">3살 육아정보</button>
                        <br>
                        	<button type="button" id="btn_info_4" class="btn_main1" style="background-color: rgb(255, 169, 119);">4살 육아정보</button>
                        <br>
                        	<button type="button" id="btn_info_5" class="btn_main1" style="background-color: rgb(255, 158, 94);">5살 육아정보</button>
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
      <c:choose
      			><c:when test="${not empty member}"
      			><img src="${path}/resources/static/images/메인 사이드폼 사진.jpg" width="230px" height ="220px" style="border-radius: 10px"/><p style=" font-style: inherit; font-size: 15px; color: black; font-weight: bold; margin: 1px; text-align: center;">${member.m_nick}님 환영합니다.</p
      			><a href="memberUpdateForm.do"><button type="button" class="btn_main2" style="background-color: #f8e4d9; color: rgb(15, 15, 13); margin-left: 10px;font-family:'Single Day', cursive; font-size:14px">개인정보수정</button></a
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
      <a href="login.do"><button type="button" class="btn_main2" style="background-color: #f8e4d9; font-family:'Poor Story', cursive; font-size:larger; color: rgb(15, 15, 13); margin-left: 30px; margin-top: 10px;">로그인</button
        ></a>&emsp;<a href="join.do"><button type="button" class="btn_main2" style="background-color:  #f8e4d9;  font-family:'Poor Story', cursive; font-size:larger;color: rgb(15, 15, 13); margin-left: 30px; margin-top: 10px;">회원가입</button></a>
		    	</c:otherwise></c:choose
		    	><div class="lb-audio"><audio controls
      	><source src="${path}/resources/static/audios/order-99518.mp3" type="audio/mp3">  
        </audio>
    </div>
    </div>
    <script type="text/javascript">
    	/* 육아수첩 메인 */
	    $('#btn_info_main').on('click',function(){
	
	    	var btnText = $('#btn_info_main').text();
			console.log(btnText)
	    	
			if(btnText == '육아정보 메인'){
				$('#btn_info_main').text('닫기');
				
				$('#info_1').hide();
				$('#info_2').hide();
				$('#info_3').hide();
				$('#info_4').hide();
				$('#info_5').hide();
				
				$('#btn_info_1').text('1살 육아정보');
				$('#btn_info_2').text('2살 육아정보');
				$('#btn_info_3').text('3살 육아정보');
				$('#btn_info_4').text('4살 육아정보');
				$('#btn_info_5').text('5살 육아정보');
				
				
	
				$('#info_main').slideDown(500);
				$("#info_main").css({
		            "display":"block"
		        });
				
				
			} else {
				$('#btn_info_main').text('육아정보 메인');
				$('#info_main').slideUp(500);
				/* $("#main_info").css({
		            "display":"none"
		        }); */
			}
		});
	    
	    $('#btn_info_1').on('click',function(){
	    	
	    	var btnText = $('#btn_info_1').text();
			console.log(btnText)
	    	
			if(btnText == '1살 육아정보'){
				$('#btn_info_1').text('닫기');
				
				$('#info_main').hide();
				$('#info_2').hide();
				$('#info_3').hide();
				$('#info_4').hide();
				$('#info_5').hide();
				
				$('#btn_info_main').text('육아정보 메인');
				$('#btn_info_2').text('2살 육아정보');
				$('#btn_info_3').text('3살 육아정보');
				$('#btn_info_4').text('4살 육아정보');
				$('#btn_info_5').text('5살 육아정보');
				
	
				$('#info_1').slideDown(500);
				$("#info_1").css({
		            "display":"block"
		        });
				
				
			} else {
				$('#btn_info_1').text('1살 육아정보');
				$('#info_1').slideUp(500);
				/* $("#main_info").css({
		            "display":"none"
		        }); */
			}
		});
	    
	    $('#btn_info_2').on('click',function(){
	    	
	    	var btnText = $('#btn_info_2').text();
			console.log(btnText)
	    	
			if(btnText == '2살 육아정보'){
				$('#btn_info_2').text('닫기');
				
				$('#info_main').hide();
				$('#info_1').hide();
				$('#info_3').hide();
				$('#info_4').hide();
				$('#info_5').hide();
				
				$('#btn_info_main').text('육아정보 메인');
				$('#btn_info_1').text('1살 육아정보');
				$('#btn_info_3').text('3살 육아정보');
				$('#btn_info_4').text('4살 육아정보');
				$('#btn_info_5').text('5살 육아정보');
	
				$('#info_2').slideDown(500);
				$("#info_2").css({
		            "display":"block"
		        });
				
				
			} else {
				$('#btn_info_2').text('2살 육아정보');
				$('#info_2').slideUp(500);
				/* $("#main_info").css({
		            "display":"none"
		        }); */
			}
		});
	    
	    $('#btn_info_3').on('click',function(){
	    	
	    	var btnText = $('#btn_info_3').text();
			console.log(btnText)
	    	
			if(btnText == '3살 육아정보'){
				$('#btn_info_3').text('닫기');
				
				$('#info_main').hide();
				$('#info_1').hide();
				$('#info_2').hide();
				$('#info_4').hide();
				$('#info_5').hide();
				
				$('#btn_info_main').text('육아정보 메인');
				$('#btn_info_1').text('1살 육아정보');
				$('#btn_info_2').text('2살 육아정보');
				$('#btn_info_4').text('4살 육아정보');
				$('#btn_info_5').text('5살 육아정보');
	
				$('#info_3').slideDown(500);
				$("#info_3").css({
		            "display":"block"
		        });
				
				
			} else {
				$('#btn_info_3').text('3살 육아정보');
				$('#info_3').slideUp(500);
				/* $("#main_info").css({
		            "display":"none"
		        }); */
			}
		});
	    
	    $('#btn_info_4').on('click',function(){
	    	
	    	var btnText = $('#btn_info_4').text();
			console.log(btnText)
	    	
			if(btnText == '4살 육아정보'){
				$('#btn_info_4').text('닫기');
				
				$('#info_main').hide();
				$('#info_1').hide();
				$('#info_2').hide();
				$('#info_3').hide();
				$('#info_5').hide();
				
				$('#btn_info_main').text('육아정보 메인');
				$('#btn_info_1').text('1살 육아정보');
				$('#btn_info_2').text('2살 육아정보');
				$('#btn_info_3').text('3살 육아정보');
				$('#btn_info_5').text('5살 육아정보');
	
				$('#info_4').slideDown(500);
				$("#info_4").css({
		            "display":"block"
		        });
				
				
			} else {
				$('#btn_info_4').text('4살 육아정보');
				$('#info_4').slideUp(500);
				/* $("#main_info").css({
		            "display":"none"
		        }); */
			}
		});
	    
	    $('#btn_info_5').on('click',function(){
	    	
	    	var btnText = $('#btn_info_5').text();
			console.log(btnText)
	    	
			if(btnText == '5살 육아정보'){
				$('#btn_info_5').text('닫기');
				
				$('#info_main').hide();
				$('#info_1').hide();
				$('#info_2').hide();
				$('#info_3').hide();
				$('#info_4').hide();
				
				$('#btn_info_main').text('육아정보 메인');
				$('#btn_info_1').text('1살 육아정보');
				$('#btn_info_2').text('2살 육아정보');
				$('#btn_info_3').text('3살 육아정보');
				$('#btn_info_4').text('4살 육아정보');
	
				$('#info_5').slideDown(500);
				$("#info_5").css({
		            "display":"block"
		        });
				
				
			} else {
				$('#btn_info_5').text('5살 육아정보');
				$('#info_5').slideUp(500);
				/* $("#main_info").css({
		            "display":"none"
		        }); */
			}
		});
	    
	   	
	   	
	   
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