<%@page import="java.sql.ResultSet"%>
<%@page import="com.kits.cse.DBConnection"%>
<%
	String name=request.getParameter("name");
	String pass=request.getParameter("password");

	if(name.equalsIgnoreCase("admin")&&pass.equalsIgnoreCase("admin")){
		response.sendRedirect("viewusers.jsp");
	}else{
		response.sendRedirect("admin.jsp?msg=invalid");
	}
%>
	