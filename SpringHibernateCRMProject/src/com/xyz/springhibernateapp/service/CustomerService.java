package com.xyz.springhibernateapp.service;

import java.util.List;

import com.xyz.springhibernateapp.entity.Customer;

public interface CustomerService {
	public List<Customer> getAllCustomerDetails();

	public void addNewCustomer(Customer customer);

	public Customer updateCustomerById(int id);

	public void deleteCustomer(int id);
	
	public List<Customer> getCustomerDetailByFirstName(String firstName);

}
