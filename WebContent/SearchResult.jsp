<%@ page import="java.io.*,java.util.*"%>
<%@ page import="com.Model.Course"%>
<%@ page isELIgnored="false"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="resources/css/course.css" type="text/css"/>
    <!-- Favicon -->
      <link rel="icon" href="resources/images/favicon.ico" > 
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
    
<body>
       <h1 class="header">Course Information </h1>
            <div>
				<table border="1">
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
              	<% 
              		List<Course> list = (List)request.getAttribute("courses"); 
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
				    	<%--  <td><%=u.getUrl()%></td> --%>
				    	<td><a href="<%=u.getUrl()%>" target=_blank><%=u.getUrl()%></a></td>
					</tr>		                 
				<% 
				} 
			%> 
			
			    <% 
              		List<Course> list1 = (List) request.getAttribute("courses1"); 
              		for (Course u1 : list1) { 
                    %>                  
					<tr>
      					<td><%=u1.getCourseID()%></td>
   						<td><%=u1.getCourseName()%></td>
   						<td><%=u1.getCourseTrainer()%></td>
   						<td><%=u1.getPreRequisite()%></td>
   						<td><%=u1.getDuration()%></td>
				   		<td><%=u1.getStartDate()%></td>
   						<td><%=u1.getEndDate()%></td>
   						<td><%=u1.getTimings()%></td>
				    	<%--  <td><%=u.getUrl()%></td> --%>
				    	<td><a href="<%=u1.getUrl()%>" target=_blank><%=u1.getUrl()%></a></td>
					</tr>		                 
				<% 
				} 
			%> 
			    <% 
              		List<Course> list2 = (List)request.getAttribute("courses2"); 
              		for (Course u2 : list2) { 
                    %>                  
					<tr>
      					<td><%=u2.getCourseID()%></td>
   						<td><%=u2.getCourseName()%></td>
   						<td><%=u2.getCourseTrainer()%></td>
   						<td><%=u2.getPreRequisite()%></td>
   						<td><%=u2.getDuration()%></td>
				    	<td><%=u2.getStartDate()%></td>
   						<td><%=u2.getEndDate()%></td>
   						<td><%=u2.getTimings()%></td>
				    	<%--  <td><%=u2.getUrl()%></td> --%>
				    	<td><a href="<%=u2.getUrl()%>" target=_blank><%=u2.getUrl()%></a></td>
					</tr>		                 
				<% 
				} 
			%> 
                    </tbody>
                </table>
            </div>
	</body>
</html>