<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>UG Recommendation - Career Craft</title>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&family=Roboto&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Roboto', sans-serif;
      background: linear-gradient(135deg, #e0f7fa, #ffffff);
      min-height: 100vh;
    }

    header {
      background: linear-gradient(to right, #006d77, #83c5be);
      color: white;
      padding: 25px 10px;
      text-align: center;
      font-family: 'Montserrat', sans-serif;
      font-size: 30px;
      letter-spacing: 1px;
      box-shadow: 0 4px 15px rgba(0,0,0,0.3);
      animation: slideDown 1s ease;
    }

    @keyframes slideDown {
      from { transform: translateY(-50px); opacity: 0; }
      to { transform: translateY(0); opacity: 1; }
    }

    .menu-container {
      display: flex;
      justify-content: center;
      background-color: #ffffff;
      padding: 10px 0;
      box-shadow: 0 4px 6px rgba(0,0,0,0.1);
    }

    .menu {
      display: flex;
      gap: 20px;
      flex-wrap: wrap;
      justify-content: center;
    }

    .nav-btn {
      background: #ffffff;
      border: 2px solid #006d77;
      padding: 12px 25px;
      border-radius: 10px;
      cursor: pointer;
      font-weight: bold;
      color: #006d77;
      font-size: 16px;
      text-align: center;
      transition: all 0.3s ease;
      box-shadow: 2px 4px 10px rgba(0, 0, 0, 0.05);
      position: relative;
      overflow: hidden;
    }

    .nav-btn i {
      margin-right: 8px;
      color: #00b4d8;
      transition: transform 0.3s ease;
    }

    .nav-btn::before {
      content: "";
      position: absolute;
      top: 0;
      left: -100%;
      width: 100%;
      height: 100%;
      background: linear-gradient(to right, rgba(0, 181, 204, 0.2), rgba(0, 181, 204, 0.6));
      transition: all 0.4s ease-in-out;
      z-index: 0;
    }

    .nav-btn:hover::before {
      left: 0;
    }

    .nav-btn:hover {
      color: white;
      background-color: #00b4d8;
      transform: scale(1.05);
      box-shadow: 0 6px 20px rgba(0, 180, 216, 0.4);
    }

    .nav-btn:hover i {
      transform: translateX(5px);
      color: white;
    }

    .container {
      width: 90%;
      max-width: 800px;
      margin: 40px auto;
      background: #ffffff;
      padding: 40px;
      border-radius: 15px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
    }

    h2 {
      text-align: center;
      color: #00796b;
      margin-bottom: 25px;
      font-size: 28px;
    }

    .result {
      color: #2e7d32;
      font-size: 16px;
      line-height: 1.8;
      white-space: pre-line;
      text-align: left;
      background: #f1f8e9;
      border-left: 5px solid #66bb6a;
      padding: 20px;
      border-radius: 10px;
    }

    .back-link {
      display: block;
      text-align: center;
      margin-top: 30px;
      color: #0d47a1;
      text-decoration: none;
      font-weight: bold;
    }

    .back-link:hover {
      text-decoration: underline;
    }
      .button-container {
    display: flex;
    gap: 20px;
    margin-top: 20px;
  }

  .uniform-button {
    padding: 10px 20px;
    background-color: #008CBA;
    color: white;
    font-size: 16px;
    border-radius: 10px;
    border: none;
    text-decoration: none;
    display: inline-block;
    text-align: center;
    transition: background-color 0.3s ease;
  }

  .uniform-button:hover {
    background-color: #006f98;
  }
   .save-form {
      text-align: center;
      margin-top: 30px;
    }

    .save-form button {
      margin-top: 10px;
    }
  </style>
</head>
<body>

  <header>
    Career Craft: Custom Paths for Unique Minds
  </header>

  <div class="menu-container">
    <div class="menu">
      <button class="nav-btn" onclick="location.href='home.jsp'"><i class="fas fa-home"></i> Home</button>
      <button class="nav-btn" onclick="location.href='quiz.jsp'"><i class="fas fa-brain"></i> Quiz</button>
      <button class="nav-btn" onclick="location.href='login.jsp'"><i class="fas fa-sign-out-alt"></i> Logout</button>
    </div>
  </div>

  <div class="container">
    <h2>Your Recommended Stream After Intermediate:</h2>
    <div class="result">
        ${careerResult}
    </div>
  
 <div class="button-container" style="justify-content:center;">
    <a href="quiz.jsp" class="uniform-button">← Go back to Quiz</a>
    <a href="1.jsp" class="uniform-button" target="blank">Know More About Other Courses</a>
    </div>
    <form class="save-form" action="SaveServlet" method="post">
      <input type="hidden" name="username" value="${username}">
      <input type="hidden" name="career" value="${careerResult}">
      <button type="submit" class="nav-btn">
        <i class="fas fa-save"></i> Save Result
      </button>
    </form>
  </div>
  <div style="text-align: center; margin-top: 50px;">
  <button class="nav-btn"  onclick="location.href='viewResults.jsp'">
  <i class="fas fa-eye"></i> View Saved Results
</button>
   </div>
</body>
</html>
