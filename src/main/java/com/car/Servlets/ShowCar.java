package com.car.Servlets;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.car.Classes.CarDao;
import com.db.Connexion.DaoConnection;

/**
 * Servlet implementation class SowCar
 */
public class ShowCar extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CarDao carDao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowCar() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init() throws ServletException {
    	DaoConnection daoConnection = DaoConnection.getInstance();
        this.carDao = daoConnection.getCarDao();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("cars", carDao.lister());
		this.getServletContext().getRequestDispatcher("/WEB-INF/AllCars.jsp").forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
