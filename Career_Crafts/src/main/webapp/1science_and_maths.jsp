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
      transform: scale(1.05); /* Slight zoom-in effect when hovering over the section */
    }

    .section img {
      width: 250px;  /* Adjusted for better circle fit */
      height: 250px; /* Same width and height for a perfect circle */
      object-fit: cover;
      border-radius: 50%;  /* Makes the image a circle */
      box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .section img:hover {
      transform: scale(1.1); /* Slight zoom-in effect on hover */
      box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3); /* Enhanced shadow on hover */
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

  <h1>Explore Career Fields</h1>

  <div class="section">
    <img src="https://th.bing.com/th/id/R.053f03a0a73e19186399530d0c45a5c5?rik=EFno%2f2xV%2fgcprw&riu=http%3a%2f%2ftalisengineering.com%2fwp-content%2fuploads%2f2016%2f08%2fengineering_AdobeStock_93366090.jpg&ehk=Iv0ugrsoZSHLakOW%2bxl3j%2bhPJ09nA5yWtLfH%2bEBX5dw%3d&risl=&pid=ImgRaw&r=0" alt="Engineering">
    <div class="content">
      <h2>Engineering</h2>
      <p>Engineering is about using science and innovation to design and build machines, systems, and structures.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://wallpapers.com/images/featured/data-science-xe1pmo7wm4jcokpd.jpg" alt="Data Science">
    <div class="content">
      <h2>Data Science</h2>
      <p>Data Science uses programming, statistics, and machine learning to analyze and draw insights from data.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://as2.ftcdn.net/v2/jpg/01/17/56/89/1000_F_117568904_9h5iGTaaXGKUIXv9IZyY8i9pi74L8D98.jpg" alt="Statistics">
    <div class="content">
      <h2>Statistics</h2>
      <p>Statistics deals with collecting, analyzing, and interpreting data to make informed decisions and predictions.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://th.bing.com/th/id/R.ba01d095b9f9a650e61d8f49d2b28519?rik=rVVFOj18ozgpZw&riu=http%3a%2f%2fwww.pixelstalk.net%2fwp-content%2fuploads%2f2016%2f05%2fMath-Mathematics-Formula-Wallpaper-for-PC.jpg&ehk=%2bfTho6j8Ym8wGaYhOjf%2bGXs56O7AyL38fNlEbHjIzqQ%3d&risl=&pid=ImgRaw&r=0" alt="Mathematics">
    <div class="content">
      <h2>Mathematics</h2>
      <p>Mathematics is the study of numbers, shapes, and patterns — a key tool in all fields of science and engineering.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://erode-sengunthar.ac.in/wp-content/uploads/2024/02/aiml-image-1.png" alt="AI and ML">
    <div class="content">
      <h2>AI / ML</h2>
      <p>Artificial Intelligence and Machine Learning help machines learn from data and make intelligent decisions.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://images.unsplash.com/photo-1555066931-4365d14bab8c?auto=format&fit=crop&w=800&q=60" alt="Coding">
    <div class="content">
      <h2>Coding</h2>
      <p>Coding is writing instructions that a computer can follow — it powers websites, apps, and smart devices.</p>
    </div>
  </div>
<div class="button-container" style="justify-content: center;">
 <br> <a href="quiz.jsp" class="uniform-button"> Go Back to Quiz</a>
  
</div>
</body>
</html>