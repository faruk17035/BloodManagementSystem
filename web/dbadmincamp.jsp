<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%
    String  camparea= request.getParameter("camparea");    
    String vanue = request.getParameter("vanue");
    String date = request.getParameter("date");
    String time = request.getParameter("time");
    String unit = request.getParameter("unit");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bbms",
            "root", " ");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into admincamp(camp_area, vanue, date, time, unit, regdate)values('" + camparea + "','" + vanue + "','" + date + "','" + time + "','" + unit + "', CURDATE())");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("admincampwelcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("admincamp.jsp");
    }
%>
