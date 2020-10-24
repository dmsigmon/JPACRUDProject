package com.skilldistillery.jpacrud.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.jpacrud.data.CustomerDAOJpaImpl;
import com.skilldistillery.jpacrud.entities.Customer;

@Controller
public class CustomerController {
	@Autowired
	CustomerDAOJpaImpl dao;
	
	
	@RequestMapping(path= "/")
	public String index() {
		return "index";
	}
	
	
	@RequestMapping(path = "getCustomer.do", params = "cid")
	public String showFilm(Integer cid, Model model) {
		Customer cust = dao.findById(cid);
		model.addAttribute("customer", cust);
		return "customer/show";
	}
	
	@RequestMapping(path = "addCustomer.do", method = RequestMethod.POST )
	public ModelAndView addCustomer(Customer customer, RedirectAttributes ra) {
		
		Customer tempCust = dao.createCustomer(customer);
//		tempCust.setFirstName(firstName);
//		tempCust.setLastName(lastName);
//		tempCust.setAddress(address);
//		tempCust.setAddress(email);
//		tempCust.setPhone(phone);
//		dao.createCustomer(tempCust);
		ModelAndView mv = new ModelAndView();
		ra.addFlashAttribute("customer", tempCust);
//		mv.addObject("customer", tempCust);
		mv.setViewName("redirect:customerAdded.do");
		return mv;
	}
	@RequestMapping(path = "customerAdded.do", method = RequestMethod.GET)
	public ModelAndView created() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customer/show");
		return mv;
	}
	

}
