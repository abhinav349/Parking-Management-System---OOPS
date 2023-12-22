<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.SQLException, java.sql.Statement" %>
<!doctype html>
<html lang="en">


<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>User Dashboard</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/product/">

    

    <!-- Bootstrap core CSS -->
<link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="userDashHeader.css" rel="stylesheet">
    
    
  </head>

<body data-new-gr-c-s-check-loaded="14.1039.0" data-gr-ext-installed="">
    
<header class="p-3 bg-dark text-white fixed-top">
    <div>
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="#" class="nav-link px-2 text-secondary">Home</a></li>
          <li><a href="#" class="nav-link px-2 text-white">Features</a></li>
          <li><a href="#" class="nav-link px-2 text-white">Pricing</a></li>
          <li><a href="#" class="nav-link px-2 text-white">FAQs</a></li>
          <li><a href="#" class="nav-link px-2 text-white">About</a></li>
        </ul>

        <div class="text-end">
        	<label> ISHAN RASTOGI </label>
			<button type="button" class="btn btn-warning" id="signupBtn">Log Out</button>
        </div>
      </div>
    </div>
  </header>


<form style="margin-block-start: 96px;margin-left: 100px;margin-right: 700px;">
  <div class="mb-3">
    <label for="location" class="form-label">Location</label><br>
    <select class="form-control" name="category" id="location">
    <option value="location0">-------Select Location-------</option>
    <option value="location1">A</option>
    <option value="location2">B</option>
    <option value="location3">C</option>
</select>
  </div>
  <div class="mb-3">
    <label for="date" class="form-label">Date</label>
    <input type="text" class="form-control" id="date" placeholder="DD/MM/YYYY">
  </div>
  <div class="mb-3">
    <label for="checkIn" class="form-label">Check-In Time</label>
    <input type="text" class="form-control" id="checkIn" placeholder="HH/MM">
  </div>
  <div class="mb-3">
    <label for="checkOut" class="form-label">Check-Out Time</label>
    <input type="text" class="form-control" id="checkOut" placeholder="HH/MM">
  </div>
  <div class="mb-3">
    <label for="carType" class="form-label">Car Type</label><br>
    <select class="form-control" name="category" id="carType">
    <option value="carType0">-------Select Car Type-------</option>
    <option value="carType1">A</option>
    <option value="carType2">B</option>
    <option value="carType3">C</option>
</select>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>  
</form>



    <script src="/docs/5.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


<%


response.setContentType("text/html");
String uname=request.getParameter("email");
String pword=request.getParameter("pass");


String s1 = "";
String s2 = "";
try{  
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oopsproject", "root", "MILTONalmonds@100");  
	//here sonoo is database name, root is username and password  
	Statement stmt = con.createStatement();  
	ResultSet rs = stmt.executeQuery("select * from userdetails");
	
	while(rs.next()){
	s1 = rs.getString(1);
	s2 = rs.getString(2);
	con.close();  
	}}
	catch(Exception e){
		System.out.println(e);
	}  

out.println("Username and password cannot be empty" + uname + pword + s1 + s2);
%>

</body>
</html>