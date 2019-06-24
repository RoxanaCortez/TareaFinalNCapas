package com.uca.capas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity(name = "usuario")
public class Usuario {

	@Id
	@Column(name = "user")

    @Size(min = 3, max = 20, message = "El nombre debe tener mas de 3 letras y menos de 20.")
	private String user;
	
	@Column(name = "pass")
	@Pattern(regexp = "^[a-zA-Z]", message= "Debe contener solo letras")
	private String pass;

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	
	
	
}
