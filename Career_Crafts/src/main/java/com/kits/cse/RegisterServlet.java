package com.kits.cse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet { 
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/career_crafts";
	private static final String DB_USER = "root";
	private static final String DB_PASS  = "";
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(JDBC_URL,DB_USER,DB_PASS);
			String sql = "INSERT INTO career_crafts (name, password,gender,address,email,mobile,status) VALUES (?,?,?,?,?,?,?)";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, name);
			stmt.setString(2, password);
			stmt.setString(3, gender);
			stmt.setString(4, address);
			stmt.setString(5, email);
			stmt.setString(6, mobile);
			stmt.setInt(7,0);
			int rowsInserted = stmt.executeUpdate();
			if (rowsInserted > 0) {
			    out.println("<script type=\"text/javascript\">");
			    out.println("alert('Registration successful');");
			    out.println("location='login.jsp';");
			    out.println("</script>");
			} else {
			    out.println("<script type=\"text/javascript\">");
			    out.println("alert('Registration failed. Please try again.');");
			    out.println("location='registration.jsp';");
			    out.println("</script>");
			}

			
			stmt.close();
			conn.close();
		}
		catch (Exception e) {
			e.printStackTrace();
			out.println("<h4>Error: "+ e.getMessage() + "</h4>");
		}
		finally {
			out.close();
			
		}
			
	}
}
