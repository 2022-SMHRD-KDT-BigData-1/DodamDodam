<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="UTF-8" />
    <title>도담도담</title>
    <script src="${path}/resources/static/code/highcharts.js"></script>
    <script src="${path}/resources/static/code/modules/exporting.js"></script>
	<script src="${path}/resources/static/code/modules/export-data.js"></script>
	<script src="${path}/resources/static/code/modules/accessibility.js"></script>
	<script src="${path}/resources/static/code/highcharts-more.js"></script>
	<script src="${path}/resources/static/code/modules/solid-gauge.js"></script>
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
#update_height{
	position: absolute;
	bottom : 5%;
}
#yechuk2{
	position: absolute;
	top : 70%;
	left: 35%;
	font-size: 40px;
}

.highcharts-figure .chart-container {
    width: 300px;
    height: 200px;
    float: left;
}

.highcharts-figure,
.highcharts-data-table table {
    width: 600px;
    margin: 0 auto;
}

.highcharts-data-table table {
    font-family: Verdana, sans-serif;
    border-collapse: collapse;
    border: 1px solid #ebebeb;
    margin: 10px auto;
    text-align: center;
    width: 100%;
    max-width: 500px;
}

.highcharts-data-table caption {
    padding: 1em 0;
    font-size: 1.2em;
    color: #555;
}

.highcharts-data-table th {
    font-weight: 600;
    padding: 0.5em;
}

.highcharts-data-table td,
.highcharts-data-table th,
.highcharts-data-table caption {
    padding: 0.5em;
}

.highcharts-data-table thead tr,
.highcharts-data-table tr:nth-child(even) {
    background: #f8f8f8;
}

.highcharts-data-table tr:hover {
    background: #f1f7ff;
}

@media (max-width: 600px) {
    .highcharts-figure,
    .highcharts-data-table table {
        width: 100%;
    }

    .highcharts-figure .chart-container {
        width: 300px;
        float: none;
        margin: 0 auto;
    }
}

.sideform_main {
	border-radius: 5%;
	width: 300px;
	height: 459px;
}
#yechuk{
	position: absolute;
	left : 50%;
	bottom :-25%;
	transform:translate(-5%, -50%);
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
				    	</div>
					</div>
					
					
					
					
					<!-- 키 예측 창 -->
					<div id="update_height" align="center" style="color: black; font-family:'Single Day', cursive; width: 1300px; height: 300px;">
						<div align="center" style="background-color: whitesmoke; width: 20%; height: 100%; float:left; margin-left: 80px;">
							<form  action="http://f3.project-jupyter.ddns.net:8873/height" method="post">
								<br><br><br><br>
								자녀 키 값 : <br><br>
								<input type="number" step="0.01" id="n_height" name="height">
								<br><br>
								<button type="submit"  id="resultPredict" style="width: 100px; height: 30px; font-size: 16px; font-weight: bolder;">분석</button>
							</form>
						</div>
						<div id="result" align="center" style="background-color:pink; width:80%; height:100%;  ">
							키 예측 모델 입니다.
							
							신생아 키를 입력하시면 5~6세 때의 키를 예측 해보실 수 있습니다.
							
							표준키의 백분위 오차를 바탕으로 예측한 결과로 크게 차이가 나지 않는다면 
							우리 아이는 정상범주로 성장하는 중입니다. 
							(단, 최종 키는 소수점 아래 두자리만 나타내는 것으로 결과값은 입력 키에 따라 상이합니다.)
							<h1 id = "yechuk2"></h1>
							<div id = "yechuk">
								<figure class="highcharts-figure">
								    <div id="container-speed" class="chart-container"></div>
								    <div id="container-rpm" class="chart-container"></div>
								</figure>
							</div>
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
    
    <script type="text/javascript">
	   
	    
	  //쿼리스트링 가져오기 
		const url = new URL(window.location.href);
		const urlParams = url.searchParams;
		var tr = 0; 
		tr = urlParams.get('tr');
		console.log(tr)	
		tr = parseFloat(tr);
		
		if ( tr > 50){
			
			$('#yechuk2').text(tr+'Cm!')
		}
		  var gaugeOptions = {
				    chart: {
				        type: 'solidgauge'
				    },

				    title: null,

				    pane: {
				        center: ['50%', '85%'],
				        size: '150%',
				        startAngle: -90,
				        endAngle: 90,
				        background: {
				            backgroundColor:
				                Highcharts.defaultOptions.legend.backgroundColor || '#EEE',
				            innerRadius: '60%',
				            outerRadius: '100%',
				            shape: 'arc'
				        }
				    },

				    exporting: {
				        enabled: false
				    },

				    tooltip: {
				        enabled: false
				    },

				    // the value axis
				    yAxis: {
				        stops: [
				            [0.1, '#55BF3B'], // green
				            [0.5, '#DDDF0D'], // yellow
				            [0.9, '#DF5353'] // red
				        ],
				        lineWidth: 0,
				        tickWidth: 0,
				        minorTickInterval: null,
				        tickAmount: 2,
				        title: {
				            y: -70
				        },
				        labels: {
				            y: 16
				        }
				    },

				    plotOptions: {
				        solidgauge: {
				            dataLabels: {
				                y: 5,
				                borderWidth: 0,
				                useHTML: true
				            }
				        }
				    }
				};

				// The speed gauge
				var chartSpeed = Highcharts.chart('container-speed', Highcharts.merge(gaugeOptions, {
				    yAxis: {
				        min: 105,
				        max: 122,
				        title: {
				            text: '나의 자녀 (6세) 예측 키 (cm)'
				        }
				    },

				    credits: {
				        enabled: false
				    },

				    series: [{
				        name: 'Speed',
				        data: [tr],
				    }]

				}));
    </script>
    
    
</body>
</html>
