<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SSStudy</title>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">

<!-- Favicon -->
      <link rel="icon" href="resources/images/favicon.ico" > 
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="https://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
	<script>
$( function() {
$( "#datepicker" ).datepicker({ changeMonth: true, changeYear: true });
$( "#datepicker" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
} );
	</script>
	<script>
$( function() {
$( "#datepicker1" ).datepicker({ changeMonth: true, changeYear: true });
$( "#datepicker1" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
} );
	</script>
	<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #EEEEEE}

th{
  background-color: #00adb5;
  color: white;
}
</style>
<link rel="stylesheet" href="resources/css/course.css" type="text/css"/>

</head>
<body>
<div class="main">

		<form action="AddServlet" method="post" name="myform">
	
			<center>
				<h1 class="header">Add Course</h1>
			</center>
		
		
			
			<table>	
		       <tr>
					<th>CourseID</th>
					<td><input type="text" name="id"></td>
				</tr>
		
				<tr>
					<td>CourseName</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<th>TrainerID</th>
					<td><input type="text" name="trainer"></td>
				</tr>	
				<tr>
					<td>Number of Pre-Requisites</td>
					<td><input type="text" name="pr"></td>
				</tr>
				<tr>
					<th>Duration in days</th>
					<td><input type="text" name="dur"></td>
				</tr>		
				<tr>
					<td>StartDate</td>
					<td><input type="text" name="sd" id="datepicker"></td>
				</tr>
				<tr>
					<th>EndDate</th>
					<td><input type="text" name="ed" id="datepicker1"></td>
				</tr>
				<tr>
					<td>Timing</td>
					<td><input type="text" name="time"></td>
				</tr>
				<tr>
					<th>URL</th>
					<td><input type="text" name="url"></td>
				</tr>				
				<tr>
					<td><input type="submit"  value="Add"></td>	
					<td></td>	
				</tr>
				
			
				
			</table>
			
				
				
		</form>
		
		</div>


</body>
</html>