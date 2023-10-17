package com.car.Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.car.Classes.Car;
import com.car.Classes.CarDao;
import com.db.Connexion.DaoConnection;

public class CarDetailsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private CarDao carDao; 

    public CarDetailsServlet() {
        super();
    }
    
    public void init() throws ServletException {
        DaoConnection daoConnection = DaoConnection.getInstance();
        this.carDao = daoConnection.getCarDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         String carID = request.getParameter("carID");
         System.out.println("Received carID: " + carID);

         if (carID != null && !carID.isEmpty() && carID.matches("\\d+")) {
             int carIDInt = Integer.valueOf(carID);
             Car carDetails = carDao.getCarDetailsByID(carIDInt);
             request.setAttribute("carDetails", carDetails); // Setting the attribute
         } else {
             System.err.println("Invalid carID format");
         }

        this.getServletContext().getRequestDispatcher("/WEB-INF/CarDetails.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
