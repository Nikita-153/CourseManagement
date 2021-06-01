<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "casestudy?characterEncoding=latin1&useConfigs=maxPerformance";
String userid = "root";
String password = "1234";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<title>SSStudy</title>
<!-- Favicon -->
      <link rel="icon" href="resources/images/favicon.ico" > 
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #00adb5;
  color: white;
}
</style>
    <link rel="stylesheet" href="resources/css/course.css" type="text/css"/>

<body>

<h1 class="header">Details of Employee</h1>
<table border="1">

<tr>
<th>Employee id</th>
<th>Employee Name</th>
<th>Operation</th>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from employee";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("employeeID") %></td>
<td><%=resultSet.getString("employeeName") %></td>
<td><a href="deleteemp.jsp?employeeid=<%=resultSet.getString("employeeid") %>"><button>Delete</button></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>