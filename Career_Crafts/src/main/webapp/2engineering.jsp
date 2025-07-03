<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Engineering & Tech Careers</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: #e6f3ff;
      margin: 0;
      padding: 0;
    }

    h1 {
      text-align: center;
      color: #003366;
      padding: 40px 20px 20px;
      font-size: 2.5em;
    }

    .section {
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 40px 10%;
      gap: 30px;
      flex-wrap: wrap;
      transition: transform 0.3s ease;
    }

    .section:nth-child(even) {
      flex-direction: row-reverse;
      background-color: #d4ecff;
    }

    .section:hover {
      transform: scale(1.05);
    }

    .section img {
      width: 250px;
      height: 250px;
      object-fit: cover;
      border-radius: 50%;
      box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .section img:hover {
      transform: scale(1.1);
      box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
    }

    .content {
      max-width: 500px;
    }

    .content h2 {
      color: #0059b3;
      font-size: 1.8em;
      margin-bottom: 10px;
    }

    .content p {
      font-size: 16px;
      color: #333;
      line-height: 1.6em;
    }

    @media (max-width: 768px) {
      .section {
        flex-direction: column !important;
        text-align: center;
      }

      .section img {
        width: 90%;
        height: auto;
      }
    }
       .button-container {
    display: flex;
    justify-content: center; 
    align-items: center;     
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
    
  </style>
</head>
<body>

  <h1>Engineering & Tech Careers</h1>

  <div class="section">
    <img src="https://cdn.mos.cms.futurecdn.net/HFUAjfbamNhbM8dsNSQW3D.jpg" alt="CSE/ECE/AI-ML">
    <div class="content">
      <h2>Engineering (CSE, ECE, AI/ML)</h2>
      <p>Pursue fields like Computer Science, Electronics, and Artificial Intelligence to innovate and build digital solutions.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://optimizory.com/assets/img/lxp-blog/software-development.jpg" alt="Software Development">
    <div class="content">
      <h2>Software Development</h2>
      <p>Design, code, and maintain software applications for web, mobile, and desktop platforms.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://xcelacore.com/wp-content/uploads/2022/04/robotic-process-automation.jpg" alt="Robotics">
    <div class="content">
      <h2>Robotics</h2>
      <p>Combine mechanical engineering and AI to build smart robots used in industries, healthcare, and more.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://th.bing.com/th/id/OIP.FsZo9O4tnV4NsRfU7NwCagHaDq?cb=iwc1&w=1050&h=520&rs=1&pid=ImgDetMain" alt="Data Science">
    <div class="content">
      <h2>Data Science</h2>
      <p>Analyze data to uncover trends, drive decisions, and build predictive models using statistics and machine learning.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://www.businessappraisalflorida.com/wp-content/uploads/2019/10/Guide-on-How-to-Value-a-Pre-Revenue-Tech-Startup.jpg" alt="Tech Startups">
    <div class="content">
      <h2>Tech Startups</h2>
      <p>Launch your own technology-driven business or join early-stage startups to solve real-world problems.</p>
    </div>
  </div>
<div class="button-container" style="justify-content: center;">
 <br> <a href="quiz.jsp" class="uniform-button"> Go Back to Quiz</a>
  
</div>
</body>
</html>