<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>After UG</title>
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

    /* Horizontal menu */
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
      margin: 30px auto;
      background: #ffffff;
      padding: 30px 40px;
      border-radius: 15px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
    }

    h1 {
      text-align: center;
      margin-bottom: 30px;
      color: #00796b;
    }
    h2 {
      text-align: center;
      margin-bottom: 30px;
      color: #00796b;
    }
    
    .question {
      margin-bottom: 25px;
    }

    .question p {
      font-size: 1.1em;
      margin-bottom: 10px;
      font-weight: bold;
    }

    label {
      display: block;
      margin-bottom: 8px;
      cursor: pointer;
      color: #333;
    }

    input[type="radio"] {
      margin-right: 10px;
    }

    .submit-section {
      text-align: center;
      margin-top: 40px;
    }

    .submit-btn {
      display: inline-block;
      background: #ffffff;
      border: 2px solid #006d77;
      padding: 15px 30px;
      border-radius: 12px;
      font-weight: bold;
      color: #006d77;
      font-size: 18px;
      text-align: center;
      cursor: pointer;
      transition: all 0.3s ease;
    }

    .submit-btn:hover {
      background-color: #00b4d8;
      color: white;
      transform: scale(1.05);
    }
    
   .modal {
  display: block;
  position: fixed;
  z-index: 1000;
  padding-top: 100px;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgba(0, 0, 0, 0.5);
}

.modal-content {
  background-color: #fff;
  margin: auto;
  padding: 30px;
  border: 2px solid #00b4d8; 
  width: 60%;
  border-radius: 12px;
  font-family: sans-serif;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
}

.modal h2 {
  color: red; 
}

.modal p {
  font-size: 16px;
  color: #333;
}

.close-btn {
  background-color: #00b4d8; 
  color: white;
  padding: 10px 20px;
  border: none;
  float: right;
  margin-top: 20px;
  cursor: pointer;
  border-radius: 5px;
}

.close-btn:hover {
  background-color: #0077b6; 
}
    
  </style>
</head>
<body>

  <header>
    Career Craft:Custom Paths for Unique Minds
  </header>

  <div class="menu-container">
    <div class="menu">
      <button class="nav-btn" onclick="location.href='home.jsp'"><i class="fas fa-home"></i> Home</button>
      <button class="nav-btn" onclick="location.href='quiz.jsp'"><i class="fas fa-brain"></i> Quiz</button>
      <button class="nav-btn" onclick="location.href='login.jsp'"><i class="fas fa-sign-out-alt"></i> Logout</button>
    </div>
  </div>

  <div class="container">
    <h2>QUIZ</h2>
    <form action="AfterugServlet" method="post">

      <div class="question">
        <p>1. What kind of tasks do you enjoy?</p>
        <label><input type="radio" name="q1" value="A" required> Solving equations and problems</label>
        <label><input type="radio" name="q1" value="B"> Analyzing market and trends</label>
        <label><input type="radio" name="q1" value="C"> Writing and researching</label>
        <label><input type="radio" name="q1" value="D"> Building or repairing things</label>
        <label><input type="radio" name="q1" value="E"> Talking to people or Giving presentations</label>
      </div>
      <div class="question">
        <p>2. Which career sounds most appealing?</p>
        <label><input type="radio" name="q2" value="A" required> Engineer or Doctor</label>
        <label><input type="radio" name="q2" value="B"> Accountant or Entrepreneur</label>
        <label><input type="radio" name="q2" value="C"> Journalist or Teacher</label>
        <label><input type="radio" name="q2" value="D"> Technician or Artist</label>
        <label><input type="radio" name="q2" value="E"> Public speaker or Leader</label>
      </div>
      <div class="question">
        <p>3. How do you usually solve problems?</p>
        <label><input type="radio" name="q3" value="A" required> With logic and formulas</label>
        <label><input type="radio" name="q3" value="B"> With budgeting and planning</label>
        <label><input type="radio" name="q3" value="C"> With storytelling or expression</label>
        <label><input type="radio" name="q3" value="D"> With creativity or tools</label>
        <label><input type="radio" name="q3" value="E"> Teamwork and Communication</label>
      </div>
      <div class="question">
        <p>4. Which subject did you score best in?</p>
        <label><input type="radio" name="q4" value="A" required> Science or Math</label>
        <label><input type="radio" name="q4" value="B"> Economics or Business</label>
        <label><input type="radio" name="q4" value="C"> English or Social Science</label>
        <label><input type="radio" name="q4" value="D"> Drawing or Work Education</label>
        <label><input type="radio" name="q4" value="E"> Civics or Leadership programs</label>
      </div>
      <div class="question">
        <p>5. Your ideal learning environment is:</p>
        <label><input type="radio" name="q5" value="A" required> Labs and experiments</label>
        <label><input type="radio" name="q5" value="B"> Case studies and markets</label>
        <label><input type="radio" name="q5" value="C"> Discussions and readings</label>
        <label><input type="radio" name="q5" value="D"> Hands-on workshops</label>
        <label><input type="radio" name="q5" value="E"> Group activities or Leadership roles</label>
      </div>

      <div class="submit-section">
        <button type="submit" class="submit-btn"><i class="fas fa-paper-plane"></i> Submit Quiz</button>
      </div>
      <div id="disclaimerModal" class="modal">
  <div class="modal-content">
    <h2>Career Quiz Disclaimer</h2>
    <p>This career guidance quiz provides suggestions based on your input. However, it is not 100% accurate and may occasionally give incorrect or incomplete recommendations.</p>
    <p>Please treat the output as a helpful guide, not as a final career decision. It's strongly advised to discuss your career goals with trusted mentors, parents, or counselors.</p>
    <p>Always explore multiple options and follow your passion and strengths.</p>
    <button class="close-btn" onclick="document.getElementById('disclaimerModal').style.display='none'">Understood</button>
  </div>
</div>
    </form>
  </div>
</body>
</html>
