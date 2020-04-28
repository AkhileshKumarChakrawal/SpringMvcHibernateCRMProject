package com.xyz.springhibernateapp.dao;

import java.util.List;

import com.xyz.springhibernateapp.entity.Customer;

public interface CustomerDAO {
	public List<Customer> getAllCustomerDetails();

	public void addNewCustomer(Customer theCustomer);

	public Customer updateCustomerById(int theId);

	public void deleteCustomerById(int theId);
	
	
	public List<Customer> getCustomerDetailByFirstName(String firstName);

}
