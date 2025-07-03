<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Career Craft</title>

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&family=Roboto&display=swap" rel="stylesheet">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Roboto', sans-serif;
      height: 100vh;
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
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
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
    label {
      font-weight: bold;
      display: block;
      margin-bottom: 6px;
      margin-top: 15px;
    }
    .info-message {
  background-color: #fff3cd;
  color: #856404;
  border: 1px solid #ffeeba;
  padding: 15px 20px;
  text-align: center;
  font-size: 17px;
  animation: fadeInInfo 1s ease;
  font-family: 'Roboto', sans-serif;
  margin: 10px 20px;
  border-radius: 10px;
  box-shadow: 0 4px 10px rgba(0,0,0,0.1);
}

@keyframes fadeInInfo {
  from {
    opacity: 0;
    transform: translateY(-10px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.info-message i {
  margin-right: 8px;
  color: #ffc107;
}
    


    @media (max-width: 600px) {
      .nav-btn {
        width: 80%;
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
<!-- Add this section just after the <header> tag -->
<div class="info-message">
  <p><i class="fas fa-info-circle"></i> After registration, please <strong>wait for admin approval</strong> before logging in. You can log in once your request is accepted. Thank you for your patience!</p>
</div>


 

</body>
</html>
