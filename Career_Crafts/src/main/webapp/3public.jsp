<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Leadership & Public Service Careers</title>
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

  <h1>Leadership & Public Service Careers</h1>

  <div class="section">
    <img src="https://static.vecteezy.com/system/resources/previews/009/951/832/original/politician-cartoon-hand-drawn-illustration-with-election-and-democratic-governance-ideas-participate-in-political-debates-in-front-of-audience-vector.jpg" alt="Politician">
    <div class="content">
      <h2>Politician</h2>
      <p>Serve the public by shaping policies, making decisions, and representing people at various government levels.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://th.bing.com/th/id/OIP.vjFKDYWaBI4hNI8bdHzxegHaER?cb=iwc1&rs=1&pid=ImgDetMain" alt="HR">
    <div class="content">
      <h2>Human Resource Manager</h2>
      <p>Oversee hiring, training, and employee well-being to create a productive and positive workplace environment.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://i.pinimg.com/originals/81/e9/b7/81e9b7ecf29227d9dbfc06d50c0a4a51.gif" alt="Public Speaker">
    <div class="content">
      <h2>Public Speaker</h2>
      <p>Inspire, educate, or motivate audiences by delivering powerful and effective speeches.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://th.bing.com/th/id/OIP.vE_iOYUmlS2M1cOcV-isLgAAAA?cb=iwc1&rs=1&pid=ImgDetMain" alt="Army Officer">
    <div class="content">
      <h2>Army Officer</h2>
      <p>Lead troops, ensure national security, and manage operations in defense forces with discipline and honor.</p>
    </div>
  </div>
<div class="button-container" style="justify-content: center;">
 <br> <a href="quiz.jsp" class="uniform-button"> Go Back to Quiz</a>
  
</div>
</body>
</html>