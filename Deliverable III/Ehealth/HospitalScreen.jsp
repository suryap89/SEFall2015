<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.DBCon"%>

<%-- 
Title: HospitalScreen
Author: Sairam
Date:11-10-2015
Package/ Module: Hospital
Functionality: A page for hospital with links to do their own tasks.
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
<li><a href="Logout.jsp">Logout</a></li>

</ul>
</div>

      
<div id="content" style="background-color:;height:400px;width:900px;float:left;">
<center>
		
   <h1 align="center"><font size="" color="#FFF">View Hospital Form</h1><br/>
   
	
<table align="center" border="1">
<tr><th>Hospital Name</th><th>Speciality</th><th>Contact No</th><th>Email ID</th><th>Address</th><th>Username</th><th>Password</th><th>Status</th>
<%
String user = session.getAttribute("user").toString();
			 Connection con = DBCon.getCon();
			 Statement stmt = con.createStatement();
			 ResultSet rs = stmt.executeQuery("select * from addhospital where username='"+user+"'");
			 while(rs.next()){
				 String s1 =rs.getString(1);
				 String s2 =rs.getString(2);
				 String s3 =rs.getString(3);
				 String s4 =rs.getString(4);
				 String s5 =rs.getString(5);
				 String s6 =rs.getString(6);
				 String s7 =rs.getString(7);
				 String s8 =rs.getString(8);
				 %>
				 <tr><td><%=s1%></td>
				 <td><%=s2%></td>
				 <td><%=s3%></td>
				 <td><%=s4%></td>
				 <td><%=s5%></td>
				 <td><%=s6%></td>
				 <td><%=s7%></td>
				 <td><%=s8%></td>
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
