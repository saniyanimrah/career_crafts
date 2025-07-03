<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Defence & Uniformed Services</title>
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

  <h1>Defence & Uniformed Services</h1>

  <div class="section">
    <img src="https://www.rozanaspokesman.com/media/prev/9a26f5f13c9add6065dcb3cc7398cbc449b0d759-rs-img-preview.jpg" alt="Army/Navy/Airforce">
    <div class="content">
      <h2>Army / Navy / Airforce</h2>
      <p>Serve the nation through various branches of the armed forces, protecting borders and maintaining national security.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://ssbcrackexams.com/wp-content/uploads/2024/04/CRPF-and-BSF_officer-1024x729.jpg" alt="Police/CRPF/BSF">
    <div class="content">
      <h2>Police / CRPF / BSF</h2>
      <p>Enforce law and order, provide internal security, and support disaster response operations within the country.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://www.witf.io/wp-content/uploads/2022/05/iStock-1326132418-1620x1080.jpg" alt="Pilot">
    <div class="content">
      <h2>Pilot</h2>
      <p>Fly aircraft for commercial airlines or defense forces, ensuring safe and efficient transportation of passengers or missions.</p>
    </div>
  </div>
<div class="button-container" style="justify-content: center;">
 <br> <a href="quiz.jsp" class="uniform-button"> Go Back to Quiz</a>
  
</div>
</body>
</html>