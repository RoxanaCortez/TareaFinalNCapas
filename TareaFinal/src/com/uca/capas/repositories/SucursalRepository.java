package com.uca.capas.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.Sucursal;
@Repository
public interface SucursalRepository extends CrudRepository<Sucursal, Integer>{
	
}
