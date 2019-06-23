package com.uca.capas.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Sucursal;
import com.uca.capas.service.SucursalService;

@Controller
public class SucursalController {
	
	@Autowired
	private SucursalService service;
	
	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView("index");
		
		List<Sucursal> listSucursal = service.listAll();
		
		mav.addObject("listSucursal", listSucursal);
		
		return mav;
	}
	
	@RequestMapping("/new")
	public String nuevaSucursalForm(Map<String, Object> model) {
		model.put("sucursal", new Sucursal());
		return "nueva_sucursal";
		
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String guardarSucursal(@ModelAttribute("sucursal") Sucursal sucursal) {
		service.save(sucursal);
		
		return "redirect:/";
		
	}
	
	@RequestMapping("/edit")
	public ModelAndView editarSucursalForm(@RequestParam Integer codigo) {
		ModelAndView mav = new ModelAndView("editar_sucursal");
		Sucursal sucursal = service.get(codigo);
		mav.addObject("sucursal", sucursal);
		return mav;
		
	}
	
	@RequestMapping("/perfil")
	public ModelAndView perfilSucursalForm(@RequestParam Integer codigo) {
		ModelAndView mav = new ModelAndView("perfil_sucursal");
		Sucursal sucursal = service.get(codigo);
		mav.addObject("sucursal", sucursal);
		return mav;
		
	}
	
	@RequestMapping("/delete")
	public String eliminarSucursal(@RequestParam Integer codigo) {
		service.delete(codigo);
		return "redirect:/";
	}

}
