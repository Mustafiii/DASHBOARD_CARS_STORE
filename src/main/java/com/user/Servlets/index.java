package com.user.Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.db.Connexion.DaoConnection;
import com.user.Classes.UserDao;

/**
 * Servlet implementation class Login
 */
public class index extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDao userDao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public index() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init() throws ServletException {
    	DaoConnection daoConnection = DaoConnection.getInstance();
        this.userDao = daoConnection.getUserDao();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 Cookie[] cookies = request.getCookies();
		    String savedEmail = null;

		    if (cookies != null) {
		        for (Cookie cookie : cookies) {
		            if (cookie.getName().equals("email")) {
		                savedEmail = cookie.getValue();
		                break;
		            }
		        }
		    }

		    request.setAttribute("savedEmail", savedEmail);

		    // Forward the request to your JSP file
		    this.getServletContext().getRequestDispatcher("/").forward(request, response);
        }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
	    String password = request.getParameter("password");
	    boolean rememberMe = request.getParameter("remember") != null;
	    boolean loggedIn = false;
	    request.setAttribute("error", "Invalid email or password");

	    if (userDao.checkCredentials(email, password)) {
	        loggedIn = true;
	    }

	    if (loggedIn) {
	    	if (rememberMe) {
	            Cookie cookie = new Cookie("email", email);
	            cookie.setMaxAge(30 * 24 * 60 * 60); 
	            response.addCookie(cookie);
	        }
	    	response.sendRedirect("ShowCar");
	    } else {
	        request.setAttribute("error", "Invalid email or password");
	        this.getServletContext().getRequestDispatcher("/").forward(request, response);
	    }
	}
}
