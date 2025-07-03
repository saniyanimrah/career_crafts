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
   
    .container {
      max-width: 600px;
      margin: 80px auto;
      background: white;
      padding: 40px;
      text-align: center;
      border-radius: 10px;
      box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
    }

    .success-msg {
      font-size: 24px;
      color: #00796b;
      font-weight: bold;
    }

    @media (max-width: 600px) {
      nav {
        flex-direction: column;
        align-items: center;
      }

      nav a {
        width: 80%;
        text-align: center;
      }

      .container {
        margin: 40px 20px;
        padding: 30px 20px;
      }
    }
  </style>
</head>

<body>

  <header>
    Career Craft: Custom Paths for Unique Minds
  </header>

   <nav>
    <button class="nav-btn" onclick="location.href='new.jsp'">
    <i class="fas fa-book"></i> About</button>
   
   <button class="nav-btn" onclick="location.href='quiz.jsp'">
    <i class="fas fa-brain"></i> Quiz</button>
    
    <button class="nav-btn" onclick="location.href='login.jsp'">
    <i class="fas fa-sign-out-alt"></i> Logout</button>
      <button class="nav-btn" onclick="location.href='admin.jsp'">
        <i class="fas fa-user-shield"></i> Admin Login
      </button>
     
   
   
  </nav>
  

  <div class="container">
    <p class="success-msg">Login successful.</p>
  </div>

</body>
</html>
