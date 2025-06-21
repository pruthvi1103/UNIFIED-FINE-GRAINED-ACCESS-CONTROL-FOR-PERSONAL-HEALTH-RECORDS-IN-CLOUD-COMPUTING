<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%
try 
{
   
     String mstaff=request.getParameter("mstaff");
     String ar=request.getParameter("ar");     	 
	
	 Statement st3 = connection.createStatement();
	 String status="Requested";
	 String query3 ="insert into arole (mstaff,ar) values('"+mstaff+"','"+ar+"')";
	 int k=st3.executeUpdate (query3); 
	 if(k>0)
	 {
       %>

	 	<h1> Role Assigned Successfuly</h1>
	    <p>
	      <%
	 }
			
	  	
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</p>
	    <p>&nbsp;</p>
	    <p><a href="PMain.jsp">Back</a></p>
