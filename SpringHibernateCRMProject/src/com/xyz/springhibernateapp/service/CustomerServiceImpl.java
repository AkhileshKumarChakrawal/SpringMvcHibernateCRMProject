package com.xyz.springhibernateapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xyz.springhibernateapp.dao.CustomerDAO;
import com.xyz.springhibernateapp.entity.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDAO customerDAO;
	
	@Override
	@Transactional
	public List<Customer> getAllCustomerDetails() {
		return (List<Customer>)customerDAO.getAllCustomerDetails();
	}

	@Override
	@Transactional
	public void addNewCustomer(Customer customer) {
		// TODO Auto-generated method stub
		customerDAO.addNewCustomer(customer);
		
	}

	@Override
	@Transactional
	public Customer updateCustomerById(int id) {
		// TODO Auto-generated method stub
		
		return customerDAO.updateCustomerById(id);
	}

	@Override
	@Transactional
	public void deleteCustomer(int id) {
		// TODO Auto-generated method stub
		customerDAO.deleteCustomerById(id);
	}


    @Override
	@Transactional
	public List<Customer> getCustomerDetailByFirstName(String firstName) {
		// TODO Auto-generated method stub
		return (List<Customer>)customerDAO.getCustomerDetailByFirstName(firstName);
	}
}
