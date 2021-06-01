<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.*"%>
<%@page import="java.sql.*"%>

<html>
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
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SSStudy</title>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="resources/css/course.css" type="text/css"/>
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
	
	<script type="text/javascript">
	function alertName(){
	alert("Form has been submitted");
	} 
	</script> 
	
    </head> 	
    <body >  
    <div >
        <h4  class="header">Course Information </h4>
        <h4  class="userinfo">
        <%
        String id=request.getParameter("id");
        session.setAttribute("sessionid",id); 
        String idname=(String)session.getAttribute("sessionid"); 
        
        %>
       
        <%
        
        Connection connection;
        Statement st;
        ResultSet rs;
        try
        {
        	Class.forName("com.mysql.jdbc.Driver");
            connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/casestudy?characterEncoding=utf8","root","1234");
            st=connection.createStatement();
           
            if(idname!=null)
            {
                String query="select employeename from employee where employeeid='"+idname+"'";
                rs=st.executeQuery(query);
                if(rs.next())
                {
                    String empname=rs.getString("employeename");
                    %>
                    <div><p>Welcome  <%=empname%></p></div>
                    <%    
                }
            }
            
        }
        catch(Exception e)
            {
                out.println("Error="+e);
                
            }
        %>
        
     </h4>
     </div>
        <form name="searchCourse" action="./SearchServlet" method="post">
            <div >
                <table border="1">
                    <thead>
                        <tr>
                        	<th style="alignment-adjust: auto">Course Name : </th>
                        	<td><input type="text" name="courseN"  size="20" /></td>
                        </tr>
                        <tr>
                        	<th>Trainer ID :</th>
                        	<td><input type="text" name="trainerN" size="20" /></td>
                        </tr>
                        <tr>
                        	<th>Start Date :</th>
                        	<td><input type="text" name="start" id="datepicker" size="20" /></td>
                        </tr>
          				<tr>
                        	<th>End Date :</th>
                        	<td><input type="text" name="end" id="datepicker1" size="20" /></td>
                        </tr>
                        <tr>
                       		<td colspan="3" >
                    		<center> <input type="submit" value="GetData" /> </center>
                        </td>
                        </tr>
                    </thead>
                </table>
        	</div>
    	</form>
    	<form action="CourseServlet" method="post">
    	        
    	       <input type="submit" value="Show All Courses" />
    	</form>
    	<form action="MyCourseServlet" method="get">
    	       
    	       <input type="submit" value="Show My Courses" />
    	       
    	</form>
  	</body>
</html>        