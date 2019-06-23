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
	private Integer codigo;
	
	private String nombre;
	private String ubicacion;
	private String horarios;
	private Integer mesas;
	private String gerente;
	
	
	
	
	public Sucursal() {
	
	}
	
	public Integer getCodigo() {
		return codigo;
	}
	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getUbicacion() {
		return ubicacion;
	}
	public void setUbicacion(String ubicacion) {
		this.ubicacion = ubicacion;
	}
	public String getHorarios() {
		return horarios;
	}
	public void setHorarios(String horarios) {
		this.horarios = horarios;
	}
	public Integer getMesas() {
		return mesas;
	}
	public void setMesas(Integer mesas) {
		this.mesas = mesas;
	}
	public String getGerente() {
		return gerente;
	}
	public void setGerente(String gerente) {
		this.gerente = gerente;
	}
	
	
	
	
	
	
	
	
}