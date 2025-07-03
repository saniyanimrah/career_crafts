<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Medical Career Fields</title>
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

  <h1>Explore Medical Career Fields</h1>

  <div class="section">
    <img src="https://upload.wikimedia.org/wikipedia/commons/0/08/Surgeons_at_Work.jpg" alt="Doctor">
    <div class="content">
      <h2>Doctor</h2>
      <p>Doctors diagnose and treat illnesses, playing a key role in improving and maintaining health.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://clipground.com/images/animated-nurse-clipart-5.jpg" alt="Nursing">
    <div class="content">
      <h2>Nursing</h2>
      <p>Nurses provide care, support, and medical assistance to patients in hospitals and healthcare centers.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://th.bing.com/th/id/OIP.d5nzPEW0Kig3JkALGL6G5QHaE8?cb=iwc1&rs=1&pid=ImgDetMain" alt="Biotechnology">
    <div class="content">
      <h2>Biotechnology</h2>
      <p>Biotechnology applies biology and technology to develop medicines, therapies, and sustainable solutions.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://th.bing.com/th/id/OIP.XwK11rIED4qfAe5jL43QYgHaHa?cb=iwc1&rs=1&pid=ImgDetMain" alt="Pharmacy">
    <div class="content">
      <h2>Pharmacy</h2>
      <p>Pharmacists dispense medications, advise on drug interactions, and ensure safe use of prescriptions.</p>
    </div>
  </div>

  <div class="section">
    <img src="https://careers.iconplc.com/img/10977109-1a28-4022-fdef-08db669d4adc" alt="Medical Research">
    <div class="content">
      <h2>Medical Research</h2>
      <p>Researchers work in labs to study diseases, develop treatments, and improve healthcare practices.</p>
    </div>
  </div>
<div class="button-container" style="justify-content: center;">
 <br> <a href="quiz.jsp" class="uniform-button"> Go Back to Quiz</a>
  
</div>
</body>
</html>