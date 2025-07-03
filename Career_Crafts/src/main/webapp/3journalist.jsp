<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Arts & Humanities Careers</title>
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

  <h1>Arts & Humanities Careers</h1>

  <div class="section">
    <img src="https://i.pinimg.com/736x/41/17/dc/4117dc8b4989c8e8c314d2c5f58cf546.jpg" alt="Journalist">
    <div class="content">
      <h2>Journalist</h2>
      <p>Investigate, write, and report on news stories across various platforms — from newspapers to digital media.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://th.bing.com/th/id/OIP.WTD1kKi-YmXi2hqr3J2OiwHaE8?cb=iwc1&rs=1&pid=ImgDetMain" alt="Teacher">
    <div class="content">
      <h2>Teacher</h2>
      <p>Educate students, foster curiosity, and inspire the next generation across various subjects and age groups.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://nofilmschool.com/sites/default/files/styles/facebook/public/writer-writing-ss-1920-800x450.jpg?itok=83h3HP8T" alt="Writer">
    <div class="content">
      <h2>Writer</h2>
      <p>Create fiction, non-fiction, or content for digital platforms — shaping ideas into engaging written works.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://th.bing.com/th/id/OIP.MlDJUbhXHgFDOp6xUQoTYAHaHw?cb=iwc1&rs=1&pid=ImgDetMain" alt="Lawyer">
    <div class="content">
      <h2>Lawyer</h2>
      <p>Advocate for clients, interpret laws, and represent cases in court — ensuring justice and legal clarity.</p>
    </div>
  </div>
<div class="button-container" style="justify-content: center;">
 <br> <a href="quiz.jsp" class="uniform-button"> Go Back to Quiz</a>
  
</div>
</body>
</html>