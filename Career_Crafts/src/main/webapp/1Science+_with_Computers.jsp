<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Technology Career Fields</title>
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

  <h1>Explore Tech Career Fields</h1>

  <div class="section">
    <img src="https://th.bing.com/th/id/R.3990d6a02f0d5137053ceaf82f340cfd?rik=NfvTbo3PfpzzXA&riu=http%3a%2f%2fwww.pixelstalk.net%2fwp-content%2fuploads%2f2016%2f07%2fComputer-Science-Pictures-HD.jpg&ehk=f9SU4Dzs6NTVrr5FToQeU5WJmrGY31QsSRMAQ3Vverg%3d&risl=&pid=ImgRaw&r=0" alt="Computer Science">
    <div class="content">
      <h2>Computer Science</h2>
      <p>Focuses on algorithms, computation, and designing efficient software to solve complex problems.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://th.bing.com/th/id/OIP.fGfRRJ5KwiPzmzWOHJTzBQHaE8?cb=iwc1&rs=1&pid=ImgDetMain" alt="Software Engineering">
    <div class="content">
      <h2>Software Engineering</h2>
      <p>Involves developing, testing, and maintaining software applications for a wide range of industries.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://th.bing.com/th/id/OIP.7T5pMoBz7dsBllOSXamURwHaHZ?cb=iwc1&rs=1&pid=ImgDetMain" alt="Robotics">
    <div class="content">
      <h2>Robotics</h2>
      <p>Combines engineering, electronics, and computer science to design intelligent machines and systems.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://th.bing.com/th/id/OIP.EWYmpscrenQWqCfxQny8hAAAAA?cb=iwc1&rs=1&pid=ImgDetMain" alt="Information Technology">
    <div class="content">
      <h2>Information Technology (IT)</h2>
      <p>Uses technology to manage and support computer systems, networks, and data in organizations.</p>
    </div>
  </div>
<div class="button-container" style="justify-content: center;">
 <br> <a href="quiz.jsp" class="uniform-button"> Go Back to Quiz</a>
  
</div>
</body>
</html>