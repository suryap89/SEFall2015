<%-- 
Title: Logout
Author: Surya
Date:10-19-2015
Package/ Module: General
Functionality: Clear the session assigned to the user.
--%>


<%
session.invalidate();
%>
<jsp:forward page="index.jsp" />