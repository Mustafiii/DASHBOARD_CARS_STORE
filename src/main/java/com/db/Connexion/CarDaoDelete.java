package com.db.Connexion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CarDaoDelete {
    private final DaoConnection daoConnection;

    public CarDaoDelete(DaoConnection daoConnection) {
        this.daoConnection = daoConnection;
    }

    public boolean deleteCarByID(int carID) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        boolean success = false;

        try {
            connection = daoConnection.getConnection();
            preparedStatement = connection.prepareStatement("DELETE FROM carinfo WHERE id = ?");
            preparedStatement.setInt(1, carID);
            int rowsDeleted = preparedStatement.executeUpdate();

            if (rowsDeleted > 0) {
                success = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return success;
    }
}
