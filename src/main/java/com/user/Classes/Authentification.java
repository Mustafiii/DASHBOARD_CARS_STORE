package com.user.Classes;

import jakarta.servlet.http.HttpServletRequest;

public class Authentification {
	private String resultat;
	public void Verifierconnecticon (HttpServletRequest request) {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if (password.equals(password) && email.equals(email))
			resultat="you are connected";
		else
			resultat="Wrong authentification info";
		
	}
	public String getResultat() {
		return resultat;
	}
	public void setResultat(String resultat) {
		this.resultat = resultat;
	}
}
