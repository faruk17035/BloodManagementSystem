<%-- 
    Document   : dBgSearch
    Created on : 28-Jul-2020, 07:41:26
    Author     : Md Faruk Hosen
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<html>
<form>
<table>
<%
String value=request.getParameter("group");
int v=Integer.parseInt(value);
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bbms ","root", " ");
Statement st=conn.createStatement();
ResultSet rs = st.executeQuery("select user_name,address,mobile_no,email from donor where blood_group="+v+"");
if(rs.next()){ 
    %>
<tr><td>Name: </td><td<input type="text" value="<%=rs.getString("user_name")%>" > </td></tr>
<tr><td>Address: </td><td<input type="text" value="<%=rs.getString("address")%>" > </td></tr>
<tr><td>Contact No: </td><td<input type="text" value="<%=rs.getInt("mobile_no")%>" > </td></tr>
<tr><td>Email: </td><td<input type="text" value="<%=rs.getString("email")%>" > </td></tr>
      <%
}
%>
</table>
</form>
</html>
