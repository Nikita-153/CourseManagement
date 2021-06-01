package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DaoImp.LoginImplementation;

@WebServlet("/LoginPage")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
        PrintWriter out = response.getWriter(); 
		int n=Integer.parseInt(request.getParameter("id"));  
        String p=request.getParameter("pass"); 
        System.out.println(n+' '+ p);
        HttpSession session = request.getSession(false);// session: if one doesn't exist yet, returns null
        if(session!=null)
        session.setAttribute("id", n);
        session.setAttribute("name", p);
        LoginImplementation b1 = new LoginImplementation();
        
        if(b1.validate(n, p))
        {
        	if(b1.isAdmin(n))
        	{
                RequestDispatcher rd=request.getRequestDispatcher("AdminSuccess.jsp");  
                rd.forward(request,response);  
        	}
        	else 
        	{
        		RequestDispatcher rd=request.getRequestDispatcher("LoginSuccess.jsp");  
        		rd.forward(request,response);  
        	}  
        }
        else
        {  
            out.print("<div align=\"center\"><p style=\"color:red\">Sorry username or password invalid</p></div>");  
            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
            rd.include(request,response);  
        }  
        out.close();  
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}


/*
	Calling getSession() and getSession(true) are functionally the same: 
	retrieve the current session, 
	and if one doesn't exist yet, create it.

	Calling getSession(false), though, 
	retrieves the current session, and if one doesn't exist yet, returns null. 
	Among other things, this is handy when we want to ask if the session exists.

*** RequestDispatcher  ***
   => rd.include(request,response):-
	To include the response (output) of one servlet into another
	 (that is, client gets the response of both servlets).
	 
	 
   => rd.include(request,response);  
	 To forward the client request to another Servlet to honour
	  (that is, client calls a Servlet but response to client is given by another Servlet).
 * */
