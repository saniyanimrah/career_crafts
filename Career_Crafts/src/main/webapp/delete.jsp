<%@page import="com.kits.cse.DBConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<% 
	String email=request.getParameter("email");
	PreparedStatement pst=DBConnection.getStatement("delete from career_crafts where email=?");
	pst.setString(1,email);
	
	int status=pst.executeUpdate();
	if(status>0){
		
		response.sendRedirect("viewusers.jsp?msg=success");
	}else{
		response.sendRedirect("viewusers.jsp?msg=failed");
	}
%>