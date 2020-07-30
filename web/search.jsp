<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>

<head>
  <title>Search of Blood Bank Management System</title>
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
          <h1><a href="index.jsp">Blood Bank Management <span class="logo_colour">System</span></a></h1>
          <h2>Donating blood helps to save life...</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li><a href="index.jsp">Home</a></li>
          <li><a href="bloodbank.jsp">Blood Bank</a></li>
          <li class="selected"><a href="search.jsp">Search</a></li>
          <li><a href="camps.jsp">Camps</a></li>
          <li><a href="contactus.jsp">Contact Us</a></li>
          <li><a href="logout.jsp">Log Out</a></li>
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
              <li><a href="#">link 1</a></li>
              <li><a href="#">link 2</a></li>
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
         <h1>Please select your searching blood group</h1>
		
		 <form method="post" action="dBgSearch.jsp">
                 
						<h3>Blood Group Search:</h3>
						<input type="radio" name="group" id="group" value="O+">O+VE<br><br>
						<input type="radio" name="group" id="group" value="A+">A+VE<br><br>
						<input type="radio" name="group" id="group" value="O-">O-VE<br><br>
						<input type="radio" name="group" id="group" value="B+">B+VE<br><br>
						<input type="radio" name="group" id="group" value="B-">B-VE<br><br>
						<input type="radio" name="group" id="group" value="AB+">AB+VE<br><br>
						<input type="radio" name="group" id="group" value="AB-">AB-VE<br><br>
						<input type="radio" name="group" id="group" value="A-">A-VE
						
						 <!--   <input  type="text" name="id" id="id">  
					Date:<br>
		           <input value="Date of birth..." name='date' type='date' class="form-control" placeholder="Date" required/>
            	
					-->	
                  <br><br>
                  <input type="submit" value="Search">
                  </form> 
                  
      </div>
    </div>
    <div id="content_footer"></div>
    <div id="footer">
      <p>Copyright &copy; Faruk | <a href="index.jsp">Blood Bank Management System</a></p>
    </div>
  </div>
</body>
</html>
