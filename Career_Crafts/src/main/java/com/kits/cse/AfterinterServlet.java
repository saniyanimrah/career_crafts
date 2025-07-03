package com.kits.cse;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;

@WebServlet("/AfterinterServlet")
public class AfterinterServlet extends HttpServlet {
	  private static final String JDBC_URL = "jdbc:mysql://localhost:3306/career_crafts";
	    private static final String DB_USER = "root";
	    private static final String DB_PASS = "";

	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {

	        response.setContentType("text/html;charset=UTF-8");
	        PrintWriter out = response.getWriter();

	        int a = 0, b = 0, c = 0, d = 0, e = 0;
	        String[] answers = new String[5];

	        // Collect 5 answers (q1 to q5)
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
	            result = "Interest: Technology, logic, machines, software, and coding.<br>" +
	                     "Suggested Career Path:<br>" +
	                     "- Engineering (CSE, ECE, AI/ML)<br>" +
	                     "- Software Development<br>" +
	                     "- Robotics<br>" +
	                     "- Data Science<br>" +
	                     "- Tech Startups<br>" +
	                     "Entrance Exam: JEE / CET<br>" +
	                     "<div class='button-container' style='justify-content:center;'>" +
	                     "<a href='2engineering.jsp' class='uniform-button'>More Details</a>" +
	                     "</div>";
	        } else if (b >= a && b >= c && b >= d && b >= e) {
	            result = "Interest: Life sciences, health care, and human biology.<br>" +
	                     "Suggested Career Path:<br>" +
	                     "- Doctor<br>" +
	                     "- Pharmacist<br>" +
	                     "- Paramedic<br>" +
	                     "- Nursing<br>" +
	                     "- Biotechnology<br>" +
	                     "Entrance Exam: NEET<br>" +
	                     "<div class='button-container' style='justify-content:center;'>" +
	                     "<a href='2lifescience.jsp' class='uniform-button'>More Details</a>" +
	                     "</div>";
	        } else if (c >= a && c >= b && c >= d && c >= e) {
	            result = "Interest: Business, finance, entrepreneurship, and management.<br>" +
	                     "Suggested Career Path:<br>" +
	                     "- Business Administration<br>" +
	                     "- Commerce<br>" +
	                     "- CA / CS<br>" +
	                     "- Financial Analyst<br>" +
	                     "Entrance Exam: CUET / IPMAT / Other BBA-related exams<br>" +
	                     "<div class='button-container' style='justify-content:center;'>" +
	                     "<a href='2business.jsp' class='uniform-button'>More Details</a>" +
	                     "</div>";
	        } else if (d >= a && d >= b && d >= c && d >= e) {
	            result = "Interest: Creative arts, communication, literature, law, and design.<br>" +
	                     "Suggested Career Path:<br>" +
	                     "- Lawyer<br>" +
	                     "- Teacher<br>" +
	                     "- Journalist<br>" +
	                     "- Designer<br>" +
	                     "- Writer<br>" +
	                     "Entrance Exam: CLAT / NIFT / CUCET<br>" +
	                     "<div class='button-container' style='justify-content:center;'>" +
	                     "<a href='2law.jsp' class='uniform-button'>More Details</a>" +
	                     "</div>";
	        } else {
	            result = "Interest: Physical fitness, defense, adventure, and discipline.<br>" +
	                     "Suggested Career Path:<br>" +
	                     "- Army / Navy / Airforce<br>" +
	                     "- Police / CRPF / BSF<br>" +
	                     "- Pilot<br>" +
	                     "Entrance Exam: NDA / SSB<br>" +
	                     "<div class='button-container' style='justify-content:center;'>" +
	                     "<a href='2physical_fitness.jsp' class='uniform-button'>More Details</a>" +
	                     "</div>";
	        }

	        try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {
	            Class.forName("com.mysql.cj.jdbc.Driver");

	            HttpSession session = request.getSession(false);
	            String email = (session != null) ? (String) session.getAttribute("email") : null;
	            if (email != null) {
	                String sql = "INSERT INTO inter (q1, q2, q3, q4, q5, result, email) VALUES (?, ?, ?, ?, ?, ?, ?)";
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
	        request.getRequestDispatcher("interResult.jsp").forward(request, response);
	    }
	}