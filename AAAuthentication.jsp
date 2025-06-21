<title>AA Authentication Page</title>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%
	String name = request.getParameter("userid");
	String pass = request.getParameter("pass");


	try {
					
			
					String sql = "SELECT * FROM AA where name='"+name+"' and pass='"+pass+"' ";
					Statement stmt = connection.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					if (rs.next()==true) 
					{
		
								
									response.sendRedirect("AAMain.jsp");
				    }
								
				
					else
					{
						response.sendRedirect("AARe-Login.jsp");
					}
				
				

	}
	 catch (Exception e)
	  {
		out.print(e);
		e.printStackTrace();
	}
%>

