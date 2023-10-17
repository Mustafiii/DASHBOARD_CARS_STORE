package com.db.Connexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.car.Classes.CarDao;
import com.user.Classes.UserDao;

public class DaoConnection {
	 private String url;
	    private String username;
	    private String password;

	    DaoConnection(String url, String username, String password) {
	        this.url = url;
	        this.username = username;
	        this.password = password;
	    }

	    public static DaoConnection getInstance() {
	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	        } catch (ClassNotFoundException e) {

	        }

	        DaoConnection instance = new DaoConnection(
            "jdbc:mysql://@localhost:3306/carseller?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "123456");

	        return instance;
	    }

	    public Connection getConnection() throws SQLException {
	        return DriverManager.getConnection(url, username, password);
	    }

		public UserDao getUserDao() {
			return new UserDaoImpl(this);
		}
		public CarDao getCarDao() {
			return new CarDaoImpl(this);
		}

    
}

