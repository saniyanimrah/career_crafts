<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Arts & Creative Careers</title>
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

  <h1>Arts & Creative Careers</h1>

  <div class="section">
    <img src="https://th.bing.com/th/id/OIP.lkTld-_mFIO9zIGVoCidRAHaE8?cb=iwc1&rs=1&pid=ImgDetMain" alt="Lawyer">
    <div class="content">
      <h2>Lawyer</h2>
      <p>Represent clients, uphold justice, and provide legal advice in a variety of specializations.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://the-augusta-press-storage.s3.amazonaws.com/uploads/2022/06/iStock-469968316.jpg" alt="Teacher">
    <div class="content">
      <h2>Teacher</h2>
      <p>Inspire and educate the next generation by teaching subjects you're passionate about.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://image.shutterstock.com/image-photo/smiling-female-journalist-microphone-video-260nw-689284300.jpg" alt="Journalist">
    <div class="content">
      <h2>Journalist</h2>
      <p>Report, investigate, and write stories that inform the public and shape opinions.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://th.bing.com/th/id/OIP.7_DNkNJdftP7aaUUQ5Y7OwHaE8?cb=iwc1&rs=1&pid=ImgDetMain" alt="Designer">
    <div class="content">
      <h2>Designer</h2>
      <p>Create compelling visuals, products, or spaces that merge creativity and functionality.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://th.bing.com/th/id/OIP.6TVQSlqQV1NWZSR84iKhLQHaE7?cb=iwc1&rs=1&pid=ImgDetMain" alt="Writer">
    <div class="content">
      <h2>Writer</h2>
      <p>Craft stories, articles, or content that inform, entertain, or inspire readers.</p>
    </div>
  </div>
<div class="button-container" style="justify-content: center;">
 <br> <a href="quiz.jsp" class="uniform-button"> Go Back to Quiz</a>
  
</div>
</body>
</html>