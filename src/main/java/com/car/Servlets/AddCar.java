package com.car.Servlets;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.car.Classes.Car;
import com.car.Classes.CarDao;
import com.db.Connexion.DaoConnection;

/**
 * Servlet implementation class AddCar
 */
public class AddCar extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CarDao carDao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCar() {
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
        this.getServletContext().getRequestDispatcher("/WEB-INF/AddCar.jsp").forward(request, response);	
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Car car = new Car();
		car.setMatricule(request.getParameter("matricule"));
		car.setMarque_car(request.getParameter("marque_car"));
		car.setType_car(request.getParameter("type_car"));
		car.setCirculation_date(request.getParameter("circulation_date"));
		car.setWeight(request.getParameter("weight"));
		car.setHorse_power(request.getParameter("horse_power"));
		car.setDoor_number(request.getParameter("door_number"));
		car.setColor(request.getParameter("color"));
		car.setDescription(request.getParameter("description"));
		car.setImage1(request.getParameter("image1"));
		car.setImage2(request.getParameter("image2"));
		car.setImage3(request.getParameter("image3"));
		car.setImage4(request.getParameter("image4"));
		car.setImage5(request.getParameter("image5"));
		

        carDao.ajouter(car);

        request.setAttribute("cars", carDao.lister());
        response.sendRedirect("AddCar");	}
	}


