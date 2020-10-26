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
	
	
	@RequestMapping(path= {"/", "home.do"})
	public String index() {
		return "index";
	}
	@RequestMapping(path= "deleteCustomerHomepage.do")
	public String dch() {
		return "deleteCustomer";
	}
	@RequestMapping(path= "createCustomerHomepage.do")
	public String cch() {
		return "createCustomer";
	}
	@RequestMapping(path= "updateEmailByPhoneHomePage.do")
	public String UpdateEmailHomePage() {
		return "updateEmailByPhone";
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
		ModelAndView mv = new ModelAndView();
		ra.addFlashAttribute("customer", tempCust);
		mv.setViewName("redirect:customerAdded.do");
		return mv;
	}
	@RequestMapping(path = "customerAdded.do", method = RequestMethod.GET)
	public ModelAndView created() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customer/show");
		return mv;
	}
	
	@RequestMapping(path="deleteCustomer.do", method = RequestMethod.GET)
	public ModelAndView deleteCustomer(Integer id) {
		dao.deleteCustomer(id);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customer/deleted");
		return mv;
	}
	@RequestMapping(path="updateEmail.do", method = RequestMethod.POST)
	public ModelAndView updateEmail(String email, String phone) {
		dao.updateEmailByPhone(email, phone);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customer/updated");
		return mv;
	}
}
