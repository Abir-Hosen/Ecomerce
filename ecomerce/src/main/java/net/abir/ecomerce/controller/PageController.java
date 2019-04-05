package net.abir.ecomerce.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
	
	@RequestMapping(value= {"/","/home","index"})
	public ModelAndView index() {
		ModelAndView mv= new ModelAndView("page");
		mv.addObject("title", "Home");
		mv.addObject("userClickHome",true);
		
		return mv;
	}
	
	@RequestMapping(value= {"/products"})
	public ModelAndView viewProduct() {
		ModelAndView mv= new ModelAndView("page");
		mv.addObject("title", "Products");
		mv.addObject("userClickViewProduct",true);
		
		return mv;
	}
	
	@RequestMapping(value= {"/uploadProducts"})
	public ModelAndView uploadProducts() {
		ModelAndView mv= new ModelAndView("page");
		mv.addObject("title", "Upload Products");
		mv.addObject("userClickUploadProducts",true);
		
		return mv;
	}
	
	@RequestMapping(value= {"/about"})
	public ModelAndView about() {
		ModelAndView mv= new ModelAndView("page");
		mv.addObject("title", "About");
		mv.addObject("userClickAbout",true);
		
		return mv;
	}
	
	@RequestMapping(value= {"/contact"})
	public ModelAndView contact() {
		ModelAndView mv= new ModelAndView("page");
		mv.addObject("title", "Contact");
		mv.addObject("userClickContact",true);
		
		return mv;
	}
	
	@RequestMapping(value= {"/friends"})
	public ModelAndView friends() {
		ModelAndView mv= new ModelAndView("page");
		mv.addObject("title", "Friend");
		mv.addObject("userClickFriend",true);
		
		return mv;
	}


}
