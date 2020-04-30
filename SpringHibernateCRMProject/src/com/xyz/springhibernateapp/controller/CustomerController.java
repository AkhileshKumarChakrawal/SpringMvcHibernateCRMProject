package com.xyz.springhibernateapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.xyz.springhibernateapp.dao.CustomerDAO;
import com.xyz.springhibernateapp.entity.Customer;
import com.xyz.springhibernateapp.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/list")
	public String listCustomer(Model model) {
		
		List<Customer> customerdata = customerService.getAllCustomerDetails();
		
		model.addAttribute("customers", customerdata);
		return "list-customer";
	}
	
	
	@GetMapping("/addCustomer")
	public String showFormForAdd(Model model) {
		
		Customer customer = new Customer();
		model.addAttribute("customer",customer);
		
		return "customer-form";
	}
	
	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer customer) {
		
		customerService.addNewCustomer(customer);
		return "redirect:/customer/list";
	}
	
	@GetMapping("/updateCustomer")
	public String showFormForUpdate(@RequestParam("customerId") int id, Model model) {
		
		Customer customer = customerService.updateCustomerById(id);
		model.addAttribute("customer",customer);
		return "update-customer";
	}
	
	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("customerId") int id) {
		customerService.deleteCustomer(id);
		return "redirect:/customer/list";
	}
	
	@GetMapping("/search")
	public String searchCustomerByName(@RequestParam("name") String name , Model model) {
		List<Customer> customer = customerService.getCustomerDetailByFirstName(name);
		System.out.println(name);
		model.addAttribute("customers",customer);
		return "list-customer";
		
	}
}
