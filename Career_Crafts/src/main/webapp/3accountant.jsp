<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Business & Finance Careers</title>
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

  <h1>Business & Finance Careers</h1>

  <div class="section">
    <img src="	https://www.topaccountingdegrees.org/wp-content/uploads/2020/07/What-is-a-Chartered-Accountant-1024x683.jpg" alt="Accountant">
    <div class="content">
      <h2>Accountant</h2>
      <p>Manage financial records, prepare tax documents, and ensure businesses stay compliant with regulations.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://uploads-ssl.webflow.com/6095a6b50a2535d8734740bc/60a261cdcc3468fac57fd68c_business-analyst.png" alt="Business Analyst">
    <div class="content">
      <h2>Business Analyst</h2>
      <p>Analyze business data, identify opportunities, and recommend solutions to improve processes and profits.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://th.bing.com/th/id/OIP.pvirsvODDrjx4bUc3_zUAgHaFN?cb=iwc1&rs=1&pid=ImgDetMain" alt="Entrepreneur">
    <div class="content">
      <h2>Entrepreneur</h2>
      <p>Start and run your own business, bringing innovative ideas to life while managing operations and risk.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://th.bing.com/th/id/OIP.hmnLkUFoogUw_jFUCYkJdQAAAA?cb=iwc1&rs=1&pid=ImgDetMain" alt="Economist">
    <div class="content">
      <h2>Economist</h2>
      <p>Study economic data and trends to advise governments, businesses, and investors on economic strategy.</p>
    </div>
  </div>
<div class="button-container" style="justify-content: center;">
 <br> <a href="quiz.jsp" class="uniform-button"> Go Back to Quiz</a>
  
</div>
</body>
</html>