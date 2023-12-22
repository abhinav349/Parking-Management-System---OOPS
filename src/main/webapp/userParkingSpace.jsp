<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="ISO-8859-1">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Search Results</title>
  </head>
  <body>
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







<div class="row align-items-md-stretch" style="
    margin-block-start: 4%;
">
      <div class="col-md-6">
        <div class="h-100 p-5 text-dark bg-light rounded-3">
          <h2>Parking Space #</h2>
          <ul>
          <li>Location: XYZ</li>
<li>Available: 200</li>
<li>Rating: 5/5</li>
<li>Maximum Time: 5hr</li>
<li>Worker Name: John Doe</li>
<li>Price: 150</li>
</ul>
        </div>
      </div>
      <div class="col-md-6">
        <div class="h-100 p-5 bg-light border rounded-3">
          <h2>Your Selection</h2>
          <ul>
<li>Date: 12-01-2001</li>
<li>Check-In Time: 9:00 AM</li>
<li>Check Out Time: 10:00AM</li>
<li>Price: 150</li>
</ul>
          <button class="btn btn-primary" type="button">Book</button>
        </div>
      </div>
    </div>







<div class="col-md-6" style="
    width: 100%;  height: 350px;  background-color: #7b7979; margin-block-start:1%;
">
        <div class="h-100 p-5 text-white rounded-3" >
          <h2>Amenities Offered</h2>
          <p>Swap the background-color utility and add a `.text-*` color utility to mix up the jumbotron look. Then, mix and match with additional component themes and more.</p>
        </div>
      </div>




  </body>
</html>