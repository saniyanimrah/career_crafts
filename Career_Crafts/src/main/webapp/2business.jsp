<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Commerce & Business Careers</title>
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

  <h1>Commerce & Business Careers</h1>

  <div class="section">
    <img src="https://th.bing.com/th/id/OIP.TH66BaVi9q3S0XkXJQQGpQHaEK?cb=iwc1&rs=1&pid=ImgDetMain" alt="Business Admin">
    <div class="content">
      <h2>Business Administration</h2>
      <p>Lead teams, manage operations, and make strategic decisions in corporate and entrepreneurial settings.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://higuide.in/wp-content/uploads/2024/12/@higuider.in_.png" alt="Commerce">
    <div class="content">
      <h2>Commerce</h2>
      <p>Explore the world of trade, business laws, markets, and finance — the backbone of the economy.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://caportal.saginfotech.com/wp-content/uploads/2018/02/ca-vs-cs-1024x538.jpg" alt="CA/CS">
    <div class="content">
      <h2>CA / CS</h2>
      <p>Become a Chartered Accountant or Company Secretary — essential for financial and legal compliance.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://c8.alamy.com/comp/KAKPHR/young-financial-analysts-using-computers-at-desk-in-office-KAKPHR.jpg" alt="Financial Analyst">
    <div class="content">
      <h2>Financial Analyst</h2>
      <p>Analyze financial data to guide business investments, strategies, and risk management decisions.</p>
    </div>
  </div>
  <div class="button-container" style="justify-content: center;">
 <br> <a href="quiz.jsp" class="uniform-button"> Go Back to Quiz</a>
  
</div>

</body>
</html>