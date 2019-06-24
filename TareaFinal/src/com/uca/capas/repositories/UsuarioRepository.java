package com.uca.capas.repositories;


import org.springframework.data.jpa.repository.JpaRepository;

import com.uca.capas.domain.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, String>{

	public Usuario findOneByUserAndPass(String user, String pass);
	
}