<%@ page import="java.sql.*, javax.servlet.http.*, javax.servlet.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
   
    String email = (session != null) ? (String) session.getAttribute("email") : null;
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Saved Career Results - Career Craft</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f1f1f1;
            padding: 30px;
        }
        .container {
            max-width: 800px;
            background: white;
            padding: 30px;
            margin: auto;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #006d77;
        }
        .result-box {
            background: #e0f7fa;
            padding: 20px;
            border-radius: 10px;
            margin: 15px 0;
            border-left: 6px solid #00b4d8;
            white-space: pre-line;
        }
        .no-result {
            color: red;
            text-align: center;
            margin-top: 20px;
        }
        .nav-btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #008CBA;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            text-align: center;
            margin-top: 30px;
        }
        .nav-btn:hover {
            background-color: #00749f;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Your Saved Career Results</h2>

        <%
            if (email == null) {
        %>
            <p class="no-result">Session expired. Please <a href="login.jsp">login</a> again.</p>
        <%
            } else {
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/career_crafts", "root", "");
                    String sql = "SELECT final_result FROM user_result WHERE email = ?";
                    PreparedStatement ps = conn.prepareStatement(sql);
                    ps.setString(1, email);
                    ResultSet rs = ps.executeQuery();

                    boolean hasResult = false;

                    while (rs.next()) {
                        hasResult = true;
        %>
                        <div class="result-box">
                            <%= rs.getString("final_result") %>
                        </div>
        <%
                    }

                    if (!hasResult) {
        %>
                        <p class="no-result">No results found for your account.</p>
        <%
                    }

                    rs.close();
                    ps.close();
                    conn.close();
                } catch (Exception e) {
                    out.println("<p class='no-result'>Error: " + e.getMessage() + "</p>");
                }
            }
        %>

        <div style="text-align:center;">
            <a href="home.jsp" class="nav-btn">← Back to Home</a>
        </div>
    </div>
</body>
</html>
