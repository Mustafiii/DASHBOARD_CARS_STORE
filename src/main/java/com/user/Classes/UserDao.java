package com.user.Classes;

import java.util.List;

public interface UserDao {
	void ajouter( User user );
    List<User> lister();
    boolean checkCredentials(String email, String password);
}
