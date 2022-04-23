<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>도담도담</title>
    <link
      href="https://fonts.googleapis.com/css2?family=Dongle:wght@400;700&family=Single+Day&display=swap"
      rel="stylesheet"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://unpkg.com/typeit@8.4.0/dist/index.umd.js"></script>
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
      body {
        background-color: whitesmoke;
      }
      .fade-in-box {
        display: inline-block;
        position :absolute;
        top : 0;
        left : 0;
        background-image: url('https://cdn.pixabay.com/photo/2015/02/04/08/03/baby-623417_960_720.jpg') ;
        background-repeat: no-repeat;
         background-size: 1920px;
        padding: 0px;
        margin: 0px;
        animation: fadein 3s;
        -webkit-animation: fadein 3s; /* Safari and Chrome */
        width: 1920px;
        height: 937px;
      }

      @keyframes fadein {
        from {
          opacity: 0;
        }
        to {
          opacity: 1;
        }
      }
      @-webkit-keyframes fadein {
        /* Safari and Chrome */
        from {
          opacity: 0;
        }
        to {
          opacity: 1;
        }
      }
      #t1 {
        position: absolute;
        left: 50%;
        top: 30%;
        transform: translate(-50%, -50%);
        font-family: "Dongle";
        font-size: 75px;
        color: white;
      }
      #t2 {
        position: absolute;
        left: 50%;
        top: 45%;
        transform: translate(-50%, -50%);
        font-family: "Dongle";
        font-size: 150px;
        animation-delay: 5s;
        -webkit-animation-delay: 5s;
        animation: fadein 5s;
        -webkit-animation: fadein 5s; /* Safari and Chrome */
        cursor: pointer;
        color: #fff;
      }
    </style>
    <script></script>
  </head>
  <body>
    <div class="fade-in-box"></div>
    <h1 id="t1">우리 아이와 함께 만들어 가는 특별한 추억</h1>
    <h1 id="t2" onclick="moveMain()" >도 담 도 담</h1>

    <script>
      document.addEventListener("DOMContentLoaded", () => {
        new TypeIt("#t1").pause(1000).go();
      });
      function moveMain() {
		
    	  location.href = "home.do";
	} 
    </script>
  </body>
</html>