package com.uca.capas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(schema="public",name="empleado")
public class Empleado {

	@Id
	@Column(name = "codigo_emp")
	private Integer eCodigo;
	
	@Column(name = "nombre")
	private String eNombre;
	
	
	@Column(name = "edad")
	private Integer eEdad;
	
	
	@Column(name = "genero")
	private String eGenero;
	
	@Column(name = "estado")
	private Boolean eEstados;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "sucursal")
	private Sucursal sucursal;
	
	public Integer geteCodigo() {
		return eCodigo;
	}

	public void seteCodigo(Integer eCodigo) {
		this.eCodigo = eCodigo;
	}

	public String geteNombre() {
		return eNombre;
	}

	public void seteNombre(String eNombre) {
		this.eNombre = eNombre;
	}

	public Integer geteEdad() {
		return eEdad;
	}

	public void seteEdad(Integer eEdad) {
		this.eEdad = eEdad;
	}

	public String geteGenero() {
		return eGenero;
	}

	public void seteGenero(String eGenero) {
		this.eGenero = eGenero;
	}

	public Sucursal getSucursal() {
		return sucursal;
	}

	public void setSucursal(Sucursal sucursal) {
		this.sucursal = sucursal;
	}

	public Boolean geteEstados() {
		return eEstados;
	}

	public void seteEstados(Boolean eEstados) {
		this.eEstados = eEstados;
	}
	
	
	public String getGenderDelegate() {
		if(this.eGenero.equals("M")) {
			return "Male";
		}else {
			return "Female";
		}
	}
	
	public String getStatusDelegate() {
		if(this.eEstados) {
			return "Active";
		}else {
			return "Inactive";
		}
	}
	
}