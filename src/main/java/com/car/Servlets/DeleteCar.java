package com.car.Servlets;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.db.Connexion.CarDaoDelete;
import com.db.Connexion.DaoConnection;


/**
 * Servlet implementation class DeleteCar
 */
public class DeleteCar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int carID = Integer.parseInt(request.getParameter("carID"));

	    DaoConnection daoConnection = DaoConnection.getInstance();
	    CarDaoDelete carDaoDelete = new CarDaoDelete(daoConnection);

	    boolean success = carDaoDelete.deleteCarByID(carID);

	    if (success) {
	        response.getWriter().println("Car with ID " + carID + " deleted successfully.");
	    } else {
	        response.getWriter().println("No car with ID " + carID + " found.");
	    }
	    }

}
