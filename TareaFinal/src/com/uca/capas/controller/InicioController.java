package com.uca.capas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Sucursal;
import com.uca.capas.service.UsuarioService;
import com.uca.capas.service.SucursalService;

@Controller
public class InicioController {
	
	@Autowired
	UsuarioService userService;
	
	@Autowired
	SucursalService sucursalService;
	
	@RequestMapping(value = "/")
	public ModelAndView main() {
		ModelAndView mav= new ModelAndView();
		
		mav.setViewName("home");
		
		return mav;
	}
	
	@RequestMapping(value= "/login", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam(name = "user") String user, @RequestParam(name = "pass") String pass) {
		ModelAndView mav = new ModelAndView();
		
		
		if(userService.login(user, pass)) {
			mav.setViewName("index");
			List<Sucursal> listSucursal = sucursalService.listAll();
			mav.addObject("listSucursal", listSucursal);
		}else {
			mav.setViewName("home");
			
		}
		
		return mav;
	}
	
}