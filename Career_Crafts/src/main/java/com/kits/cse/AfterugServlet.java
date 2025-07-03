package com.kits.cse;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.http.HttpSession;

@WebServlet("/AfterugServlet")
public class AfterugServlet extends HttpServlet {
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
            result = "Interest: Logical reasoning, STEM, problem-solving, academic strength in science/math.<br>" +
                     "Suggested Career Path:<br>" +
                     "- Engineer<br>" +
                     "- Scientist / Researcher<br>" +
                     "- Doctor<br>" +
                     "- Data Analyst<br>" +
                     "Learning Style: Labs, experiments.<br>" +
                     "<div class='button-container' style='justify-content:center;'>" +
                     "<a href='3scientist.jsp' class='uniform-button'>More Details</a>" +
                     "</div>";
        } else if (b >= a && b >= c && b >= d && b >= e) {
            result = "Interest: Business, budgeting, entrepreneurship.<br>" +
                     "Suggested Career Path:<br>" +
                     "- Accountant<br>" +
                     "- Business Analyst<br>" +
                     "- Entrepreneur<br>" +
                     "- Economist<br>" +
                     "Learning Style: Case studies.<br>" +
                     "<div class='button-container' style='justify-content:center;'>" +
                     "<a href='3accountant.jsp' class='uniform-button'>More Details</a>" +
                     "</div>";
        } else if (c >= a && c >= b && c >= d && c >= e) {
            result = "Interest: Writing, communication, expression.<br>" +
                     "Suggested Career Path:<br>" +
                     "- Journalist<br>" +
                     "- Teacher<br>" +
                     "- Writer<br>" +
                     "- Lawyer<br>" +
                     "Learning Style: Discussions.<br>" +
                     "<div class='button-container' style='justify-content:center;'>" +
                     "<a href='3journalist.jsp' class='uniform-button'>More Details</a>" +
                     "</div>";
        } else if (d >= a && d >= b && d >= c && d >= e) {
            result = "Interest: Creativity, design, arts.<br>" +
                     "Suggested Career Path:<br>" +
                     "- Designer<br>" +
                     "- Architect<br>" +
                     "- Animator<br>" +
                     "- Artist<br>" +
                     "Learning Style: Workshops.<br>" +
                     "<div class='button-container' style='justify-content:center;'>" +
                     "<a href='3designer.jsp' class='uniform-button'>More Details</a>" +
                     "</div>";
        } else {
            result = "Interest: Leadership, public speaking, teamwork.<br>" +
                     "Suggested Career Path:<br>" +
                     "- Politician<br>" +
                     "- HR<br>" +
                     "- Public Speaker<br>" +
                     "- Army Officer<br>" +
                     "Learning Style: Group activities.<br>" +
                     "<div class='button-container' style='justify-content:center;'>" +
                     "<a href='3public.jsp' class='uniform-button'>More Details</a>" +
                     "</div>";
        }

      

        try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {
            Class.forName("com.mysql.cj.jdbc.Driver");

            HttpSession session = request.getSession(false);
            String email = (session != null) ? (String) session.getAttribute("email") : null;
            if (email != null) {
                String sql = "INSERT INTO ug (q1, q2, q3, q4, q5, result, email) VALUES (?, ?, ?, ?, ?, ?, ?)";
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
        request.getRequestDispatcher("ugResult.jsp").forward(request, response);
    }
}