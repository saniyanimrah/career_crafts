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
    /* Reset & Box Model */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    /* Base Body Styles */
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

    /* Header */
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

    /* Navigation */
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
    

    /* Form Container */
    .form-container {
      width: 90%;
      max-width: 500px;
      margin: 30px auto;
      background-color: white;
      padding: 30px;
      border-radius: 12px;
      box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
    }

    .form-container h2 {
      text-align: center;
      margin-bottom: 25px;
      color: #005f73;
    }

    label {
      font-weight: bold;
      display: block;
      margin-bottom: 6px;
      margin-top: 15px;
    }

    input, textarea, select {
      width: 100%;
      padding: 10px;
      margin-top: 4px;
      border: 1px solid #ccc;
      border-radius: 8px;
      font-size: 15px;
    }

    .gender-group {
      display: flex;
      gap: 20px;
      margin-top: 8px;
    }

    .password-wrapper {
      position: relative;
    }

    .toggle-password {
      position: absolute;
      right: 15px;
      top: 50%;
      transform: translateY(-50%);
      cursor: pointer;
      color: #888;
      background: none;
      border: none;
    }

    .submit-btn, .action-btn {
      background-color: #005f73;
      color: white;
      padding: 12px;
      margin-top: 25px;
      width: 100%;
      border: none;
      border-radius: 10px;
      font-size: 17px;
      font-weight: bold;
      cursor: pointer;
      transition: 0.3s ease;
    }

    .submit-btn:hover, .action-btn:hover {
      background-color: #0a9396;
    }

    @media (max-width: 600px) {
      .nav-btn {
        width: 80%;
      }
    }
  </style>
</head>

<body>

  <!-- Header -->
  <header>
    Career Craft: Custom Paths for Unique Minds
  </header>

  <!-- Navigation Menu -->
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


  <!-- Login Form -->
  <div class="form-container">
    <%
      String msg = request.getParameter("msg");
      if (msg != null) {
        if (msg.equalsIgnoreCase("success")) {
          out.println("<script>alert('Login successful');</script>");
        } else {
          out.println("<script>alert('Login failed');</script>");
        }
      }
    %>

    <h2>Login Form</h2>
    <form action="LoginServlet" method="post">
      <label for="email">Email</label>
      <input 
        type="email" 
        id="email" 
        name="email" 
        placeholder="Enter your email" 
        required 
        value="<%= request.getParameter("email") != null ? request.getParameter("email") : "" %>"
      >

      <label for="password">Password</label>
      <div class="password-wrapper">
        <input 
          type="password" 
          id="password" 
          name="password" 
          placeholder="Enter your password" 
          required
        >
        <button 
          type="button" 
          class="toggle-password" 
          onclick="togglePassword()" 
          aria-label="Toggle password visibility"
        >
          <i class="fas fa-eye"></i>
        </button>
      </div>

      <button type="submit" class="action-btn">
        <i class="fas fa-sign-in-alt"></i> Login
      </button>
    </form>
  </div>

  <!-- Password Toggle Script -->
  <script>
    function togglePassword() {
      const passwordInput = document.getElementById("password");
      const icon = document.querySelector(".toggle-password i");
      if (passwordInput.type === "password") {
        passwordInput.type = "text";
        icon.classList.remove("fa-eye");
        icon.classList.add("fa-eye-slash");
      } else {
        passwordInput.type = "password";
        icon.classList.remove("fa-eye-slash");
        icon.classList.add("fa-eye");
      }
    }
  </script>

</body>
</html>