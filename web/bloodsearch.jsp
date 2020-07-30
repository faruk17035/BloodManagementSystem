<%@ page import="java.util.*" %>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
 
<html>
    <head>
    <link rel="stylesheet" type="text/css" href="css/table.css" />
    
    </head>
    <body>
       <h1>All Information Of Donor</h1>
        <table>
   <thead>
    <tr>
      <th>Donor Name</th>
      <th>Date Of Birth</th>
      <th>Age</th>
      <th>Blood Group</th>
      <th>Address</th>
      <th>Mobile No</th>
      <th>Email</th>
      <th>Gender</th>
    </tr>
  </thead>
                    <%
                int count = 0;
                String color = "#F9EBB3";
                if (request.getAttribute("piList") != null) {
                    ArrayList al = (ArrayList) request.getAttribute("piList");
                    System.out.println(al);
                    Iterator itr = al.iterator();
                    while (itr.hasNext()) {
 
                        if ((count % 2) == 0) {
                            color = "#eeffee";
                        }
                        count++;
                        ArrayList pList = (ArrayList) itr.next();
            %>
          
  <tbody>
    <tr>
     
                <td><strong><%=pList.get(1)%></strong></td>
                <td><strong><%=pList.get(2)%></strong></td>
                <td><strong><%=pList.get(3)%></strong></td>
                <td><strong><%=pList.get(4)%></strong></td>
                <td><strong><%=pList.get(5)%></strong></td>
                <td><strong><%=pList.get(6)%></strong></td>
                <td><strong><%=pList.get(7)%></strong></td>
                <td><strong><%=pList.get(8)%></strong></td>
    </tr>
    
  </tbody>
            <%
                    }
                }
                if (count == 0) {
            %>
            <tr>
                <td colspan=4 align="center"
                    style="background-color:#eeffee"><b>No Record Found..</b></td>
            </tr>
            <%            }
            %>
        </table>
    </body>
</html>