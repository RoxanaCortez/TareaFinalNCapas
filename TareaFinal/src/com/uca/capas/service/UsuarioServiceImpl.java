package com.uca.capas.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.uca.capas.domain.Usuario;
import com.uca.capas.repositories.UsuarioRepository;

@Service
public class UsuarioServiceImpl implements UsuarioService {
	
	
	@Autowired
	UsuarioRepository usuarioRepository;

	@Override
	public boolean login(String user, String pass) {
		boolean response =  false;
		
		Usuario username = usuarioRepository.findOneByUserAndPass(user, pass);
		
		if(username != null) {
			response = true;
		}else {
			response = false; 
		}
		
		return response;
	}

}