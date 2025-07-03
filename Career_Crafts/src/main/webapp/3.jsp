<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Career Matches</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #eaf3f7;
      margin: 0;
      padding: 40px;
      position: relative;
      overflow-x: hidden;
    }

    /* BUBBLES BACKGROUND */
    .bubbles {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      z-index: 0;
      overflow: hidden;
    }

    .bubble {
      position: absolute;
      bottom: -100px;
      background: rgba(255, 255, 255, 0.2);
      border-radius: 50%;
      animation: float 15s infinite;
      opacity: 0.5;
    }

    @keyframes float {
      0% {
        transform: translateY(0) scale(1);
        opacity: 0.5;
      }
      50% {
        opacity: 0.7;
      }
      100% {
        transform: translateY(-120vh) scale(1.5);
        opacity: 0;
      }
    }

    

    /* FADE-IN EFFECT */
    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }

    .container {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
      gap: 30px;
      max-width: 1200px;
      margin: auto;
      position: relative;
      z-index: 2;
      animation: fadeIn 1.2s ease-in-out;
    }

    .card {
      background: white;
      border-radius: 20px;
      padding: 25px 20px;
      text-decoration: none;
      color: #333;
      box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
      transition: transform 0.4s ease, box-shadow 0.4s ease;
      position: relative;
      overflow: hidden;
    }

    .card:hover {
      transform: translateY(-8px) scale(1.03);
      box-shadow: 0 12px 25px rgba(0, 0, 0, 0.15);
    }

    .card h3 {
      margin-top: 0;
      font-size: 1.4em;
      color: #005b99;
    }

    .card p {
      font-size: 14px;
      line-height: 1.6;
      color: #444;
    }

    .tags {
      display: inline-block;
      background-color: #d4edff;
      color: #007acc;
      border-radius: 50px;
      padding: 5px 12px;
      margin: 6px 6px 0 0;
      font-size: 12px;
      transition: background 0.3s ease;
    }

    .tags:hover {
      background-color: #bde4ff;
    }

    @media (max-width: 600px) {
      body {
        padding: 20px;
      }
      .card {
        padding: 20px 15px;
      }
    }
  </style>
</head>
<body>



  <!-- CARD CONTENT -->
  <div class="container">
    <a href="3scientist.jsp" class="card">
      <h3>engineer ,Scientist / Researcher ,Doctor, Data Analyst</h3>
      <p>Logical reasoning, STEM, problem-solving, academic strength in science/math</p>
    </a>

    <a href="3accountant.jsp" class="card">
      <h3>Accountant, Business Analyst, Entrepreneur, Economist</h3>
      <p> Business, budgeting, entrepreneurship..</p>
      
    </a>

    <a href="3journalist.jsp" class="card">
      <h3>Journalist, Teacher, Writer,Lawyer</h3>
      <p>Writing, communication, expression..</p>
      
    </a>

    <a href="3designer.jsp" class="card">
      <h3>Designer, Architect, Animator, Artist</h3>
      <p> Creativity, design, arts</p>
    </a>

    <a href="3public.jsp" class="card">
      <h3> politician ,HR, Public Speaker, Army Officer</h3>
      <p>Leadership, public speaking, teamwork. </p>
     
    </a>
  </div>

</body>
</html>