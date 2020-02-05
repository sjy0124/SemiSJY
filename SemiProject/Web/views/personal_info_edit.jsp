<%@page import="com.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	 Member m = (Member)session.getAttribute("member"); 
	 // session.setMaxInactiveInterval(1000);
	%>
<!doctype html>

<html lang="en">
  <head>
    

   
    <meta charset="utf-8">
    <meta name="description" content="A front-end template that helps you build fast, modern mobile web apps.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>개인 정보 수정</title>

    <!-- 게시판 부트스트랩 cnd-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <!-- 게시판 부트스트랩 cnd-->
    <!--제이쿼리 cnd-->
    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    <!--제이쿼리 cnd-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Material Design Lite">
    <link rel="apple-touch-icon-precomposed" href="images/ios-desktop.png">

    <meta name="msapplication-TileImage" content="images/touch/ms-touch-icon-144x144-precomposed.png">
    <meta name="msapplication-TileColor" content="#3372DF">

    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.deep_purple-pink.min.css">
    <link rel="stylesheet" href="./css/styles.css">
    <style>
      
    body { margin-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; }
    
    #view-source {
      position: fixed;
      display: block;
      right: 0;
      bottom: 0;
      margin-right: 40px;
      margin-bottom: 0px;
      z-index: 900;
    }
    #login{
        position: absolute;
        
        right: 30px;
    }

    .main{ position: relative; height: 894px; padding: 20px; 
           align-content: center;    }
    .article{
      display: inline-block;
      margin: 10px;
      padding: 20px;
      
    
    }  
    .side-bar{
      position: relative;
    top: -52px;
    left: -20px;
    width: 291px;
    height: 902px;
     
      background: rgb(228, 233, 235);
    } 
    .left{ position: absolute;left: 262px;top: -38px; }   
    .center{  position: absolute; left: 813px; top: -37px;} 
    .right{ position: absolute; left: 1343px; top: -37px}
    .detail-profile{
        position: relative;
        width: 550px;
        height: 900px;
     
            background: #FFFFFF;
         
    }
    .photo{
      width: 150px;
    height: 150px;
    left: 145px;
    position: relative;
    margin: 35px;   }
    .work-info{
        position: relative;
        width: 530px;
        height: 450px;
            background: #FFFFFF;
            border-right-style: inset;
            margin-bottom: -20px;
            font-size: 25px;
    }
   
  
    #logo{
      position: absolute;
      width: 120px;
      height: 120px;
      right: 70px;
    }
    #top{
      background: rgb(60, 0, 109);
      border-radius: 30px;
    }
    .bottom{
      position: relative;
    width: 1070px;
    height: 380px;
   
    
   
    top: 1000px;
    left: 670px
          }
    #profile li{
      list-style-type: none;
      font-weight: 900;
      letter-spacing: 0.04em;
      color: #000000;
      font-size: 15px;
      padding: 30px;
    }
    #profile span{
     padding-left: 145px;
    }
    ul{
      padding-left: 20px;
      list-style-type: none;;
    }      
    p{
      position: relative;
      background: rgb(rgb(207, 202, 202), rgb(213, 219, 213), rgb(199, 199, 202));
      top: 0px;
      font-weight: 900;
      font-size: 20px;
      line-height: 7px;
      letter-spacing: 0.04em;
      color: #000000;
      padding: 30px;
      font-style: normal;
    }
    table{
      font-style: normal;
    }
    .work-info li{
    font-weight: 900;
    font-size: 15px;
    padding: 9px;
    letter-spacing: 4px;
    color: #000000;
    }
    .work-info span{
      color: red;
      padding-left: 77px;
    }
    .salary li{
    font-weight: 900;
    color: #000000;
    font-size: 15px;
    padding: 9px;
    letter-spacing: 4px;
    line-height: 40px;
    }
    .salary span{
      padding-left: 60px;
    }
   .list-group li{
    background:   rgb(228, 233, 235); ;
    border: 0px;
    line-height: 30px;
    font-size: 15px;
    font-weight: 600;
    padding-left: 75px;
   }
   .list-group a{
      color: black;
   }

    </style>

  
</head>

