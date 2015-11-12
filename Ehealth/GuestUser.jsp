<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.DBCon"%>

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
</div>
<div class="hbg"><img src="images/header_images.jpg" width="915" height="286" alt="" /></div>
        <div class="mainbar">
          <div class="article">
            <h2><span></span></h2>
            
             
            
          </div>
          
           
        </div>
      
<div id="content" style="background-color:;height:400px;width:900px;float:left;">
<center>
		<h1>HEALTH TIPS</h1>
			<h3><p style="background-color: white;"><font size="3" color="indigo">The objective behind this project is to develop a web application, which helps patients to get prescriptions and suggestions from their preferred choice of doctor, without actually step in to the hospital or make an appointment with doctor.</p></h3>

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
<tr><th>Doctor Name</th><th>Speciality</th><th>Work Experience</th><th>Qualification</th><th>Gender</th><th>Contact No</th><th>Email ID</th><th>Address</th><th>Username</th><th>Password</th><th>Status</th>
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
				 String s6 =rs.getString(6);
				 String s7 =rs.getString(7);
				 String s8 =rs.getString(8);
				 String s9 =rs.getString(9);
				 String s10 =rs.getString(10);
				 String s11 =rs.getString(11);
				 %>
				 <tr><td><%=s1%></td>
				 <td><%=s2%></td>
				 <td><%=s3%></td>
				 <td><%=s4%></td>
				 <td><%=s5%></td>
				 <td><%=s6%></td>
				 <td><%=s7%></td>
				 <td><%=s8%></td>
				 <td><%=s9%></td>
				 <td><%=s10%></td>
				 <td><%=s11%></td>
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
