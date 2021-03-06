package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DoctorLogin extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	response.setContentType("text/html");
	boolean flag=false;
	HttpSession session=request.getSession();
	PrintWriter out = response.getWriter();
	String user=request.getParameter("t1").trim();
	String pass=request.getParameter("t2").trim();
	try{
		String msg=DBCon.doctorLogin(user,pass);
		if(msg.equals("success")){
			session.setAttribute("user",user);
			RequestDispatcher rd=request.getRequestDispatcher("DoctorScreen.jsp?t1=Welcome "+user);
			rd.forward(request, response);
		}else{
			response.sendRedirect("DoctorLogin.jsp?t1=Invalid Login");
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	}

}
