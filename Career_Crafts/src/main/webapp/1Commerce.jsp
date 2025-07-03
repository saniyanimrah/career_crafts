<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Career Fields Overview</title>
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

  <h1>Explore Business Career Fields</h1>

  <div class="section">
    <img src="https://vermontrepublic.org/wp-content/uploads/2019/01/These-5-Business-Management-Facts-to-Help-You-Choose-a-Career.jpg" alt="Business Management">
    <div class="content">
      <h2>Business Management</h2>
      <p>Manage people, resources, and processes to achieve organizational goals efficiently and effectively.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://cdn.corporatefinanceinstitute.com/assets/marketing-1024x594.jpeg" alt="Marketing">
    <div class="content">
      <h2>Marketing</h2>
      <p>Promote products and build customer relationships through creative strategies and data-driven insights.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://static2.bigstockphoto.com/6/5/3/large1500/356947541.jpg" alt="Finance">
    <div class="content">
      <h2>Finance</h2>
      <p>Manage money, investments, and financial planning for individuals, businesses, or organizations.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://www.pw.live/exams/wp-content/uploads/2024/01/Entrepreneurship-jpg.webp" alt="Entrepreneurship">
    <div class="content">
      <h2>Entrepreneurship</h2>
      <p>Create and manage new business ventures, take risks, and innovate to solve real-world problems.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://images.vexels.com/media/users/3/195894/raw/bab7363faa2e224eec792198d24909dc-economics-elements-illustration-set.jpg" alt="Economics">
    <div class="content">
      <h2>Economics</h2>
      <p>Study the production, distribution, and consumption of goods and services and how people make economic decisions.</p>
    </div>
  </div>
  <div class="button-container" style="justify-content: center;">
 <br> <a href="quiz.jsp" class="uniform-button"> Go Back to Quiz</a>
  
</div>

</body>
</html>