package com.uca.capas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

@Entity 
public class Sucursal {
	@Id
	@GeneratedValue(generator="sucursal_code_sucursal_seq" , strategy=GenerationType.AUTO)
	@SequenceGenerator(name="sucursal_code_seq" , sequenceName="public.sucursal_code_sucursal_seq" , allocationSize =1)
	
	@Column(name="codigo")
	private Integer cCodigo;
	
	@Column(name="horarios")
	private String hHorarios;
	
	@Column(name="nMesas")
	private Integer numMesas;
	
	@Column(name="nomGerente")
	private String nGerente;
	
	@Column(name="ubicacion")
	private String uUbicacion;
	
	
	
	
	public Sucursal(Integer cCodigo, String hHorarios, Integer numMesas, String nGerente, String uUbicacion) {
		super();
		this.cCodigo = cCodigo;
		this.hHorarios = hHorarios;
		this.numMesas = numMesas;
		this.nGerente = nGerente;
		this.uUbicacion = uUbicacion;
	}
	
	public Integer getcCodigo() {
		return cCodigo;
	}
	public void setcCodigo(Integer cCodigo) {
		this.cCodigo = cCodigo;
	}
	public String gethHorarios() {
		return hHorarios;
	}
	public void sethHorarios(String hHorarios) {
		this.hHorarios = hHorarios;
	}
	public Integer getNumMesas() {
		return numMesas;
	}
	public void setNumMesas(Integer numMesas) {
		this.numMesas = numMesas;
	}
	public String getnGerente() {
		return nGerente;
	}
	public void setnGerente(String nGerente) {
		this.nGerente = nGerente;
	}
	public String getuUbicacion() {
		return uUbicacion;
	}
	public void setuUbicacion(String uUbicacion) {
		this.uUbicacion = uUbicacion;
	}
	
}
