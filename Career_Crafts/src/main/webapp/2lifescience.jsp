<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Medical Careers</title>
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

  <h1>Medical & Health Careers</h1>

  <div class="section">
    <img src="https://images.squarespace-cdn.com/content/v1/5c998341b10f25827dbb6ac1/1553592666332-PV9J41IEQA53ONITU7EM/about-us.jpg" alt="Doctor">
    <div class="content">
      <h2>Doctor</h2>
      <p>Diagnose and treat illnesses, promote health, and improve lives through medical expertise.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://s3-prod.modernhealthcare.com/s3fs-public/pharmacists_getty_edit_i.jpg" alt="Pharmacist">
    <div class="content">
      <h2>Pharmacist</h2>
      <p>Prepare and dispense medications, advise on proper drug use, and support patient wellness.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://cdn4.vectorstock.com/i/1000x1000/24/63/paramedic-emergency-cartoon-composition-vector-32002463.jpg" alt="Paramedic">
    <div class="content">
      <h2>Paramedic</h2>
      <p>Provide emergency medical care and transportation in critical situations to save lives on the spot.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://img.freepik.com/free-vector/hand-drawn-nurse-helping-patient-background_23-2148148442.jpg?w=740&t=st=1671575938~exp=1671576538~hmac=d44a99f9d672a9393d5161cd0d217755caa5b074d95d3224df961b677ede30e6" alt="Nursing">
    <div class="content">
      <h2>Nursing</h2>
      <p>Deliver compassionate care, assist in treatments, and support patients through their health journey.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://www.mytechmag.com/wp-content/uploads/2022/04/biotechnology-examples-types-1200x900.jpg" alt="Biotechnology">
    <div class="content">
      <h2>Biotechnology</h2>
      <p>Use biological science and technology to develop new medical treatments, diagnostics, and innovations.</p>
    </div>
  </div>
<div class="button-container" style="justify-content: center;">
 <br> <a href="quiz.jsp" class="uniform-button"> Go Back to Quiz</a>
  
</div>
</body>
</html>