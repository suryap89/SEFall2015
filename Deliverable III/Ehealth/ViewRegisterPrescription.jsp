<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.DBCon"%>

<%-- 
Title: ViewRegisteredPrescription
Author: Divya
Date:10-26-2015
Package/ Module: User
Functionality: A web for registered user to see the details of prescriptions history.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>E-HEALTH CARE</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />

</head>
<body>

<div class="main">
  <div class="main_resize">
    <div class="header">
      <div class="logo">
      <h1><a href="#"><span><center>E-HEALTH CARE  SYSTEM</center></span><small></small></a></h1>
      </div>
    </div>
    <div class="content">
      <div class="content_bg">
        <div class="menu_nav">
        <ul>
		<li class="active"><a href="RegisterPrescription.jsp">Request Prescription</a></li>
		<li class="active"><a href="ViewRegisterPrescription.jsp">View Prescription</a></li>
<li><a href="Logout.jsp">Logout</a></li>

</ul>

      
<div id="content" style="background-color:;height:400px;width:900px;float:left;">
<center>
		
   <h1 align="center"><font size="" color="#FFF">View Prescription Form</h1><br/>
   
	
<table align="center" border="1">
<tr><th>Username</th><th>Doctor Name</th><th>Symptoms</th><th>Date & Time</th><th>Prescription</th>
<%
String s1="";String s2="";String s3="";String s4="";String s5="";
String user = session.getAttribute("user").toString();
			 Connection con = DBCon.getCon();
			 Statement stmt = con.createStatement();
			 ResultSet rs = stmt.executeQuery("select * from registerprescription where username='"+user+"'");
			 while(rs.next()){
				 s1 =rs.getString(1);
				 s2 =rs.getString(2);
				 s3 =rs.getString(3);
				 s4 =rs.getString(4);
				 s5 =rs.getString(5);
			 }
				 %>
				 <tr><td><%=s1%></td>
				 <td><%=s2%></td>
				 <td><%=s3%></td>
				 <td><%=s4%></td>
				 <td><%=s5%></td>
				 
				 
			 </select>

</td></tr>


</td></tr></table>
</html>

	
			</center>
</div>


</div>


         
        </div>
       
        
      </div>
     
    </div>
    
    </div>
    </form>
 
 
  </body>
</html>