<body>
  <!--버튼 CND-->
  <script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"> 
  <!--버튼 CND-->  
  <body class="mdl-demo mdl-color--grey-100 mdl-color-text--grey-700 mdl-base" >
        <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
          <header class="mdl-layout__header mdl-layout__header--scroll mdl-color--primary">
            <div class="mdl-layout--large-screen-only mdl-layout__header-row">
            </div>
            <div class="mdl-layout--large-screen-only mdl-layout__header-row" id="top">
              <h3>T & H Company</h3>
              <img src="../resource/images/자바로고.png" id="logo">
            </div>
            <div class="mdl-layout--large-screen-only mdl-layout__header-row">
            </div>
            <div class="mdl-layout__tab-bar mdl-js-ripple-effect mdl-color--primary-dark">
              <a href="mainpage.html" class="mdl-layout__tab">홈</a>
              <a href="border(total).html" class="mdl-layout__tab">게시판</a>
              <a href="#features" class="mdl-layout__tab">주소록</a>
              <a href="#features" class="mdl-layout__tab">근태관리</a>
              <a href="#features" class="mdl-layout__tab">전자결제</a>
              <a href="mypage.html" class="mdl-layout__tab">마이페이지</a>
              <a id="login" href="login.html" class="mdl-layout__tab">로그인</a>
              <a href="" class="mdl-layout__tab" onclick="MessageOpen();">메신저</a>
            </div>
          </header>
          <main class="mdl-layout__content">
          <div class="mdl-layout__tab-panel is-active" id="overview" style="background: white;"> 
        <!--메인 프레임-->
        <div class="main">
          <!--왼쪽공간-->
      <div class="side-bar">
            <div class="panel panel-info">
              <div class="panel-heading">
              <p class="panel-title" style="margin: 23px;
              font-size: 25px;">인사 정보</p>
            </div>
              <!-- 사이드바 메뉴목록1 -->
              <ul class="list-group">
              <li class="list-group-item"><a href="border(total).html">사내 인사정보</a></li>
              <li class="list-group-item"><a href="border(department).html">나의 인사정보</a></li>
              <li class="list-group-item"><a href="border(community).html">개인정보 수정</a></li>
              </ul>
          </div>                    
          </div>
            <div class="article left">
             
              <div class="detail-profile">
                  <p >개인 정보수정</p>
                  <form action="/Semi/mUpdate.me">
                  <ul id="profile">
                    <li>이름    <span><%=m.getEmpName() %></span></li>
                    <li>생년월일    <span style="padding-left: 115px;"><%=m.getEmpSsn() %></span></li>
                    <li>사원번호   <span style="padding-left: 115px;"><%=m.getEmpNo() %></span></li>
                    <li>핸드폰번호    <input type="text" name="phone" style="padding-left: 10px;
                      margin-left: 94px;" value=<%=m.getPhone() %>></li>
                    <li>이메일  <input type="text" name="email" style="padding-left: 10px;
                      margin-left: 126px;" value=<%=m.getEmail() %>></li>
                    <li>비밀번호    <input type="password" name="pwd" id="password1" style="margin-left: 110px;
                      padding-left: 10px;" ></li>
                    <li>비밀번호 확인  <input type="password" id=password2 style="margin-left: 75px;
                      padding: 10px;
                      width: 176px;
                      height: 30px;"></li>
                    <li><input type="submit" value="정보 수정" onclik="return update();"></li>
                  </ul>
                  </form>
                  <script>
                  	function update(){
                  	  var password = document.getElementById("password1").value;
                      var password2 = document.getElementById("password2").value;
                      
                      if(password == password2){
                          alert('비밀번호가 일치합니다.');
                      }else{
                          alert('비밀번호가 틀립니다.');
                          document.getElementById("password2").select();
                          return false;
                      }
                      return true;
                      

                  	}
                  
                  </script>
                </div>
            </div>
      </div>
      <!--메인 끝-->
      <footer class="mdl-mega-footer" >
                <div class="mdl-mega-footer--middle-section">
                  <div class="mdl-mega-footer--drop-down-section">
                    <input class="mdl-mega-footer--heading-checkbox" type="checkbox" checked>
                    <!--하단바 컨텐츠 -->
                    <h1 class="mdl-mega-footer--heading"> T&H Company</h1>
                    <ul class="mdl-mega-footer--link-list" id=info>
                      <li><a href="#">성남시 수정구 태평동 5380 501호</a></li>
                      <li><a href="#">대표 : 문태환</a></li>
                      <li><a href="#">사업자 등록번호 : 111 - 39 - 33140</a></li>
                      <li><a href="#">Tel : 033-552-7517</a></li>
                      <li><a href="#">즐</a></li>
                    </ul>
                  </div>
                  <div class="mdl-mega-footer--drop-down-section">
                    <input class="mdl-mega-footer--heading-checkbox" type="checkbox" checked>
                    <!--하단바 컨텐츠 -->
                    <h1 class="mdl-mega-footer--heading"></h1>
                    <ul class="mdl-mega-footer--link-list">
                      <li><a href="#"></a></li>
                      <li><a href="#"></a></li>
                      <li><a href="#"></a></li>
                    </ul>
                  </div>
                  <div class="mdl-mega-footer--drop-down-section">
                    <input class="mdl-mega-footer--heading-checkbox" type="checkbox" checked>
                    <!--하단바 컨텐츠 -->
                    <h1 class="mdl-mega-footer--heading"></h1>
                    <ul class="mdl-mega-footer--link-list" id=info>
                      <li><a href="#"></a></li>
                      <li><a href="#"></a></li>
                      <li><a href="#"></a></li>
                      <li><a href="#"></a></li>
                      <li><a href="#"></a></li>
                    </ul>
                  </div>
                  <div class="mdl-mega-footer--drop-down-section">
                    <input class="mdl-mega-footer--heading-checkbox" type="checkbox" checked>
                   <!--하단바 컨텐츠 -->
                    <h1 class="mdl-mega-footer--heading"></h1>
                    <ul class="mdl-mega-footer--link-list">
                      <li><a href="#"></a></li>
                      <li><a href="#"></a></li>
                      <li><a href="#"></a></li>
                    </ul>
                  </div>
                </div>
                <div class="mdl-mega-footer--bottom-section">
                  <div class="mdl-logo">
                    More Information
                  </div>
                  <ul class="mdl-mega-footer--link-list">
                    <li><a href="https://developers.google.com/web/starter-kit/">Web Starter Kit</a></li>
                    <li><a href="#">Help</a></li>
                    <li><a href="#">Privacy and Terms</a></li>
                  </ul>
                </div>
              </footer>
            </main>

            <script>
              window.onfocus=function(){
              }
              window.onload=function(){
               window.focus(); // 현재 window 즉 익스플러러를 윈도우 최상단에 위치
              window.moveTo(0,0); // 웹 페이지의 창 위치를 0,0 (왼쪽 최상단) 으로 고정
              window.resizeTo(1280,800); // 웹페이지의 크기를 가로 1280 , 세로 800 으로 고정(확장 및 축소)
              window.scrollTo(0,250); // 페이지 상단 광고를 바로 볼 수 있게 스크롤 위치를 조정
              }
              function MessageOpen(){ //메세지창 열기
        window.open('message.html','메세지함','width=1280px,height=960px');
      }
            </script>
</body>
</html>