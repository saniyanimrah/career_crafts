package com.kits.cse;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;

@WebServlet("/AftersscServlet")
public class AftersscServlet extends HttpServlet {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/career_crafts";
    private static final String DB_USER = "root";
    private static final String DB_PASS = "";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        int a = 0, b = 0, c = 0, d = 0, e = 0;
        String[] answers = new String[5];

        
        for (int i = 1; i <= 5; i++) {
            answers[i - 1] = request.getParameter("q" + i);
            switch (answers[i - 1]) {
                case "A": a++; break;
                case "B": b++; break;
                case "C": c++; break;
                case "D": d++; break;
                case "E": e++; break;
            }
        }

        String result = "";

        if (a >= b && a >= c && a >= d && a >= e) {
        	result = "Interest: Analytical thinking, problem-solving, and logical reasoning.<br>" +
        	         "Suggested Stream/Career:<br>" +
        	         "Stream: Science with Maths<br>" +
        	         "Career: Engineering, Data Science, Statistics, Mathematics, AI/ML, or Coding-related fields.<br>" +
        	         "<div class='button-container' style='justify-content:center;'>" +
        	         "<a href='1science_and_maths.jsp' class='uniform-button'>More Details</a>" +
        	         "</div>";

        } else if (b >= a && b >= c && b >= d && b >= e) {
            result = "Interest: Business, market analysis, financial literacy.<br>" +
                     "Suggested Stream/Career:<br>" +
                     "Stream: Commerce<br>" +
                     "Career: Business Management, Marketing, Finance, Entrepreneurship, or Economics.<br>" +
                     "<div class='button-container' style='justify-content:center;'>" +
                     "<a href='1Commerce.jsp' class='uniform-button'>More Details</a>" +
                     "</div>";
        } else if (c >= a && c >= b && c >= d && c >= e) {
            result = "Interest: Humanities, creativity, communication, and writing.<br>" +
                     "Suggested Stream/Career:<br>" +
                     "Stream: Arts / Humanities<br>" +
                     "Career: Journalism, History, Political Science, Psychology, Literature, or Social Work.<br>" +
                     "<div class='button-container' style='justify-content:center;'>" +
                     "<a href='1Arts.jsp' class='uniform-button'>More Details</a>" +
                     "</div>";
        } else if (d >= a && d >= b && d >= c && d >= e) {
            result = "Interest: Technology, logic, computers, and innovative thinking.<br>" +
                     "Suggested Stream/Career:<br>" +
                     "Stream: Science with Computers<br>" +
                     "Career: Computer Science, Software Engineering, Robotics, or IT.<br>" +
                     "<div class='button-container' style='justify-content:center;'>" +
                     "<a href='1Science+_with_Computers.jsp' class='uniform-button'>More Details</a>" +
                     "</div>";
        } else {
            result = "Interest: Life sciences, healthcare, human biology, and service.<br>" +
                     "Suggested Stream/Career:<br>" +
                     "Stream: Science with Biology<br>" +
                     "Career: Doctor, Nursing, Biotechnology, Pharmacy, or Research in Medical field.<br>" +
                     "<div class='button-container' style='justify-content:center;'>" +
                     "<a href='1science_with_Biology.jsp' class='uniform-button'>More Details</a>" +
                     "</div>";
        }

       
        try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {
            Class.forName("com.mysql.cj.jdbc.Driver");

            HttpSession session = request.getSession(false);
            String email = (session != null) ? (String) session.getAttribute("email") : null;
            if (email != null) {
                String sql = "INSERT INTO ssc (q1, q2, q3, q4, q5, result, email) VALUES (?, ?, ?, ?, ?, ?, ?)";
                try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                    for (int i = 0; i < 5; i++) {
                        stmt.setString(i + 1, answers[i]);
                    }
                    stmt.setString(6, result);
                    stmt.setString(7, email);
                    stmt.executeUpdate();
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        request.setAttribute("careerResult", result);
        request.getRequestDispatcher("sscResult.jsp").forward(request, response);
    }
}