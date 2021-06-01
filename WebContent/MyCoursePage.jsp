
<%@ page import="java.io.*,java.util.*"%>
 <%@ page import="com.Model.Course"%>
<%@ page isELIgnored="false"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="resources/css/course.css" type="text/css"/>
	<!-- Favicon -->
      <link rel="icon" href="resources/images/favicon.ico" > 
<meta charset="ISO-8859-1">
<title>SSStudy</title>
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
</head>
<body>
            
            
            
            <h1 class="header">Your Enrolled for these! </h1>
            <div>
				<table border="1">
                    <thead>
                        <tr>
                        	<th>Course ID</th>
                            <th>Course Name</th>
                            <th>Course Trainer</th>
                            <th>Course Pre-Requisite</th>
                            <th>Course Duration</th>
                            <th>Start Date</th>
                            <th>End Date</th>
                            <th>Timing</th>
                            <th>Course Link</th>
                             
                        </tr>
                    </thead>
              		
              		<tbody>
              		
              	
              	<% 
              		List<Course> list = (List)request.getAttribute("courses4"); 
              		for (Course u : list) { 
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
				    	<td><%=u.getUrl()%></td>
				    <td><a href="MyCourseServlet?id=<%=u.getCourseID()%>">Delete</a></td>
					</tr>		                 
				<% 
				} 
			%> 
			</tbody>
                </table>
            </div>   
          
</body>
</html>