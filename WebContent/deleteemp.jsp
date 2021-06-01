<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String employeeid=request.getParameter("employeeid");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sampleproject?characterEncoding=latin1&useConfigs=maxPerformance", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM employee WHERE employeeid="+employeeid);
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<br>
<a href="showemp.jsp">Back to Employee Details</a>