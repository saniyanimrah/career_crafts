<%@page import="com.kits.cse.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>view user</title>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&family=Roboto&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <style>
    body {
      margin: 0;
      font-family: 'Roboto', sans-serif;
      background: linear-gradient(to right, #fceae8, #e0f7fa);
    }

    header {
      background-color: #006d77;
      color: white;
      padding: 20px;
      text-align: center;
      font-family: 'Montserrat', sans-serif;
      font-size: 28px;
      box-shadow: 0 4px 6px rgba(0,0,0,0.2);
    }

    nav {
      display: flex;
      justify-content: center;
      gap: 20px;
      padding: 20px 0;
      background-color: #e0f2f1;
      flex-wrap: wrap;
    }

    .nav-btn {
      background-color: white;
      border: 2px solid #00796b;
      padding: 10px 20px;
      border-radius: 12px;
      cursor: pointer;
      color: #00796b;
      font-weight: bold;
      font-size: 16px;
      transition: 0.3s;
    }

    .nav-btn i {
      margin-right: 8px;
    }

    .nav-btn:hover {
      background-color: #00796b;
      color: white;
      transform: scale(1.05);
    }

    .form-container {
      width: 90%;
      max-width: 400px;
      margin: 50px auto;
      background-color: white;
      padding: 30px;
      border-radius: 12px;
      box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
    }

    .form-container h2 {
      text-align: center;
      color: #006d77;
      margin-bottom: 25px;
    }

    label {
      font-weight: bold;
      display: block;
      margin-bottom: 6px;
      margin-top: 15px;
    }

    input {
      width: 100%;
      padding: 10px;
      margin-top: 4px;
      border: 1px solid #ccc;
      border-radius: 8px;
      font-size: 15px;
    }

    .password-wrapper {
      position: relative;
    }

    .toggle-password {
      position: absolute;
      right: 15px;
      top: 50%;
      transform: translateY(-50%);
      cursor: pointer;
      color: #888;
    }

    button.login-btn {
      background-color: #006d77;
      color: white;
      padding: 12px;
      margin-top: 25px;
      width: 100%;
      border: none;
      border-radius: 10px;
      font-size: 17px;
      font-weight: bold;
      cursor: pointer;
      transition: 0.3s ease;
    }

    button.login-btn:hover {
      background-color: #00b4d8;
    }
    table {
  width: 95%;
  margin: 30px auto;
  border-collapse: collapse;
  font-size: 16px;
  background-color: #ffffff;
  box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
  border-radius: 12px;
  overflow: hidden;
}

table th,
table td {
  padding: 14px 20px;
  text-align: center;
  border-bottom: 1px solid #ddd;
}

table tr:nth-child(even) {
  background-color: #f8fdfd;
}

table tr:hover {
  background-color: #e0f7fa;
  transition: background-color 0.3s ease;
}

table th {
  background-color: #006d77;
  color: white;
  font-weight: bold;
  text-transform: uppercase;
}
    
  </style>
</head>
<body>

  <header>
    Career Craft: Custom Paths for Unique Minds
  </header>

  <nav>
  <button class="nav-btn" onclick="location.href='index.jsp'">
    <i class="fas fa-home"></i> Home
  </button>
  <button class="nav-btn" onclick="location.href='new.jsp'">
  <i class="fas fa-book"></i> About</button>
  	<button class="nav-btn" onclick="location.href='admin.jsp'">
  <i class="fas fa-sign-out-alt"></i> Logout</button>
  <button class="nav-btn" onclick="location.href='other.jsp'">
  <i class="fas fa-ellipsis-h"></i> Career Options</button>
</nav>


</body>
</html>

<div align="center">
	<table border="1">
			<tr>
				<td>SNO</td>
				<td>Name</td>
				<td>Gender</td>
				<td>Address</td>
				<td>Email</td>
				<td>Mobile</td>
				<td>Status</td>
				<td>Action</td>
			</tr>
			<%
		ResultSet set=DBConnection.getStatement("select *from career_crafts").executeQuery();
		int sno=1;
		while(set.next()){
	%>
			<tr>
				<td><%=sno%></td>
				<td><%=set.getString("name")%></td>
				<td><%=set.getString("gender")%></td>
				<td><%=set.getString("address")%></td>
				<td><%=set.getString("email")%></td>
				<td><%=set.getString("mobile")%></td>
				<td>
					<% 
						int status=set.getInt("status");
						if(status==0){
					%>		
							<a href="authentication.jsp?email=<%=set.getString("email")%>">Waiting</a>
					<%	
						}else{
					%>	
							<a href="#">Accepted</a>	
					<% 
						}
					%>
				</td>
				<td>
					<a href="delete.jsp?email=<%=set.getString("email")%>">Delete</a>
				</td>
			</tr>
		
			
	<%		
		sno=sno+1;
		}
		%>
	</table>	
</div>