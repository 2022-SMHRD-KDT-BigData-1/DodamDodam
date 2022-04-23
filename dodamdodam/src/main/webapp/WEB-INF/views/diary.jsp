<%@page import="org.springframework.context.annotation.Import"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="today" value="<%=new java.util.Date()%>" />
<!-- 현재날짜 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="date"><fmt:formatDate value="${today}" pattern="yyyy-MM-dd" /></c:set> 
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="UTF-8" />
    <title>도담도담</title>
    <script src="${path}/resources/static/code/highcharts.js"></script>
	<script src="${path}/resources/static/code/modules/wordcloud.js"></script>
	<script src="${path}/resources/static/code/modules/exporting.js"></script>
	<script src="${path}/resources/static/code/modules/export-data.js"></script>
	<script src="${path}/resources/static/code/modules/accessibility.js"></script>
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
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 	<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.2/main.min.css' rel='stylesheet' />
	<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.2/main.min.js'></script>
	<script src="https://code.highcharts.com/highcharts.js"></script>
    <script src='${path}/resources/static/ko.js'></script> <!-- 캘린더 -->
    <script>
    
    if(${empty member}){
    	alert('로그인후 이용가능합니다!');
    	location.href='login.do';
    }
    
	    $(document).ready(function () {
	    	
	    	$.ajax({
				url : "emotionList.do",
				type : "post",
				dataType : "JSON",
				success : emotion,
				error : function(e){
					console.log(e);
				}
			}); //ajax 		    
	    	function emotion(emotionList){
				console.log("감정분석 에이젝스 성공")
				
				var kai = 0;
				
				var date = '${date}';
				
				console.log(emotionList[1])
				
				var joyIdx = [0,0,0,0,0];
				var sorrowIdx = [0,0,0,0,0];
				var angerIdx = [0,0,0,0,0];
				var unrestIdx = [0,0,0,0,0];
				var dateIdx = ['','','','',''];
				
				/* $.each(emotionList, function(index, vo) {
					if('${date}' == vo.d_date){
						todayIdx = index;
					}	//if
				}) */
				
/* 				for(var i = todayIdx; i > todayIdx-5; i--){
					
					if(emotionList[i] != null){
						joyIdx[i] = parseFloat(emotionList[i].e_joy)
						sorrowIdx[i] = parseFloat(emotionList[i].e_sorrow)
						angerIdx[i] = parseFloat(emotionList[i].e_anger)
						unrestIdx[i] = parseFloat(emotionList[i].e_unrest)
						dateIdx[i] = emotionList[i].d_date
					}
				} */
				for(var i = 0; i < 5; i++){
					
					if(emotionList[i] != null){
						joyIdx[i] = parseFloat(emotionList[i].e_joy)
						sorrowIdx[i] = parseFloat(emotionList[i].e_sorrow)
						angerIdx[i] = parseFloat(emotionList[i].e_anger)
						unrestIdx[i] = parseFloat(emotionList[i].e_unrest)
						dateIdx[i] = emotionList[i].d_date
						kai += 1;
					}
				}
				
				
				//막대 그래프 추가
				 Highcharts.chart('container2', {
			            chart: {
			                type: 'column', 
			            },
			            title: {
			                text: '최근 '+kai +'회간의 감정분석 결과에요.'
			            },
			            xAxis: {
			                categories: [dateIdx[0], dateIdx[1], dateIdx[2], dateIdx[3],dateIdx[4]]
			            },
			            yAxis: {
			                min: 0,
			                title: {
			                    text: ''
			                }
			            },
			            tooltip: {
			                pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}</b> ({point.percentage:.0f}%)<br/>',
			                shared: true
			            },
			            plotOptions: {
			                column: {
			                    stacking: 'percent'
			                }
			            },
			            series: [{
			                name: '기쁨',
			                data: [joyIdx[0], joyIdx[1], joyIdx[2], joyIdx[3], joyIdx[4]]
			            }, {
			                name: '분노',
			                data: [angerIdx[0], angerIdx[1], angerIdx[2], angerIdx[3], angerIdx[4]]
			            }, {
			                name: '슬픔',
			                data: [sorrowIdx[0], sorrowIdx[1], sorrowIdx[2], sorrowIdx[3], sorrowIdx[4]]
			            },{
			                name: '불안',
			                data: [unrestIdx[0], unrestIdx[1], unrestIdx[2], unrestIdx[3], unrestIdx[4]]
			            }]
			        });
				
			} // ajax
			
	    
			
			
		}) //ready
			
			
	    
	    
	    
	    
	    
      document.addEventListener('DOMContentLoaded', function() {
    	    var calendarEl = document.getElementById('calendar');
			
    	    $.ajax({
	            url: 'diarySelect.do',
	            type : 'post',
	            dataType: 'json',
	            success: loadDiary,
				error : function(e){
					console.log(e);
					var calendarEl = document.getElementById('calendar');
			    	
			    	var calendar = new FullCalendar.Calendar(calendarEl, {
			    	      selectable: true,
			    	      locale: 'ko',
			    	      timeZone: 'UTC',
			    	      dateClick: function(info) {
			    	        console.log(info.dateStr);
			    			$('#diaryDate').val(info.dateStr)
			    			$("#popUp").show();
			    			$("#calendar").css('opacity', '0');
			    			$("#close").on("click", function () {
			    				$("#popUp").hide();
			    				$("#calendar").css('opacity', '1');
			    				$('#diaryTitle').val('');
								$('#diaryContent').val('');
								$('#childMSG').val('');
								$('#counter').html("(0 / 최대 3000자)");
			    			})
			    	      }
			    	 })
		  	   		calendar.render();
				}
	     }); //ajax end
    	    
    	    function loadDiary(diary){

				console.log('달력 에이젝스 받아와짐')
				
				
				
           var events = [];
          
           if(diary != null){
        	   
        	   var todayWord = ""
     	    	  $.each(diary, function(index, vo) {
     						todayWord += vo.d_content;
     	          }); //.each()
               	
     	          
     	         
     	          
     	    	   var text = todayWord,
     	    	    lines = text.split(/[,\. ]+/g),
     	    	    data = lines.reduce((arr, word) => {
     	    	        let obj = Highcharts.find(arr, obj => obj.name === word);
     	    	        if (obj) {
     	    	            obj.weight += 1;
     	    	        } else {
     	    	            obj = {
     	    	                name: word,
     	    	                weight: 1
     	    	            };
     	    	            arr.push(obj);
     	    	        }
     	    	        return arr;
     	    	    }, []);
     		
     		    	Highcharts.chart('container', {
     		    	    accessibility: {
     		    	        screenReaderSection: {
     		    	            beforeChartFormat: '<h5>{chartTitle}</h5>' +
     		    	                '<div>{chartSubtitle}</div>' +
     		    	                '<div>{chartLongdesc}</div>' +
     		    	                '<div>{viewTableButton}</div>'
     		    	        }
     		    	    },
     		    	    series: [{
     		    	        type: 'wordcloud',
     		    	        data,
     		    	        name: 'Occurrences'
     		    	    }],
     		    	    title: {
     		    	        text: ''
     		    	    }
     		    	});
        	   
               
                   $.each(diary, function(index, vo) {
                    
                        events.push({
                               id:index,
                               title: '작성 완료♥',
                               start: vo.d_date,
                               color: '#000000'
                            }); //.push()
               console.log(vo.d_date);
               }); //.each()
               
               console.log(events);
               
    	    var calendar = new FullCalendar.Calendar(calendarEl, {
    	      selectable: true,
    	      locale: 'ko',
    	      timeZone: 'UTC',
    	      events : events,
    	      dateClick: function(info) {
    	        console.log(info.dateStr);
    			$('#diaryDate').val(info.dateStr)
    			$("#popUp").show();
    			$("#calendar").css('opacity', '0');
    			

    			$('.highcharts-figure2').hide();
    			$('.highcharts-figure3').show();
    			
    			
    			var piedate = 0;
    			$.each(diary, function(index, vo) {
					 if(info.dateStr == vo.d_date){
						 piedate = index;
						 $('#jacsung').text('삭제');
						 $("#deleteform").attr("action", "diaryDelete.do"); // 삭제 서브밋으로 변경
						 $('.highcharts-figure').show()
						 $('.highcharts-figure3').show()
						 return false;
					 }else{
						 $('.highcharts-figure').hide();
						 $('.highcharts-figure3').hide();
					 }
    			})
    			
    			
    			
    			
    			if(diary[piedate] != null){
    				
	    			var d_joy = parseInt(diary[piedate].e_joy);
	    			var d_anger = parseInt(diary[piedate].e_anger);
	    			var d_sorrow = parseInt(diary[piedate].e_sorrow);
	    			var d_unrest = parseInt(diary[piedate].e_unrest);
    			}else{
    				$('.highcharts-figure3').hide();
    			}
    			
    			
    			
    			// 차트 3 시작 
    			
    			Highcharts.chart('container3', {
				    chart: {
				        plotBackgroundColor: null,
				        plotBorderWidth: null,
				        plotShadow: false,
				        type: 'pie'
				    },
				    title: {
				        text: '오늘 나의 감정'
				    },
				    tooltip: {
				        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
				    },
				    accessibility: {
				        point: {
				            valueSuffix: '%'
				        }
				    },
				    plotOptions: {
				        pie: {
				            allowPointSelect: true,
				            cursor: 'pointer',
				            dataLabels: {
				                enabled: true,
				                format: '<b>{point.name}</b>: {point.percentage:.1f} %'
				            }
				        }
				    },
				    series: [{
				        name: 'Emotion',
				        colorByPoint: true,
				        data: [{
				            name: '기쁨',
				            y: d_joy,
				            sliced: true,
				            selected: true
				        }, {
				            name: '분노',
				            y: d_anger
				        }, {
				            name: '슬픔',
				            y: d_sorrow
				        }, {
				            name: '불안',
				            y: d_unrest
				        }]
				    }]
				});
    			
    			
    			// 차트 3 끝 
    			
    			$("#close").on("click", function () {
    				$('#jacsung').text('작성');
    				$("#deleteform").attr("action", "http://f3.project-jupyter.ddns.net:8873/post2"); // action 수정 해야 함 
    				$('.highcharts-figure3').hide();
    				$('.highcharts-figure2').show();
    				$('.highcharts-figure').show();
    				$("#popUp").hide();
    				$("#calendar").css('opacity', '1');
    				$('#diaryTitle').val('');
					$('#diaryContent').val('');
					$('#childMSG').val('');
					$('#counter').html("(0 / 최대 3000자)");
					 var todayWord = ""
		     	    	  $.each(diary, function(index, vo) {
		     						todayWord += vo.d_content;
		     	          }); //.each()
		               		
		     	    	   var text = todayWord,
		     	    	    lines = text.split(/[,\. ]+/g),
		     	    	    data = lines.reduce((arr, word) => {
		     	    	        let obj = Highcharts.find(arr, obj => obj.name === word);
		     	    	        if (obj) {
		     	    	            obj.weight += 1;
		     	    	        } else {
		     	    	            obj = {
		     	    	                name: word,
		     	    	                weight: 1
		     	    	            };
		     	    	            arr.push(obj);
		     	    	        }
		     	    	        return arr;
		     	    	    }, []);
		     		
		     		    	Highcharts.chart('container', {
		     		    	    accessibility: {
		     		    	        screenReaderSection: {
		     		    	            beforeChartFormat: '<h5>{chartTitle}</h5>' +
		     		    	                '<div>{chartSubtitle}</div>' +
		     		    	                '<div>{chartLongdesc}</div>' +
		     		    	                '<div>{viewTableButton}</div>'
		     		    	        }
		     		    	    },
		     		    	    series: [{
		     		    	        type: 'wordcloud',
		     		    	        data,
		     		    	        name: 'Occurrences'
		     		    	    }],
		     		    	    title: {
		     		    	        text: ''
		     		    	    }
		     		    	});
					
				})
				
				
				$.each(diary, function(index, vo) {
					 if(info.dateStr == vo.d_date){
						$('#diaryTitle').val(vo.d_title);
						$('#diaryContent').val(vo.d_content);
						$('#childMSG').val(vo.d_msg);

			     	    	  $.each(diary, function(index, vo) {
			     	    		  
			     					 if(info.dateStr == vo.d_date){
			     						todayWord = vo.d_content;
			     					 }
			     	          }); //.each()
						
						 var text = todayWord,
		     	    	    lines = text.split(/[,\. ]+/g),
		     	    	    data = lines.reduce((arr, word) => {
		     	    	        let obj = Highcharts.find(arr, obj => obj.name === word);
		     	    	        if (obj) {
		     	    	            obj.weight += 1;
		     	    	        } else {
		     	    	            obj = {
		     	    	                name: word,
		     	    	                weight: 1
		     	    	            };
		     	    	            arr.push(obj);
		     	    	        }
		     	    	        return arr;
		     	    	    }, []);
		     		
		     		    	Highcharts.chart('container', {
		     		    	    accessibility: {
		     		    	        screenReaderSection: {
		     		    	            beforeChartFormat: '<h5>{chartTitle}</h5>' +
		     		    	                '<div>{chartSubtitle}</div>' +
		     		    	                '<div>{chartLongdesc}</div>' +
		     		    	                '<div>{viewTableButton}</div>'
		     		    	        }
		     		    	    },
		     		    	    series: [{
		     		    	        type: 'wordcloud',
		     		    	        data,
		     		    	        name: 'Occurrences'
		     		    	    }],
		     		    	    title: {
		     		    	        text: ''
		     		    	    }
		     		    	});
						
					 }
               }); //.each()
				
				
				
    	      }
    	    });
    	    calendar.render();
    	    
    	  
           }//if end
      }
      
    	  });
      
    </script>
    
    <style type="text/css">
    	#container{
    	}
    	#wordMent{
    		position: absolute;
    		width : 24%;
    		background-color : #fff;
    		top: 56%;
    		left: 62%;
    		transform : translate(-50%, -50%);
    		font-size : 25px;
    		font-family: Georgia, "Malgun Gothic", serif;
    		font-weight:500;
    		z-index: 99;
    	}
    	#calendar{
	    	position : relative;
	    	float : left;
    		width : 60%;
    		height : 90%;
    	}
    	.fc-toolbar-title{
    		color : #000;
    		 font-family: 'Single Day', cursive;
          font-size: 35px;
    		
    	}
    	  .fc-scrollgrid-sync-inner{
       background-color: #FAFAD2;
       font-family: 'Single Day', cursive;
       font-size: 20px;
       }
    	  .fc-event-title-container{
       margin-left:20px;
       box-sizing: content-box;
        color: #FAFAD2;
       }
       .fc-daygrid-day-top{
       margin-bottom: 5px;
       }
    	.fc-daygrid-day-frame{
    	background-color:white;
    		cursor: pointer;
    	}
    	#diary{
    		display : none;
    		width : 60%;
    		height : 110%;
    		box-sizing: content-box;
    		overflow: hidden;
    		margin : 0;
    	}
    	.miniroom_contents{
    	overflow : hidden;
    	box-sizing: content-box;
    	}
    	.notes {
        background-attachment: local;
        background-image: linear-gradient(
            to right,
            white 10px,
            transparent 10px
          ),
          linear-gradient(to left, white 10px, transparent 10px),
          repeating-linear-gradient(
            rgb(255, 255, 233),
            white 30px,
            rgb(83, 83, 83) 30px,
            rgb(76, 76, 76) 31px,
            white 31px
          );
        line-height: 31px;
	    }
	    #popUp{
	    	position:absolute;
	        width: 764.59px;
	        height: 100%;
	        background-color: blanchedalmond;
	        display : none;
	        z-index: 99;
	    }
	    #popUpHead{
	        text-align: center;
	    }
	    #popUp strong{
	        font-size: larger; font-family: 'Single Day', cursive
	    }
	    #popUp button{
	        background-color: rgb(255, 255, 233);
	        font-family: 'Single Day', cursive;
	        font-size: 20px;
	        margin-top: 80px;
	        width: 100px;
	        height: 40px;
	        cursor: pointer;
	    }
	    #childMSG{
	        width: 758px;
	          height: 70px;
	          resize: none;
	          background-color: rgb(255, 255, 233);
	          font-size: 27px;
	          font-family: 'Dongle', sans-serif;
	    }
	    #diaryContent{
	        border-style: none;
	        width: 758px;
	        height: 250px;
	        resize: none;
	        background-color: rgb(255, 255, 233);
	        font-size: 24px;
	        font-family: 'Poor Story', cursive;
	        padding-left : 2px;
	    }
	    #diarySelect{
	        background-color: rgb(255, 255, 233);
	        font-family: 'Single Day', cursive;
	        font-size: 20px;
	        width: 90px;
	    }
	    #diaryDate{
	        background-color: rgb(255, 255, 233);
	        width: 200px;
	        height: 40px;
	        font-size: 20px;
	        font-family: 'Dongle', sans-serif;
	        font-size : 30px;
	    }
	    #diaryTitle{
	        background-color: rgb(255, 255, 233);
	        width: 500px;
	        height: 40px;
	        font-size: 35px;
	        font-family: 'Dongle', sans-serif;
	    }
	    .diaryFont{
	    	font-size: larger; font-family: 'Single Day', cursive; color : #000;
	    }
	    
	    .highcharts-figure,
		.highcharts-data-table table {
			position : relative;
			float : right;
			top : 50%;
		  	width : 40%;
		    margin: 1em auto;
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
	    .sideform_main{
	    	border-radius : 5%;
	    	width : 300px;
	    	height: 459px;
	    }
	    .highcharts-figure2 {
		    position : absolute;
			top : -1%;
			left : 60%;
		  	width : 40%;
		    margin: 1em auto;
		    z-index : 99;
		}	
	    .highcharts-figure3 {
		    position : absolute;
			top :0%;
			left : 60%;
		  	width : 40%;
		    margin: 1em auto;
		}	
	     #container3 {
		    height: 400px;
		    }
		
		.highcharts-figure3 {
		    min-width: 310px;
		    max-width: 800px;
		    margin: 1em auto;
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
                	  <div id = "popUp"> 
                	<form action="http://f3.project-jupyter.ddns.net:8873/post2" method="post" id = 'deleteform'>
                		<input type = "hidden" value = "${member.m_id }" name="m_id">
					      <div id = "popUpHead">
					        <br>
					        <strong class="diaryFont">일기 제목 :
					        </strong>
					        <input
					          spellcheck="false"  
					          type="text"
					          name="d_title"
					          id="diaryTitle"
					        />
					        &emsp;&emsp;&emsp;
					        <br />
					        <br />
					        <strong class="diaryFont">날짜 :
					        </strong>
					        <input
					          type="date"
					          id="diaryDate"
					          name = "d_date"
					        />
					        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					        <strong class="diaryFont">
					          나의 아이들
					          <select
					            name="c_seq"
					            id = "diarySelect">
					            <c:forEach var = "vo" items = "${childList }">
						            <option value="${vo.c_seq }">${vo.c_name }</option>
					            </c:forEach>
					          </select>
					        </strong>
					      </div>
					      <br /><br />
					      <div style="text-align: center">
					        <strong class="diaryFont">
					          일기 내용 (3000자 이내)</strong>
					      </div>
					      <br />
					      <textarea spellcheck="false"
					        id="diaryContent"
					        class="notes"
					        rows="30"
					        cols="100"
					        name="d_content"
					      ></textarea>
					      
						  <span style="color:#aaa;" id="counter">(0 / 최대 3000자)</span>
						
					      <br><br>
					      <div style="text-align: center">
					        <strong class="diaryFont">
					          아이에게 해주고 싶은 말</strong>
					      </div>
					      <br />
					      <textarea id = "childMSG"
					        spellcheck="false"
					        rows="5"
					        cols="100"
					        name="d_msg"
					      ></textarea>
					      <br>
					      <div id = "diarySubmit"class="button" style="text-align: center">
					        <button type="submit" id = "jacsung">
					          작성
					        </button>
					        &emsp;
					        <button type="button" id = "close">
					          닫기
					        </button>
					      </div>
					      </form>
					    </div>
                	 <div id='calendar'></div>
						<figure class="highcharts-figure">
						    <div id="container"></div>
						</figure>
	                	 <figure class="highcharts-figure2">
					        <div id="container2"></div>
					    </figure>
						 <figure class="highcharts-figure3">
					        <div id="container3"></div>
					     </figure>
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
	    	<h1 id="wordMent"></h1>
    <input type = "hidden" id = "DiaryContents">
  
	<script type="text/javascript">
	
	
	
	$('#diaryContent').keyup(function (e){
	    var content = $(this).val();
	    $('#counter').html("("+content.length+" / 최대 3000자)");    //글자수 실시간 카운팅

	    if (content.length > 3000){
	        alert("최대 3000자까지 입력 가능합니다.");
	        $(this).val(content.substring(0, 3000));
	        $('#counter').html("(3000 / 최대 3000자)");
	    }
	})
			</script>
  </body>
</html>
