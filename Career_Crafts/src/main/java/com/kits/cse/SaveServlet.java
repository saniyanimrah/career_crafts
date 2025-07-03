package com.kits.cse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/SaveServlet")
public class SaveServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        HttpSession session = request.getSession(false); 
        String email = (session != null) ? (String) session.getAttribute("email") : null;
        String finalResult = request.getParameter("career");

        if (email == null || finalResult == null || finalResult.trim().isEmpty()) {
            out.println("<h3 style='color:red;'>Error: Session expired or result is empty.</h3>");
            return;
        }

        Connection conn = null;
        PreparedStatement ps = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/career_crafts", "root", "");

            String sql = "insert into user_result values(?,?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, finalResult);

            int rows = ps.executeUpdate();

            if (rows > 0) {
            	out.println("<script type=\"text/javascript\">");
				out.println("alert('saved successfully');");
				out.println("</script>");
            } else {
            	out.println("<script type=\"text/javascript\">");
				out.println("alert('cannot save');");
				out.println("location='quiz.jsp';");
				out.println("</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3 style='color:red;'>Database Error: " + e.getMessage() + "</h3>");
        } finally {
            try {
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
