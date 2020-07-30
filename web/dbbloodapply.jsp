<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");    
    String applydate = request.getParameter("applydate");
    String bgroup = request.getParameter("bgroup");
    String address = request.getParameter("address");
    String mnumber = request.getParameter("mnumber");
    String email = request.getParameter("email");
    String gender = request.getParameter("sex");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bbms",
            "root", " ");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into apply(user_name, date_of_apply, blood_group,address,mobile_no,email,gender, regdate) values('" + user + "','" + applydate + "','" + bgroup + "','" + address + "','" + mnumber + "','" + email + "','" + gender + "', CURDATE())");
    if (i > 0) {
        //session.setAttribute("userid", user);
       // response.sendRedirect("welcome.jsp");
        out.print("Your Application Send Successfully!!!"+"<a href='bindex.jsp'>Go Back</a>");
    } else {
        response.sendRedirect("bindex.jsp");
    }
%>
