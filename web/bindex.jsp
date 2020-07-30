<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>

<head>
  <title>Welcome Page of Blood Bank Management System</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>

<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="bindex.jsp">Blood Bank Management <span class="logo_colour">System</span></a></h1>
          <h2>Donating blood helps to save life...</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li class="selected"><a href="bindex.jsp">Home</a></li>
           <li><a href="registration.jsp">Register</a></li>
          <li><a href="login.jsp">Log In</a></li>
        </ul>
      </div>
    </div>
    <div id="content_header"></div>
    <div id="site_content">
      <div id="banner"></div>
	  <div id="sidebar_container">
        <div class="sidebar">
          <div class="sidebar_top"></div>
          <div class="sidebar_item">
            <!-- insert your sidebar items here -->
            <h3>Latest News</h3>
            <h4>New Website Launched</h4>
            <h5>February 1st, 2014</h5>
            <p>2014 sees the redesign of our website. Take a look around and let us know what you think.<br /><a href="#">Read more</a></p>
          </div>
          <div class="sidebar_base"></div>
        </div>
        <div class="sidebar">
          <div class="sidebar_top"></div>
          <div class="sidebar_item">
            <h3>Useful Links</h3>
            <ul>
              <li><a href="adminlogin.jsp">Administrative Login</a></li>
              <li><a href="http://localhost:8080/HospitalPMS/jsp/bindex.jsp">Do You Need Doctors???</a></li>
              <li><a href="#">link 3</a></li>
              <li><a href="#">link 4</a></li>
            </ul>
          </div>
          <div class="sidebar_base"></div>
        </div>
        <div class="sidebar">
          <div class="sidebar_top"></div>
          <div class="sidebar_item">
            <h3>Search</h3>
            <form method="post" action="#" id="search_form">
              <p>
                <input class="search" type="text" name="search_field" value="Enter keywords....." />
                <input name="search" type="image" style="border: 0; margin: 0 0 -9px 5px;" src="../image//search.png" alt="Search" title="Search" />
              </p>
            </form>
          </div>
          <div class="sidebar_base"></div>
        </div>
      </div>
      <div id="content">
        <!-- insert the page content here -->
        <h1>Welcome to Blood Bank Management System</h1>
       <p> A patient-centered vision leads to conceive all transfusion medicine activities as a blood supply chain, starting with patients needs and ending with transfusion of needed blood components (BCs) to patients.</p>
         <h1><font color="red"><b>Apply For Bloods</b></font></h1>
          <form method="post" action="dbbloodapply.jsp">
                  Name*:<br>
                  <input type="text" name="uname" required>
                   <br>
		           Date*:<br>
		           <input value="Date of birth..." name='applydate' type='date' class="form-control" placeholder="Date of birth..." required/>
            		<br> 

                        Need Blood Groups*:<br>
						<select name="bgroup" required>
						<option value="blood">Blood Groups</option>
						<option value="A+">A+</option>
						<option value="B+">B+</option>
						<option value="O+">O+</option>
						<option value="A-">A-</option>
						<option value="B-">B-</option>
						<option value="O-">O-</option>
						<option value="AB-">AB+</option>
						<option value="AB-">AB-</option>
						</select>
						
						Address*:<br>
						<input type="text" name="address" required>
						<br>Mobile No*:<br>
						<input type="text" name="mnumber" required>
						<br>Email*:<br>
						<input type="text" name="email" required>
						<br>Gender*:<br>
						<input type="radio" name="sex" value="Male" checked>Male
						<input type="radio" name="sex" value="Female">Female
                  <br><br>
                  <input type="submit" value="Submit">
                  </form> 
      </div>
    </div>
    <div id="content_footer"></div>
    <div id="footer">
      <p>Copyright &copy; Faruk | <a href="bindex.jsp">Blood Bank Management System</a></p>
    </div>
  </div>
</body>
</html>
