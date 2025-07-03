package com.kits.cse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement; 
import java.sql.ResultSet;         
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/career_crafts";
	private static final String DB_USER = "root";
	private static final String DB_PASS = "";

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);

			String email = request.getParameter("email");
			String password = request.getParameter("password");

			System.out.println("Email: " + email);
			System.out.println("Password: " + password);

			String sql = "SELECT * FROM career_crafts WHERE email=? AND password=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, email);
			stmt.setString(2, password);

			ResultSet res = stmt.executeQuery();

			if (res.next()) {
				int status = res.getInt("status");
				if (status == 0) {
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Login failed. wait for admin to accept your request.');");
					out.println("location='wait.jsp';");
					out.println("</script>");
				} else {
					HttpSession session = request.getSession(true);
					session.setAttribute("email", email);

					out.println("<script type=\"text/javascript\">");
					out.println("alert('Login successful');");
					out.println("location='newfile.jsp';");
					out.println("</script>");
				}
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Login failed. Please try again.');");
				out.println("location='login.jsp';");
				out.println("</script>");
			}

			res.close();
			stmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
			out.println("Error: " + e.getMessage());
		} finally {
			out.close();
		}
	}
}
