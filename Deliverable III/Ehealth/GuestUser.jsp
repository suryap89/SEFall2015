<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.DBCon"%>

<%-- 
Title: Guest User
Author: Sairam
Date:11–13-2015
Package/ Module: General
Functionality: Any regular user who visits for the first to our application see these common links. (Home page, login screen, about us and etc).
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
<li class="active"><a href="index.jsp">Home</a></li>
<li><a href="Admin.jsp">Admin</a></li>
<li><a href="Hospital.jsp">Hospital</a></li>
<li><a href="Doctor.jsp">Doctor</a></li>
<li><a href="User.jsp">Users</a></li>
</ul>

      
<div id="content" style="background-color:;height:400px;width:900px;float:left;">
<center>
		

<h1 align="center"><font size="" color="#FFF">Events Form</h1><br/>
   
	
<table align="center" border="1">
<tr><th>Event Details</th><th>Event Date</th>
<%
			 Connection con = DBCon.getCon();
			 Statement stmt = con.createStatement();
			 ResultSet rs = stmt.executeQuery("select * from addevent");
			 while(rs.next()){
				 String s1 =rs.getString(1);
				 String s2 =rs.getString(2);
				 
				 %>
				 <tr><td><%=s1%></td>
				 <td><%=s2%></td>
				 
				 <%}%>
			 </select>

</td></tr>


</td></tr></table>
   <h1 align="center"><font size="" color="#FFF">Available Doctor Form</h1><br/>
   
	
<table align="center" border="1">
<tr><th>Doctor Name</th><th>Speciality</th><th>Work Experience</th><th>Qualification</th><th>Gender</th>
<%
			 con = DBCon.getCon();
			 stmt = con.createStatement();
			 rs = stmt.executeQuery("select * from adddoctor");
			 while(rs.next()){
				 String s1 =rs.getString(1);
				 String s2 =rs.getString(2);
				 String s3 =rs.getString(3);
				 String s4 =rs.getString(4);
				 String s5 =rs.getString(5);
				 %>
				 <tr><td><%=s1%></td>
				 <td><%=s2%></td>
				 <td><%=s3%></td>
				 <td><%=s4%></td>
				 <td><%=s5%></td>
				 <%}%>
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
