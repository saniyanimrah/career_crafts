<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Career Craft</title>
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
      min-height: 100vh;
      background: linear-gradient(145deg, #e0f7fa, #fce4ec);
      display: flex;
      flex-direction: column;
      animation: fadeInBody 1.2s ease;
    }

    @keyframes fadeInBody {
      from {
        opacity: 0;
        transform: translateY(20px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
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
      from {
        transform: translateY(-50px);
        opacity: 0;
      }
      to {
        transform: translateY(0);
        opacity: 1;
      }
    }

    .menu-container {
  display: flex;
  justify-content: center;
  padding: 30px 10px;
}

.menu {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 20px;
}
    
    }

    @keyframes fadeInMenu {
      from {
        opacity: 0;
        transform: scale(0.95);
      }
      to {
        opacity: 1;
        transform: scale(1);
      }
    }

    nav {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      gap: 20px;
      padding: 20px;
    }

    .nav-btn {
      background: #ffffff;
      border: 2px solid #006d77;
      padding: 15px 30px;
      border-radius: 15px;
      cursor: pointer;
      font-weight: bold;
      color: #006d77;
      font-size: 18px;
      min-width: 250px;
      text-align: center;
      transition: all 0.3s ease;
      box-shadow: 3px 4px 15px rgba(0, 0, 0, 0.1);
      position: relative;
      overflow: hidden;
    }

    .nav-btn i {
      margin-right: 10px;
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
    .nav-btn.active {
  background-color: #00b4d8;
  color: white;
  transform: scale(1.05);
  box-shadow: 0 6px 20px rgba(0, 180, 216, 0.4);
}
.nav-btn.active i {
  color: white;
}
    

    .abstract {
      padding: 40px;
      max-width: 900px;
      margin: 0 auto;
      font-size: 16px;
      color: #333;
    }

    .abstract h4 {
      font-size: 22px;
      margin-bottom: 15px;
      color: #005f73;
    }

    .abstract p {
      margin-bottom: 15px;
      line-height: 1.6;
    }

    @media (max-width: 600px) {
      .nav-btn {
        width: 80%;
      }

      .abstract {
        padding: 20px;
      }
    }
  </style>
</head>

<body>

  <header>
    Career Craft: Custom Paths for Unique Minds
  </header>


<%
  String currentPage = request.getRequestURI();
%>
<nav>
  <button class="nav-btn <%= currentPage.contains("home.jsp") ? "active" : "" %>" onclick="location.href='home.jsp'">
    <i class="fas fa-home"></i> Home
  </button>
  <button class="nav-btn <%= currentPage.contains("registration.jsp") ? "active" : "" %>" onclick="location.href='registration.jsp'">
    <i class="fas fa-user-plus"></i> Registration Form
  </button>
  <button class="nav-btn <%= currentPage.contains("login.jsp") ? "active" : "" %>" onclick="location.href='login.jsp'">
    <i class="fas fa-sign-in-alt"></i> Login Form
  </button>
  <button class="nav-btn <%= currentPage.contains("admin.jsp") ? "active" : "" %>" onclick="location.href='admin.jsp'">
    <i class="fas fa-user-shield"></i> Admin Login
  </button>
</nav>

  <div class="abstract">
    <h4>Career Craft</h4>
    <p>
      <strong>Career Craft</strong> is a smart and interactive platform designed to help students choose the right career path based on their interests, skills, and subject strengths. In today's rapidly evolving world, students often face confusion and peer pressure in selecting the right career after their 10th or 12th grade. Traditional counseling methods fail to address individual passion and preferences effectively. This project aims to bridge the gap by introducing a technology-driven solution that maps a student's interests with suitable career opportunities.
    </p>
    <p>
      The system collects input through an interactive questionnaire or aptitude test that analyzes the user's strengths, hobbies, and subject inclinations. Based on the collected data, it suggests multiple career paths like Engineering, Medical, Design, Management, Defense, ITI, Polytechnic, etc., tailored to the user's profile. It uses a structured decision-making flow, visual guides, and career charts to assist students in making informed choices.
    </p>
    <p>
      The project integrates basic rule-based logic or machine learning techniques for personalized recommendations. It also includes real-world details such as course duration, entrance exams, eligibility, and growth scope. The system acts as a virtual mentor, reducing dependency on human counselors.
    </p>
    <p>
      Overall, Career Craft serves as a student-friendly, interest-driven roadmap to help learners explore, evaluate, and pursue careers with confidence.
    </p>
  </div>
  <script>
  const links = document.querySelectorAll('.nav-link');
  const currentPage = window.location.pathname.split("/").pop();

  links.forEach(link => {
    if (link.getAttribute("href") === currentPage) {
      link.classList.add("active");
    }
  });
</script>

</body>
</html>
