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
    <title>마이 페이지</title>

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
        border-right-style: inset;
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
    }
    .salary{
        position: relative;
        width: 530px;
        height: 450px;
        border-right-style: inset;
            background: #FFFFFF;
      
          
        
    }
    .myboard{
      margin-bottom: -20px;
        position: relative;
        width: 522px;
        height: 450px;
      
            background: #FFFFFF;
        
    }
    .myQA{
        position: relative;
        width: 522px;
        height: 450px;

            background: #FFFFFF;
   
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
      padding: 20px;
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
   #info li{
    font-style: normal;
   }
    </style>

  
</head>

<body>
  <!--버튼 CND-->
  <script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"> 
  <!--버튼 CND-->  
  <body class="mdl-demo mdl-color--grey-100 mdl-color-text--grey-700 mdl-base">
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
               <a href="mainpage.jsp" class="mdl-layout__tab">홈</a>
              <a href="border(total).jsp" class="mdl-layout__tab">게시판</a>
              <a href="#features" class="mdl-layout__tab">근태관리</a>
              <a href="#features" class="mdl-layout__tab">전자결제</a>
              <a href="mypage.jsp" class="mdl-layout__tab">인사정보</a>
              <a id="login" href="login.jsp" class="mdl-layout__tab">로그인</a>
              <a href="#features" class="mdl-layout__tab" onclick="MessageOpen();">메신저</a>
               
                           
            
          </button>
            </div>
          </header>
          <main class="mdl-layout__content">
          <div class="mdl-layout__tab-panel is-active" id="overview"> 
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
              <li class="list-group-item"><a href="mypage.jsp">나의 인사정보</a></li>
              <li class="list-group-item"><a href="">사내 인사정보</a></li>
              <li class="list-group-item"><a href="personal_info_edit.jsp">개인정보 수정</a></li>
              </ul>
          </div>                    
          </div>
            <div class="article left">
             
              <div class="detail-profile">
                  <p >※ 상세 프로필</p>
                  
                  <img class="photo" src="../resource/images/자바로고.png"><br>
                  <ul id="profile">
                    <li>이름    <span><%=m.getEmpName() %></span></li>
                    <li>생년월일    <span style="padding-left: 115px;"><%=m.getEmpSsn() %></span></li>
                    <li>사원번호   <span style="padding-left: 115px;"><%=m.getEmpNo() %></span></li>
                    <li>핸드폰번호    <span style="padding-left: 100px;"><%=m.getPhone() %></span></li>
                    <li>주소    <span><%=m.getAddress() %></span></li>
                    <li>부서    <span><%=m.getDeptName() %></span></li>
                    <li>직급    <span><%=m.getJobName() %></span></li>
                    <li>이메일  <span style="padding-left: 130px;"><%=m.getEmail() %></span></li>
                  </ul>
                </div>
            </div>
            <div class="article center">
                <div class="work-info"><p>※ 근태통계</p>
                  <ul>
                    <li>지각 및 결근 <span style="padding-left: 50px;" >0일</span></li>
                    <li>병가 사용  <span>0일</span></li>
                    <li>전체 월차   <span>0일</span></li>
                    <li>사용 월차  <span>0일</span></li>
                    <li>전체 년차  <span>0일</span></li>
                    <li>사용 년차  <span>0일</span></li>
                    <li>휴가  <span style=" padding-left: 123px;">0일</span> </li>
                  </ul>
                </div><br>
                <div class="salary"> <p>※ 월급 정보
                </p>         
                 <ul>
                    <li>급여 통장 <span>110 337 366 533 (신한)</span></li>
                    <li>나의 연봉  <span>90,000,000원</span></li>
                    <li>나의 월급   <span>8,000,000원</span></li>
                    <li>보너스   <span style="padding-left: 85px;">100,000,000원</span></li>
                    <li>기타수당  <span style="padding-left: 66px;" >15,000,000원</span><i>
                  </ul>
                </div>
            </div>
            <div class="article right">
            <div class="myboard"><p>※ 최근 결제목록</p>
              <a style="padding-left: 10px;" href="">+더보기</a>
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>날짜</th>
                    <th>조회수</th>
                  </tr>
                </thead>
                  <tbody>
                    
                    <tr>
                      <td>1</td>
                      <td><a href="">첫번쨰 게시물</a></td>
                      <td>문태환</td>
                      <td>2020-01-10</td>
                      <td>1</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td><a href=""> 첫번쨰 게시물</a></td>
                      <td>문태환</td>
                      <td>2020-01-10</td>
                      <td>1</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td><a href=""> 첫번쨰 게시물</a></td>
                      <td>문태환</td>
                      <td>2020-01-10</td>
                      <td>1</td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td><a href=""> 첫번쨰 게시물</a></td>
                      <td>문태환</td>
                      <td>2020-01-10</td>
                      <td>2</td>
                    </tr>
                    <tr>
                      <td>3</td>
                      <td><a href=""> 첫번쨰 게시물</a></td>
                      <td>문태환</td>
                      <td>2020-01-10</td>
                      <td>2</td>
                    </tr>
                    <tr>
                      <td>4</td>
                      <td><a href=""> 첫번쨰 게시물</a></td>
                      <td>문태환</td>
                      <td>2020-01-10</td>
                      <td>2</td>
                    </tr> 
                    </tbody>
                    </table>

            </div><br>
            <div class="myQA"> <p>※ 나의 부서 공지사항</p>
              <a style="padding-left: 10px;" href="">+더보기</a>
              <table class="table table-hover">
                  <thead>
                  <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>날짜</th>
                    <th>조회수</th>
                  </tr>
                </thead>
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td><a href="">첫번쨰 게시물</a></td>
                      <td>문태환</td>
                      <td>2020-01-10</td>
                      <td>1</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td><a href=""> 첫번쨰 게시물</a></td>
                      <td>문태환</td>
                      <td>2020-01-10</td>
                      <td>1</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td><a href=""> 첫번쨰 게시물</a></td>
                      <td>문태환</td>
                      <td>2020-01-10</td>
                      <td>1</td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td><a href=""> 첫번쨰 게시물</a></td>
                      <td>문태환</td>
                      <td>2020-01-10</td>
                      <td>2</td>
                    </tr>
                    <tr>
                      <td>3</td>
                      <td><a href=""> 첫번쨰 게시물</a></td>
                      <td>문태환</td>
                      <td>2020-01-10</td>
                      <td>2</td>
                    </tr>
                    <tr>
                      <td>4</td>
                      <td><a href=""> 첫번쨰 게시물</a></td>
                      <td>문태환</td>
                      <td>2020-01-10</td>
                      <td>2</td>
                    </tr> 
                    </tbody>
                    </table>
            </div>
        </div> 
      
      </div>
      <!--메인 끝-->
      <footer class="mdl-mega-footer" style="text-align: center; ">
        <div class="mdl-mega-footer--middle-section">
          <div class="mdl-mega-footer--drop-down-section" style="    position: relative;
          left: 655px;">
        
            <!--하단바 컨텐츠 -->
           
       
            <ul id=info>
                <h4 style="font-weight: 700; font-style: normal;">Company Information</h4>
              <li>상호 : 주식회사 T&H Company</li>
              <li>주소 : 경기도 성남시 수정구 태평동 5380 501호</li>
              <li>대표자 : 문태환 Moon Tae Hwan</li>
              <li>사업자 등록번호 : 111 - 39 - 33140</li>
              <li>Tel : 033-552-7517 / 010-8634-7517</li>
              <li>E-Mail : itmoon@kakao.com</li>
          
            </ul>
 
          </div>
        
        </div>
        <div class="mdl-mega-footer--bottom-section">
          <div class="mdl-logo">
            More Information
          </div>
          <ul class="mdl-mega-footer--link-list">
            <li><a href="https://developers.google.com/web/starter-kit/">Web Starter Kit</a></li>
            <li><a onclick="admin();">관리자메뉴</a></li>
            <li><a href="#">Privacy and Terms</a></li>
          </ul>
        </div>
        <script >
        	function admin() {
        		location.href="Semi/mList.em";
        		
			}	
        
        </script>
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