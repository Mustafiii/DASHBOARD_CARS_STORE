package com.user.Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.db.Connexion.DaoConnection;
import com.user.Classes.User;
import com.user.Classes.UserDao;

/**
 * Servlet implementation class RegisterUser
 */
public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UserDao userDao;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterUser() {
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
        request.setAttribute("users", userDao.lister());
        this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User user = new User();
        user.setFname(request.getParameter("fname"));
        user.setLname(request.getParameter("lname"));
        user.setBorn_date(request.getParameter("born_date"));
        user.setEmail(request.getParameter("email"));
        user.setMobile(request.getParameter("mobile"));
        user.setPassword(request.getParameter("password"));

        userDao.ajouter(user);

        request.setAttribute("utilisateurs", userDao.lister());
        this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);	}

}
