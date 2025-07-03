<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Humanities Career Fields</title>
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

  <h1>Explore Humanities Career Fields</h1>

  <div class="section">
    <img src="https://th.bing.com/th/id/R.63d6c5a344336de3053f811282e2090b?rik=elmdfF1JH9YUOw&riu=http%3a%2f%2fwww.lodgeseshat.nl%2fwp-content%2fuploads%2f2023%2f10%2fhistory-featured-image.jpg&ehk=P%2fOf6gBi8ZWKbDI9WJyK36q9Xy29cQ2zHrkUdbAGQKo%3d&risl=&pid=ImgRaw&r=0" alt="History">
    <div class="content">
      <h2>History</h2>
      <p>Study past events, civilizations, and cultures to understand how they shape our present and future.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://wallpapercave.com/wp/wp8948625.jpg" alt="Political Science">
    <div class="content">
      <h2>Political Science</h2>
      <p>Analyze government systems, political behavior, policies, and power dynamics at local and global levels.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://th.bing.com/th/id/OIP.79RGzm0t424uyebBztIDdwHaEc?cb=iwc1&rs=1&pid=ImgDetMain" alt="Psychology">
    <div class="content">
      <h2>Psychology</h2>
      <p>Explore the human mind and behavior to help people understand themselves and others better.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://upload.wikimedia.org/wikipedia/commons/2/21/Biblioth%C3%A8que_de_l%27Assembl%C3%A9e_Nationale_%28Lunon%29.jpg" alt="Literature">
    <div class="content">
      <h2>Literature</h2>
      <p>Dive into the world of stories, poems, and prose to interpret language, culture, and human experiences.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://th.bing.com/th/id/R.9c7d8adc292c226f41b629b9f052a432?rik=3GAGcez9zQlGfA&riu=http%3a%2f%2f4.bp.blogspot.com%2f-Qh_LmRPqp_o%2fTs3q-LTpu7I%2fAAAAAAAAAcs%2fuYPYjmw6R3A%2fs1600%2fsocial-work49386s.JPG&ehk=4tk9tmZzCLOVrORtAGYVst%2f1%2fp2H%2bV%2bbLUW797r3PRg%3d&risl=&pid=ImgRaw&r=0" alt="Social Work">
    <div class="content">
      <h2>Social Work</h2>
      <p>Support communities and individuals to improve their well-being, especially the vulnerable and marginalized.</p>
    </div>
  </div>
 <div class="button-container" style="justify-content: center;">
 <br> <a href="quiz.jsp" class="uniform-button">Go Back to Quiz</a>
  
</div>

</body>
</html>