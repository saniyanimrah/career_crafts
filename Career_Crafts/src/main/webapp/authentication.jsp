<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.kits.cse.DBConnection"%>
<%
	String email=request.getParameter("email");
	PreparedStatement pst=DBConnection.getStatement("update career_crafts set status=1 where email=?");
	pst.setString(1,email);
	
	int ss=pst.executeUpdate();
	if(ss>0){
		response.sendRedirect("viewusers.jsp?msg=updated");
	}else{
		response.sendRedirect("viewusers.jsp?msg=not updated");
	}
%>