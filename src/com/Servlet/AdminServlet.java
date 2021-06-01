package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DaoImp.CourseCatalog;
import com.Model.Course;

@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public AdminServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		PrintWriter pw=response.getWriter();
		CourseCatalog search= new CourseCatalog();
		List<Course> list3=search.showCourses();
		request.setAttribute("courses3", list3);
		System.out.println("Admin servlet :"+ list3);
        RequestDispatcher rd =request.getServletContext().getRequestDispatcher("/AdminLogin.jsp");
     	rd.forward(request, response);
	
		
		int id=Integer.parseInt(request.getParameter("id"));
		Course c1=new Course();
		c1.setCourseID(id);
		String s1=search.deleteCourse(c1);
		pw.println(s1);
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
/*
The point of serialVersionUID is to give the programmer control over which versions of a 
class are considered incompatible in regard to serialization. 
As long as the serialVersionUID stays the same, the serialization
 mechanism will make a best effort to translate serialized instances,
  which may not be what you want. If you make a semantic change that renders 
  older versions incompatible, you can change the serialVersionUID to make 
  deserializing older instances fail.

If all classes have the same serialVersionUID 1L, is there no problem?

No - the serialVersionUID is per class.
*/