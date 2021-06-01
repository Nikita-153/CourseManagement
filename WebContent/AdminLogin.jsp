
<%@ page import="java.io.*,java.util.*"%>
 <%@ page import="com.Model.Course"%>
<%@ page isELIgnored="false"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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

</head>

<body>
            
            
            
            <h1 class="header">Course Information </h1>
            <div>
				<table border="3">
                    <thead>
                        <tr>
                        	<th>Course ID</th>
                            <th>Course Name</th>
                            <th>Trainer ID</th>
                            <th>Course Pre-Requisite</th>
                            <th>Course Duration</th>
                            <th>Start Date</th>
                            <th>End Date</th>
                            <th>Timing</th>
                            <th>Course Link</th>
                             
                        </tr>
                    </thead>
              		
              		<tbody>
              		
              		<a href="AddCourse.jsp" class="addcourse"> Add New Course</a>
              		<br>
              		<br>
              	<% 
              		List<Course> list = (List)request.getAttribute("courses3"); 
              		System.out.println("Inside AdminLogin:");
              		for (Course u : list) { 
              			System.out.println(u.getCourseID());
                    %>                  
					<tr>
      					<td><%=u.getCourseID()%></td>
   						<td><%=u.getCourseName()%></td>
   						<td><%=u.getCourseTrainer()%></td>
   						<td><%=u.getPreRequisite()%></td>
   						<td><%=u.getDuration()%></td>
				    	<td><%=u.getStartDate()%></td>
   						<td><%=u.getEndDate()%></td>
   						<td><%=u.getTimings()%></td>
				    	<%--<td><%=u.getUrl()%></td> --%>
				    	<td><a href="<%=u.getUrl()%>" target=_blank><%=u.getUrl()%></a></td>
				    <td><a href="AdminServlet?id=<%=u.getCourseID()%>">Delete</a></td>
					</tr>		                 
				<% 
				} 
			%> 
			</tbody>
                </table>
            </div>   
          
</body>
</html>



