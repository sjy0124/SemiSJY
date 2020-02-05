<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>메신저임</title>
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
  <link rel="stylesheet" href="https://code.getmdl.io/1.0.6/material.grey-pink.min.css" />
  <link rel="stylesheet" href="styles.css" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
  <script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link
    href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body>
  <div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer">
    <div class="mdl-layout__drawer">
      <span class="mdl-layout-title" style="font-size: 20pt;"> <a href=message.html>메세지함</a></span>
      <nav class="mdl-navigation">


        <ul class="demo-list-two mdl-list">
          <li class="mdl-list__item mdl-list__item--two-line mdl-navigation__link">
            <span class="mdl-list__item-primary-content ">
              <i class="material-icons mdl-list__item-avatar">person</i>
              <span>Bryan Cranston</span>
              <span class="mdl-list__item-sub-title" style="font-size: 6px;">62 읽지않은 메세지</span>
            </span>
            <span class="mdl-list__item-secondary-content">
              <span class="mdl-list__item-secondary-info">팀장</span>
            </span>
          </li>


          <a onclick="filtering('Aaron Paul');">
            <li class="mdl-list__item mdl-list__item--two-line mdl-navigation__link">
              <span class="mdl-list__item-primary-content ">
                <i class="material-icons mdl-list__item-avatar">person</i>
                <span>Aaron Paul</span>
                <span class="mdl-list__item-sub-title" style="font-size: 6px;">2 읽지않은 메세지</span>
              </span>
              <span class="mdl-list__item-secondary-content">
                <span class="mdl-list__item-secondary-info">파트장</span>
              </span>
            </li>
          </a>
          <li class="mdl-list__item mdl-list__item--two-line mdl-navigation__link">
            <span class="mdl-list__item-primary-content ">
              <i class="material-icons mdl-list__item-avatar">person</i>
              <span>Cust omizable</span>
              <span class="mdl-list__item-sub-title" style="font-size: 6px;">2 읽지않은 메세지</span>
            </span>
            <span class="mdl-list__item-secondary-content">
              <span class="mdl-list__item-secondary-info">고추장</span>
            </span>
          </li>

          <li class="mdl-list__item mdl-list__item--two-line mdl-navigation__link">
            <span class="mdl-list__item-primary-content ">
              <i class="material-icons mdl-list__item-avatar">person</i>
              <span>Bob Odenkirk</span>
              <span class="mdl-list__item-sub-title" style="font-size: 6px;">2 읽지않은 메세지</span>
            </span>
            <span class="mdl-list__item-secondary-content">
              <span class="mdl-list__item-secondary-info">사원</span>
            </span>
          </li>
          </li>


      </nav>
    </div>
    <main class="mdl-layout__content">
      <div class="container-fluid">

        <!-- Page Heading -->
        <br>
        <h1 class="h3 mb-2 text-gray-800">받은 메세지 함</h1>
        <p class="mb-4"> </p>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
          <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">총 "100"개의 메세지가 있습니다.</h6>
            <br>
            <div style="text-align: left;">
              <a href="SendMessage.html">  
              <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
                    새 메세지 쓰기
                  </button>
                  </a>
            </div>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th>이름</th>
                    <th>직급</th>
                    <th>부서</th>
                    <th>제목</th>
                    <th>보낸날짜</th>
                    <th>읽음표시</th>
                  </tr>
                </thead>
                <tfoot>
                  <tr>
                    <th>이름</th>
                    <th>직급</th>
                    <th>부서</th>
                    <th>제목</th>
                    <th>보낸날짜</th>
                    <th>읽음표시</th>
                  </tr>
                </tfoot>

                <tbody id='tablebody'>

                  <!-- <tr>
                                    <td>Tiger Nixon</td>
                                    <td>System Architect</td>
                                    <td>Edinburgh</td>
                                    <td>61</td>
                                    <td>2011/04/25</td>
                                    <td>$320,800</td>
                                  </tr>
                              
                                   
                                  <tr>
                                    <td>Garrett Winters</td>
                                    <td>Accountant</td>
                                    <td>Tokyo</td>
                                    <td>63</td>
                                    <td>2011/07/25</td>
                                    <td>$170,750</td>
                                  </tr>
                                  <tr>
                                    <td>Ashton Cox</td>
                                    <td>Junior Technical Author</td>
                                    <td>San Francisco</td>
                                    <td>66</td>
                                    <td>2009/01/12</td>
                                    <td>$86,000</td>
                                  </tr>
                                  <tr>
                                    <td>Cedric Kelly</td>
                                    <td>Senior Javascript Developer</td>
                                    <td>Edinburgh</td>
                                    <td>22</td>
                                    <td>2012/03/29</td>
                                    <td>$433,060</td>
                                  </tr>
                                  <tr>
                                    <td>Airi Satou</td>
                                    <td>Accountant</td>
                                    <td>Tokyo</td>
                                    <td>33</td>
                                    <td>2008/11/28</td>
                                    <td>$162,700</td>
                                  </tr>
                                  <tr>
                                    <td>Brielle Williamson</td>
                                    <td>Integration Specialist</td>
                                    <td>New York</td>
                                    <td>61</td>
                                    <td>2012/12/02</td>
                                    <td>$372,000</td>
                                  </tr>
                                  <tr>
                                    <td>Herrod Chandler</td>
                                    <td>Sales Assistant</td>
                                    <td>San Francisco</td>
                                    <td>59</td>
                                    <td>2012/08/06</td>
                                    <td>$137,500</td>
                                  </tr>
                                  <tr>
                                    <td>Rhona Davidson</td>
                                    <td>Integration Specialist</td>
                                    <td>Tokyo</td>
                                    <td>55</td>
                                    <td>2010/10/14</td>
                                    <td>$327,900</td>
                                  </tr>
                                  <tr>
                                    <td>Colleen Hurst</td>
                                    <td>Javascript Developer</td>
                                    <td>San Francisco</td>
                                    <td>39</td>
                                    <td>2009/09/15</td>
                                    <td>$205,500</td>
                                  </tr>
                                  <tr>
                                    <td>Sonya Frost</td>
                                    <td>Software Engineer</td>
                                    <td>Edinburgh</td>
                                    <td>23</td>
                                    <td>2008/12/13</td>
                                    <td>$103,600</td>
                                  </tr>
                                  <tr>
                                    <td>Jena Gaines</td>
                                    <td>Office Manager</td>
                                    <td>London</td>
                                    <td>30</td>
                                    <td>2008/12/19</td>
                                    <td>$90,560</td>
                                  </tr>
                                  <tr>
                                    <td>Quinn Flynn</td>
                                    <td>Support Lead</td>
                                    <td>Edinburgh</td>
                                    <td>22</td>
                                    <td>2013/03/03</td>
                                    <td>$342,000</td>
                                  </tr>
                                  <tr>
                                    <td>Charde Marshall</td>
                                    <td>Regional Director</td>
                                    <td>San Francisco</td>
                                    <td>36</td>
                                    <td>2008/10/16</td>
                                    <td>$470,600</td>
                                  </tr>
                                  <tr>
                                    <td>Haley Kennedy</td>
                                    <td>Senior Marketing Designer</td>
                                    <td>London</td>
                                    <td>43</td>
                                    <td>2012/12/18</td>
                                    <td>$313,500</td>
                                  </tr>
                                  <tr>
                                    <td>Tatyana Fitzpatrick</td>
                                    <td>Regional Director</td>
                                    <td>London</td>
                                    <td>19</td>
                                    <td>2010/03/17</td>
                                    <td>$385,750</td>
                                  </tr>
                                  <tr>
                                    <td>Michael Silva</td>
                                    <td>Marketing Designer</td>
                                    <td>London</td>
                                    <td>66</td>
                                    <td>2012/11/27</td>
                                    <td>$198,500</td>
                                  </tr>
                                  <tr>
                                    <td>Paul Byrd</td>
                                    <td>Chief Financial Officer (CFO)</td>
                                    <td>New York</td>
                                    <td>64</td>
                                    <td>2010/06/09</td>
                                    <td>$725,000</td>
                                  </tr>
                                  <tr>
                                    <td>Gloria Little</td>
                                    <td>Systems Administrator</td>
                                    <td>New York</td>
                                    <td>59</td>
                                    <td>2009/04/10</td>
                                    <td>$237,500</td>
                                  </tr>
                                  <tr>
                                    <td>Bradley Greer</td>
                                    <td>Software Engineer</td>
                                    <td>London</td>
                                    <td>41</td>
                                    <td>2012/10/13</td>
                                    <td>$132,000</td>
                                  </tr>
                                  <tr>
                                    <td>Dai Rios</td>
                                    <td>Personnel Lead</td>
                                    <td>Edinburgh</td>
                                    <td>35</td>
                                    <td>2012/09/26</td>
                                    <td>$217,500</td>
                                  </tr>
                                  <tr>
                                    <td>Jenette Caldwell</td>
                                    <td>Development Lead</td>
                                    <td>New York</td>
                                    <td>30</td>
                                    <td>2011/09/03</td>
                                    <td>$345,000</td>
                                  </tr>
                                  <tr>
                                    <td>Yuri Berry</td>
                                    <td>Chief Marketing Officer (CMO)</td>
                                    <td>New York</td>
                                    <td>40</td>
                                    <td>2009/06/25</td>
                                    <td>$675,000</td>
                                  </tr>
                                  <tr>
                                    <td>Caesar Vance</td>
                                    <td>Pre-Sales Support</td>
                                    <td>New York</td>
                                    <td>21</td>
                                    <td>2011/12/12</td>
                                    <td>$106,450</td>
                                  </tr>
                                  <tr>
                                    <td>Doris Wilder</td>
                                    <td>Sales Assistant</td>
                                    <td>Sidney</td>
                                    <td>23</td>
                                    <td>2010/09/20</td>
                                    <td>$85,600</td>
                                  </tr>
                                  <tr>
                                    <td>Angelica Ramos</td>
                                    <td>Chief Executive Officer (CEO)</td>
                                    <td>London</td>
                                    <td>47</td>
                                    <td>2009/10/09</td>
                                    <td>$1,200,000</td>
                                  </tr>
                                  <tr>
                                    <td>Gavin Joyce</td>
                                    <td>Developer</td>
                                    <td>Edinburgh</td>
                                    <td>42</td>
                                    <td>2010/12/22</td>
                                    <td>$92,575</td>
                                  </tr>
                                  <tr>
                                    <td>Jennifer Chang</td>
                                    <td>Regional Director</td>
                                    <td>Singapore</td>
                                    <td>28</td>
                                    <td>2010/11/14</td>
                                    <td>$357,650</td>
                                  </tr>
                                  <tr>
                                    <td>Brenden Wagner</td>
                                    <td>Software Engineer</td>
                                    <td>San Francisco</td>
                                    <td>28</td>
                                    <td>2011/06/07</td>
                                    <td>$206,850</td>
                                  </tr>
                                  <tr>
                                    <td>Fiona Green</td>
                                    <td>Chief Operating Officer (COO)</td>
                                    <td>San Francisco</td>
                                    <td>48</td>
                                    <td>2010/03/11</td>
                                    <td>$850,000</td>
                                  </tr>
                                  <tr>
                                    <td>Shou Itou</td>
                                    <td>Regional Marketing</td>
                                    <td>Tokyo</td>
                                    <td>20</td>
                                    <td>2011/08/14</td>
                                    <td>$163,000</td>
                                  </tr>
                                  <tr>
                                    <td>Michelle House</td>
                                    <td>Integration Specialist</td>
                                    <td>Sidney</td>
                                    <td>37</td>
                                    <td>2011/06/02</td>
                                    <td>$95,400</td>
                                  </tr>
                                  <tr>
                                    <td>Suki Burks</td>
                                    <td>Developer</td>
                                    <td>London</td>
                                    <td>53</td>
                                    <td>2009/10/22</td>
                                    <td>$114,500</td>
                                  </tr>
                                  <tr>
                                    <td>Prescott Bartlett</td>
                                    <td>Technical Author</td>
                                    <td>London</td>
                                    <td>27</td>
                                    <td>2011/05/07</td>
                                    <td>$145,000</td>
                                  </tr>
                                  <tr>
                                    <td>Gavin Cortez</td>
                                    <td>Team Leader</td>
                                    <td>San Francisco</td>
                                    <td>22</td>
                                    <td>2008/10/26</td>
                                    <td>$235,500</td>
                                  </tr>
                                  <tr>
                                    <td>Martena Mccray</td>
                                    <td>Post-Sales support</td>
                                    <td>Edinburgh</td>
                                    <td>46</td>
                                    <td>2011/03/09</td>
                                    <td>$324,050</td>
                                  </tr>
                                  <tr>
                                    <td>Unity Butler</td>
                                    <td>Marketing Designer</td>
                                    <td>San Francisco</td>
                                    <td>47</td>
                                    <td>2009/12/09</td>
                                    <td>$85,675</td>
                                  </tr>
                                  <tr>
                                    <td>Howard Hatfield</td>
                                    <td>Office Manager</td>
                                    <td>San Francisco</td>
                                    <td>51</td>
                                    <td>2008/12/16</td>
                                    <td>$164,500</td>
                                  </tr>
                                  <tr>
                                    <td>Hope Fuentes</td>
                                    <td>Secretary</td>
                                    <td>San Francisco</td>
                                    <td>41</td>
                                    <td>2010/02/12</td>
                                    <td>$109,850</td>
                                  </tr>
                                  <tr>
                                    <td>Vivian Harrell</td>
                                    <td>Financial Controller</td>
                                    <td>San Francisco</td>
                                    <td>62</td>
                                    <td>2009/02/14</td>
                                    <td>$452,500</td>
                                  </tr>
                                  <tr>
                                    <td>Timothy Mooney</td>
                                    <td>Office Manager</td>
                                    <td>London</td>
                                    <td>37</td>
                                    <td>2008/12/11</td>
                                    <td>$136,200</td>
                                  </tr>
                                  <tr>
                                    <td>Jackson Bradshaw</td>
                                    <td>Director</td>
                                    <td>New York</td>
                                    <td>65</td>
                                    <td>2008/09/26</td>
                                    <td>$645,750</td>
                                  </tr>
                                  <tr>
                                    <td>Olivia Liang</td>
                                    <td>Support Engineer</td>
                                    <td>Singapore</td>
                                    <td>64</td>
                                    <td>2011/02/03</td>
                                    <td>$234,500</td>
                                  </tr>
                                  <tr>
                                    <td>Bruno Nash</td>
                                    <td>Software Engineer</td>
                                    <td>London</td>
                                    <td>38</td>
                                    <td>2011/05/03</td>
                                    <td>$163,500</td>
                                  </tr>
                                  <tr>
                                    <td>Sakura Yamamoto</td>
                                    <td>Support Engineer</td>
                                    <td>Tokyo</td>
                                    <td>37</td>
                                    <td>2009/08/19</td>
                                    <td>$139,575</td>
                                  </tr>
                                  <tr>
                                    <td>Thor Walton</td>
                                    <td>Developer</td>
                                    <td>New York</td>
                                    <td>61</td>
                                    <td>2013/08/11</td>
                                    <td>$98,540</td>
                                  </tr>
                                  <tr>
                                    <td>Finn Camacho</td>
                                    <td>Support Engineer</td>
                                    <td>San Francisco</td>
                                    <td>47</td>
                                    <td>2009/07/07</td>
                                    <td>$87,500</td>
                                  </tr>
                                  <tr>
                                    <td>Serge Baldwin</td>
                                    <td>Data Coordinator</td>
                                    <td>Singapore</td>
                                    <td>64</td>
                                    <td>2012/04/09</td>
                                    <td>$138,575</td>
                                  </tr>
                                  <tr>
                                    <td>Zenaida Frank</td>
                                    <td>Software Engineer</td>
                                    <td>New York</td>
                                    <td>63</td>
                                    <td>2010/01/04</td>
                                    <td>$125,250</td>
                                  </tr>
                                  <tr>
                                    <td>Zorita Serrano</td>
                                    <td>Software Engineer</td>
                                    <td>San Francisco</td>
                                    <td>56</td>
                                    <td>2012/06/01</td>
                                    <td>$115,000</td>
                                  </tr>
                                  <tr>
                                    <td>Jennifer Acosta</td>
                                    <td>Junior Javascript Developer</td>
                                    <td>Edinburgh</td>
                                    <td>43</td>
                                    <td>2013/02/01</td>
                                    <td>$75,650</td>
                                  </tr>
                                  <tr>
                                    <td>Cara Stevens</td>
                                    <td>Sales Assistant</td>
                                    <td>New York</td>
                                    <td>46</td>
                                    <td>2011/12/06</td>
                                    <td>$145,600</td>
                                  </tr>
                                  <tr>
                                    <td>Hermione Butler</td>
                                    <td>Regional Director</td>
                                    <td>London</td>
                                    <td>47</td>
                                    <td>2011/03/21</td>
                                    <td>$356,250</td>
                                  </tr>
                                  <tr>
                                    <td>Lael Greer</td>
                                    <td>Systems Administrator</td>
                                    <td>London</td>
                                    <td>21</td>
                                    <td>2009/02/27</td>
                                    <td>$103,500</td>
                                  </tr>
                                  <tr>
                                    <td>Jonas Alexander</td>
                                    <td>Developer</td>
                                    <td>San Francisco</td>
                                    <td>30</td>
                                    <td>2010/07/14</td>
                                    <td>$86,500</td>
                                  </tr>
                                  <tr>
                                    <td>Shad Decker</td>
                                    <td>Regional Director</td>
                                    <td>Edinburgh</td>
                                    <td>51</td>
                                    <td>2008/11/13</td>
                                    <td>$183,000</td>
                                  </tr>
                                  <tr>
                                    <td>Michael Bruce</td>
                                    <td>Javascript Developer</td>
                                    <td>Singapore</td>
                                    <td>29</td>
                                    <td>2011/06/27</td>
                                    <td>$183,000</td>
                                  </tr>
                                  <tr>
                                    <td>Donna Snider</td>
                                    <td>Customer Support</td>
                                    <td>New York</td>
                                    <td>27</td>
                                    <td>2011/01/25</td>
                                    <td>$112,000</td>
                                  </tr> -->
                </tbody>
              </table>
            </div>
          </div>
        </div>

      </div>
      <!-- /.container-fluid -->

  </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script>

    var datalist = new Array();

    for (var i = 0; i < 100; i++) {
      var str = ""

      var msgdata = {
        msgnum: i,
        name: "",
        job: "",
        dept: "",
        dateyear: "",
        datemonth: "",
        dateday: "",
        readcheck: "",
        msgtitle: "",
        msginfo: "아무렇게나 막 넣어본 쪽지 내용 " + i
      };
      switch (i % 4) {
        case 0:
          str += "<tr role='row'>" + "<td>" + "Bryan Cranston" + "</td>";
          msgdata.name = 'Bryan Cranston'; break;
        case 1:
          str += "<tr role='row'>" + "<td>" + "Aaron Paul" + "</td>";
          msgdata.name = 'Aaron Paul'; break;
        case 2:
          str += "<tr role='row'>" + "<td>" + "Cust omizable" + "</td>";
          msgdata.name = 'Cust omizable'; break;
        case 3:
          str += "<tr role='row'>" + "<td>" + "Bob Odenkirk" + "</td>";
          msgdata.name = 'Bob Odenkirk'; break;
      }

      switch (i % 4) {
        case 0: str += " <td>" + "사장" + "</td>"; msgdata.job = "사장"; break;
        case 1: str += " <td>" + "부장" + "</td>"; msgdata.job = "부장"; break;
        case 2: str += " <td>" + "차장" + "</td>"; msgdata.job = "차장"; break;
        case 3: str += " <td>" + "대리" + "</td>"; msgdata.job = "대리"; break;
      }

      switch (i % 4) {
        case 0: str += " <td>인사부</td>"; msgdata.dept = "인사부"; break;
        case 1: str += " <td>마케팅부</td>"; msgdata.dept = "마케팅부"; break;
        case 2: str += " <td>영업부</td>"; msgdata.dept = "영업부"; break;
        case 3: str += " <td>월급루팡부</td>"; msgdata.dept = "월급루팡부"; break;
      }

      str += "<td>" + "<a href=readMessage.html>ㅁㄴㅇㅁㄴㅇㅁㄴㅇ메세지 제목 " + i + "</a></td>";
      msgdata.msgtitle = "ㅁㄴㅇㅁㄴㅇㅁㄴㅇ메세지 제목 " + i;
      msgdata.dateyear = 2019;
      msgdata.datemonth = (Math.floor(Math.random() * 12) + 1) ;
      msgdata.dateday = (Math.floor(Math.random() * 30) + 1);
      str += "<td>" + msgdata.dateyear + "/" + msgdata.datemonth +"/" + msgdata.dateday + "</td>" +
        " <td>읽음</td>" + " </tr>";
      document.getElementById('tablebody').innerHTML += str;

      datalist.push(msgdata);
    }

    
    function MsgOpen(msgnum){
   //   document.getElementsByName('submit1').submit;
      
    }
    </script>
    <script>
    function filtering(username){
      var tempdatalist = new Array();

      console.log(username);
      document.getElementById('tablebody').innerHTML = "";
      for(var i=0;i<datalist.length;i++){
      var str = "";
        if(datalist[i].name==username){
          str+="<tr role='row'><td>"+ datalist[i].name + '</td>'+'<td>'+datalist[i].job+'</td>'+
               "<td>"+datalist[i].dept+"</td>"+"<td><a href=#>"+datalist[i].msgtitle+"</a></td>"+
                "<td>" + datalist[i].dateyear + "/" + datalist[i].datemonth + "/" +datalist[i].dateday +"</td>" +
                  "<td> 읽음 </td>"+"</tr>";
                  document.getElementById('tablebody').innerHTML += str;
                  tempdatalist.push(datalist[i]);
        }

      }
      datalist = tempdatalist;

      
    }

  </script>


  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  
  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
  
  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>
  
  <!-- Page level plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js">  </script> <!--테이블 페이징-->
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>
  
  <!-- Page level custom scripts -->
  <script src="js/demo/datatables-demo.js"></script>

  <script>
      $('.jqte-test').jqte();
  
      // settings of status
      var jqteStatus = true;
      $(".status").click(function () {
        jqteStatus = jqteStatus ? false : true;
        $('.jqte-test').jqte({ "status": jqteStatus })
      });
    </script>

</body>
</html>