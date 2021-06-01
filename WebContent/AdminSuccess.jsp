
<!DOCTYPE html>

<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
      <title>SSStudy</title>
      <!-- Bootstrap -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
      <!-- Optional theme -->
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:300i,400,600,700,800" rel="stylesheet">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
      <link rel="stylesheet" href="resources/css/admin.css" type="text/css"/>
       <link rel="stylesheet" href="resources/css/course.css" type="text/css"/>
      <!-- Favicon -->
      <link rel="icon" href="resources/images/favicon.ico" > 
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
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
      <div class="main-outer innner-box" style="background-color:#00adb5;">
       
   <!--    <div class="bottom-left">
           <img src="resources/images/harmonium.png" alt="botom image">
        </div> -->
        
        <div class="container-fluid">
        
        <div class="">
         

              <div class="col-md-7 padding-zero">
              
                <div class="right-inner">
                <h3 align="center">It's Admin  <%=session.getAttribute("name") %></h3>
                   <div>
        <div class="">
      <div class=" mx-auto">
      <div id="first" style="padding-bottom:85px;">
        <div class="myform form ">
           <div class="logo mb-3">
             <div class="col-md-12 text-center">
             
             </div>
          </div>
            <h1 class="header">Course Information </h1>
        <form name="searchCourse" action="SearchServlet" method="post">
            <div>
                <table border="1">
                    <thead>
                        <tr>
                        	<th style="alignment-adjust: auto">Course Name </th>
                        	<td><input type="text" name="courseN"  size="20" /></td>
                        </tr>
                        <tr>
                        	<th>Trainer Name :</th>
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
                <form action="AdminServlet" method="post">
		 
				 <input type="submit" value="Show Courses" />
				 
				 </form>
				  <form action="showemp.jsp" method="post" class="form2" style="margin-top: 2vh;">
		 
				 <input type="submit" value="Show Employees" />
				 
				 </form>
        </div>
      </div>
        </div>
    </div>
      </div>  
                </div>
              </div>
          </div>
        </div>
            
          </div>
        </div>
     
   </body>
</html>