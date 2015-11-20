<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.DBCon"%>

<%-- 
Title: ViewHomeDelivery
Author: Sairam
Date:11–05-2015
Package/ Module: User
Functionality: A web page for user to watch out the details of home deliveries.
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
<li><a href="HospitalRequest.jsp">Hospital Request</a></li>
<li><a href="DoctorRequest.jsp">Doctor Request</a></li>
<li class="active"><a href="ViewHomeDelivery.jsp">Home Delivery</a></li>
<li><a href="DeleteProfile.jsp">Delete Profile</a></li>
<li><a href="AddEvent.jsp">Broadcast Event</a></li>
<li><a href="Logout.jsp">Logout</a></li>

</ul>
</div>
<div class="hbg"><img src="images/header_images.jpg" width="915" height="286" alt="" /></div>
        <div class="mainbar">
          <div class="article">
            <h2><span></span></h2>
            
             
            
          </div>
          
           
        </div>
      
<div id="content" style="background-color:;height:400px;width:900px;float:left;">
<center>
		
   <h1 align="center"><font size="" color="#FFF">Hospital Request Form</h1><br/>
   
	
<table align="center" border="1">
<tr><th>Username</th><th>Medicine Details</th><th>Date & Time</th><th>Status</th><th>Contact No</th><th>Address</th><th>Change Status</th>
<%
			 Connection con = DBCon.getCon();
			 Statement stmt = con.createStatement();
			 ResultSet rs = stmt.executeQuery("select * from homedelivery where status='pending'");
			 while(rs.next()){
				 String s1 =rs.getString(1);
				 String s2 =rs.getString(2);
				 String s3 =rs.getString(3);
				 String s4 =rs.getString(4);
				 Statement stmt1 = con.createStatement();
				 ResultSet rs1 = stmt1.executeQuery("select contact_no,address from users where username='"+s1+"'");
				 while(rs1.next()){
					  String s5 =rs1.getString(1);
					  String s6 =rs1.getString(2);
				 %>
				 <tr><td><%=s1%></td>
				 <td><%=s2%></td>
				 <td><%=s3%></td>
				 <td><%=s4%></td>
				 <td><%=s5%></td>
				 <td><%=s6%></td>
				 
				 <td><a href="Delivered?t1=<%=s1%>">Click Here</a></td>
				 <%}}%>
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
