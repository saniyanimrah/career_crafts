<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Select Career Stage</title>
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
      background: linear-gradient(135deg, #e0f7fa, #f3e5f5);
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
    

    .stage-container {
      max-width: 500px;
      margin: 60px auto;
      padding: 40px 30px;
      background: white;
      border-radius: 16px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
      text-align: center;
    }

    h2 {
      margin-bottom: 30px;
      color: #333;
      font-size: 26px;
    }

    .options {
      display: flex;
      flex-direction: column;
      gap: 20px;
    }

    .option-link {
  padding: 15px;
  font-size: 18px;
  background-color: #00b4d8; /* Light blue */
  color: white;
  border: none;
  border-radius: 16px;
  text-decoration: none;
  text-align: center;
  transition: background-color 0.3s ease, transform 0.3s ease;
}

.option-link:hover {
  background-color: #006d77; /* Darker on hover */
  transform: scale(1.05);
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



  <div class="stage-container">
    <h2>Select Your Current Education Level</h2>
    <div class="options">
      <a href="afterssc.jsp" class="option-link">After SSC</a>
      <a href="afterinter.jsp" class="option-link">After Intermediate</a>
      <a href="afterug.jsp" class="option-link">After Under Graduation</a>
    </div>
  </div>

</body>
</html>
