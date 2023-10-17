package com.db.Connexion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.car.Classes.Car;
import com.car.Classes.CarDao;

public class CarDaoImpl implements CarDao {
    private DaoConnection daoConnection;

    public CarDaoImpl(DaoConnection daoConnection) {
        this.daoConnection = daoConnection;
    }

    public void ajouter(Car car) {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = daoConnection.getConnection();
            preparedStatement = connexion.prepareStatement("INSERT INTO carinfo (matricule, marque_car, type_car, circulation_date, weight, horse_power, door_number, color, description, image1, image2, image3, image4, image5) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");
            preparedStatement.setString(1, car.getMatricule());
            preparedStatement.setString(2, car.getMarque_car());
            preparedStatement.setString(3, car.getType_car());
            preparedStatement.setString(4, car.getCirculation_date());
            preparedStatement.setString(5, car.getWeight());
            preparedStatement.setString(6, car.getHorse_power());
            preparedStatement.setString(7, car.getDoor_number());
            preparedStatement.setString(8, car.getColor());
            preparedStatement.setString(9, car.getDescription());
            preparedStatement.setString(10, car.getImage1());
            preparedStatement.setString(11, car.getImage2());
            preparedStatement.setString(12, car.getImage3());
            preparedStatement.setString(13, car.getImage4());
            preparedStatement.setString(14, car.getImage5());
            System.out.println("CarInfo inserted");
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (preparedStatement != null) preparedStatement.close();
                if (connexion != null) connexion.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public List<Car> lister() {
        List<Car> cars = new ArrayList<>();
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;

        try {
            connexion = daoConnection.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT id, matricule, marque_car, type_car, circulation_date, weight, horse_power, door_number, color, description, image1, image2, image3, image4, image5 FROM carinfo;");

            while (resultat.next()) {
                int id = resultat.getInt("id");
                String matricule = resultat.getString("matricule");
                String marque_car = resultat.getString("marque_car");
                String type_car = resultat.getString("type_car");
                String circulation_date = resultat.getString("circulation_date");
                String weight = resultat.getString("weight");
                String horse_power = resultat.getString("horse_power");
                String door_number = resultat.getString("door_number");
                String color = resultat.getString("color");
                String description = resultat.getString("description");
                String image1 = resultat.getString("image1");
                String image2 = resultat.getString("image2");
                String image3 = resultat.getString("image3");
                String image4 = resultat.getString("image4");
                String image5 = resultat.getString("image5");

                Car car = new Car();
                car.setId(id);
                car.setMatricule(matricule);
                car.setMarque_car(marque_car);
                car.setType_car(type_car);
                car.setCirculation_date(circulation_date);
                car.setWeight(weight);
                car.setHorse_power(horse_power);
                car.setDoor_number(door_number);
                car.setColor(color);
                car.setDescription(description);
                car.setImage1(image1);
                car.setImage2(image2);
                car.setImage3(image3);
                car.setImage4(image4);
                car.setImage5(image5);

                cars.add(car);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (resultat != null) resultat.close();
                if (statement != null) statement.close();
                if (connexion != null) connexion.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return cars;
    }

    
    public Car getCarDetailsByID(int carID) {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultat = null;
        Car car = null;

        try {
            connexion = daoConnection.getConnection();
            preparedStatement = connexion.prepareStatement("SELECT * FROM carinfo WHERE id = ?;");
            preparedStatement.setInt(1,(carID));
            resultat = preparedStatement.executeQuery();

            if (resultat.next()) {
            	int id = resultat.getInt("id");
                String matricule = resultat.getString("matricule");
                String marque_car = resultat.getString("marque_car");
                String type_car = resultat.getString("type_car");
                String circulation_date = resultat.getString("circulation_date");
                String weight = resultat.getString("weight");
                String horse_power = resultat.getString("horse_power");
                String door_number = resultat.getString("door_number");
                String color = resultat.getString("color");
                String description = resultat.getString("description");
                String image1 = resultat.getString("image1");
                String image2 = resultat.getString("image2");
                String image3 = resultat.getString("image3");
                String image4 = resultat.getString("image4");
                String image5 = resultat.getString("image5");

                car = new Car();
                car.setId(id);
                car.setMatricule(matricule);
                car.setMarque_car(marque_car);
                car.setType_car(type_car);
                car.setCirculation_date(circulation_date);
                car.setWeight(weight);
                car.setHorse_power(horse_power);
                car.setDoor_number(door_number);
                car.setColor(color);
                car.setDescription(description);
                car.setImage1(image1);
                car.setImage2(image2);
                car.setImage3(image3);
                car.setImage4(image4);
                car.setImage5(image5);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (resultat != null) resultat.close();
                if (preparedStatement != null) preparedStatement.close();
                if (connexion != null) connexion.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return car;
    }
    
    public void update(Car car) {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = daoConnection.getConnection();
            preparedStatement = connexion.prepareStatement("UPDATE carinfo SET matricule=?, marque_car=?, type_car=?, circulation_date=?, weight=?, horse_power=?, door_number=?, color=?, description=?, image1=?, image2=?, image3=?, image4=?, image5=? WHERE id=?");
            preparedStatement.setString(1, car.getMatricule());
            preparedStatement.setString(2, car.getMarque_car());
            preparedStatement.setString(3, car.getType_car());
            preparedStatement.setString(4, car.getCirculation_date());
            preparedStatement.setString(5, car.getWeight());
            preparedStatement.setString(6, car.getHorse_power());
            preparedStatement.setString(7, car.getDoor_number());
            preparedStatement.setString(8, car.getColor());
            preparedStatement.setString(9, car.getDescription());
            preparedStatement.setString(10, car.getImage1());
            preparedStatement.setString(11, car.getImage2());
            preparedStatement.setString(12, car.getImage3());
            preparedStatement.setString(13, car.getImage4());
            preparedStatement.setString(14, car.getImage5());
            preparedStatement.setInt(15, car.getId());
            System.out.println("CarInfo updated");

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("CarInfo not updated");
        } 
    }
    
    
}
