<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Career Paths</title>
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

  <h1>Explore Careers</h1>

  <div class="section">
    <img src="https://img.freepik.com/premium-photo/world-engineers-day-generative-ai_756405-9490.jpg" alt="Engineer">
    <div class="content">
      <h2>Engineer</h2>
      <p>Use technical and creative skills to solve real-world problems by designing machines, systems, and software.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://png.pngtree.com/thumb_back/fh260/background/20220819/pngtree-scientist-with-equipment-chemistry-forensic-bottle-photo-image_26921948.jpg" alt="Scientist">
    <div class="content">
      <h2>Scientist / Researcher</h2>
      <p>Explore, experiment, and discover new knowledge in areas such as biology, physics, chemistry, or space.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://th.bing.com/th/id/OIP.geSd-IB9ly5BE---0BgHjQHaEK?cb=iwc1&rs=1&pid=ImgDetMain" alt="Doctor">
    <div class="content">
      <h2>Doctor</h2>
      <p>Diagnose and treat patients to maintain and improve human health and well-being.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://stere-informatique.fr/wp-content/uploads/2021/01/data-analyst.jpg" alt="Data Analyst">
    <div class="content">
      <h2>Data Analyst</h2>
      <p>Analyze large datasets to uncover trends, make business decisions, and drive performance improvements.</p>
    </div>
  </div>
<div class="button-container" style="justify-content: center;">
 <br> <a href="quiz.jsp" class="uniform-button"> Go Back to Quiz</a>
  
</div>
</body>
</html>