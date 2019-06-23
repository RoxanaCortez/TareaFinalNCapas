package com.uca.capas.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

@Entity
public class Usuario {
	
	@Id
	@GeneratedValue(generator="usuario_code_usuario_seq" , strategy=GenerationType.AUTO)
	@SequenceGenerator(name="usuario_code_seq" , sequenceName="public.usuario_code_usuario_seq" , allocationSize =1)
	private Integer id;
	
	private String nombre;

	
	
	
	public Usuario() {
		
	}
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	private String password ;

}
