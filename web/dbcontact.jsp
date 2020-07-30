<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%
    String  uname= request.getParameter("your_name");    
    String email = request.getParameter("your_email");
    String message = request.getParameter("your_enquiry");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bbms",
            "root", " ");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into contact(user_name, email, message, regdate)values('" + uname + "','" + email + "','" + message + "', CURDATE())");
    if (i > 0) {
        //session.setAttribute("userid", user);
        //response.sendRedirect("");
       out.print("Your message send successfully." + "<a href='contactus.jsp'>Back!!!</a>");
    } else {
        response.sendRedirect("contact.jsp");
    }
%>
