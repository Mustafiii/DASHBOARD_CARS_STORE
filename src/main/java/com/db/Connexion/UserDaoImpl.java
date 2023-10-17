package com.db.Connexion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.user.Classes.User;
import com.user.Classes.UserDao;

public class UserDaoImpl implements UserDao {
    private DaoConnection daoConnection;

    public UserDaoImpl(DaoConnection daoConnection) {
        this.daoConnection = daoConnection;
    }

    public void ajouter(User user) {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = daoConnection.getConnection();
            preparedStatement = connexion.prepareStatement("INSERT INTO userinfo (fname, lname, born_date, email, mobile, password) VALUES (?, ?, ?, ?, ?, ?);");
            preparedStatement.setString(1, user.getFname());
            preparedStatement.setString(2, user.getLname());
            preparedStatement.setString(3, user.getBorn_date());
            preparedStatement.setString(4, user.getEmail());
            preparedStatement.setString(5, user.getMobile());
            preparedStatement.setString(6, user.getPassword());

            System.out.println("UserInfo inserted");
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("UserInfo not inserted");
        }
    }

    public List<User> lister() {
        List<User> users = new ArrayList<>();
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;

        try {
            connexion = daoConnection.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT fname, lname, born_date, email, mobile, password FROM userinfo;");

            while (resultat.next()) {
            	System.out.println("Userinfo fetched");
                String fname = resultat.getString("fname");
                String lname = resultat.getString("lname");
                String born_date = resultat.getString("born_date");
                String email = resultat.getString("email");
                String mobile = resultat.getString("mobile");
                String password = resultat.getString("password");

                User user = new User();
                user.setFname(fname);
                user.setLname(lname);
                user.setBorn_date(born_date);
                user.setEmail(email);
                user.setMobile(mobile);
                user.setPassword(password);
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return users;
    }
    
    @Override
    public boolean checkCredentials(String email, String password) {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultat = null;

        try {
            connexion = daoConnection.getConnection();
            preparedStatement = connexion.prepareStatement("SELECT * FROM userinfo WHERE email = ? AND password = ?");
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            resultat = preparedStatement.executeQuery();

            return resultat.next(); 
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

        return false; 
    }
}
