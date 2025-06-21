<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Assign Policy Page..</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style3 {
	color: #999900;
	font-size: 15px;
}
.style11 {
	font-size: 25px;
	color: #00CC00;
}
.style12 {color: #6633FF;
	font-size: 24px;
}
.style23 {font-size: 26px;
	color: #FF00FF;
}
.style24 {font-size: 28px}
.style26 {color: #FF00FF}
.style27 {color: #FFCC00}
.style30 {color: #FF0000; font-weight: bold; font-style: italic; }
-->
</style>
</head>
<body>
<!-- START PAGE SOURCE -->
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo style3">
        <p align="center" class="style11 style27">Unified Fine-grained Access Control for Personal Health Records in Cloud Computing</p>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><strong>Home</strong></a></li>
          <li><a href="DO_Login.jsp"><strong>Patients</strong></a></li>
          <li><a href="AdminLogin.jsp"><strong>Cloud Server </strong></a></li>
          <li class="active"><a href="UserLogin.jsp"><strong>Policy Manager </strong></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="hbg">&nbsp;</div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span class="style23"><span class="style24">Assign Policy  </span><span class="style12"><span class="style26">.</span></span></span></h2>
          <p>&nbsp;</p>
          <form id="form1" name="form1" method="post" action="PAssign1.jsp">
            <table width="343" border="1" align="center">
              <tr>
                <td width="139"><span class="style30">Select Medical Staff </span></td>
                <td width="188"><select name="mstaff">
				 <option>Doctor</option>
                <option>Nurse</option>
                <option>Physician</option>
                </select>                </td>
              </tr>
              <tr>
                <td><span class="style30">Assign Role Access </span></td>
                <td><select name="ar">
                  <option>Patient Details</option>
                  <option>All</option>
                </select>                </td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><p>
                  <input name="Submit" type="submit" class="style26" value="Assign" />
                  <input name="Submit2" type="reset" class="style26" value="Reset" />
                </p></td>
              </tr>
            </table>
            <p align="center"><a href="PMain.jsp">Back</a></p>
          </form>
          </div>
        <div class="article"></div>
      </div>
      <div class="sidebar">
        <div class="searchform"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="UserMain.jsp">Home</a></li>
            <li><a href="index.html">Log Out</a></li>
            <li></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div class="clr"></div>
    </div>
  </div>
</div>
<!-- END PAGE SOURCE -->
<div align=center></div>
</body>
</html>
