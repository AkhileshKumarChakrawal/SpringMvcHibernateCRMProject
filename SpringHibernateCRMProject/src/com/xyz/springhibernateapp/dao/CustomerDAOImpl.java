package com.xyz.springhibernateapp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.xyz.springhibernateapp.entity.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("deprecation")
	@Override
	@Transactional
	public List<Customer> getAllCustomerDetails() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Query<Customer> query = session.createQuery("from Customer order by firstName");
	
		List<Customer> customers = query.list();
		
		return customers;
/*		return (List<Customer>)session.createCriteria(Customer.class).list();
*/		
	}

	@Override
	@Transactional
	public void addNewCustomer(Customer customer) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(customer);
	}

	@Override
	@Transactional
	public Customer updateCustomerById(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Customer customer = session.get(Customer.class,id);
		
		return customer;
	}

	@Override
	@Transactional
	public void deleteCustomerById(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		Query query = session.createQuery("delete from Customer where id=:customerId");
		query.setParameter("customerId", id);
		
		query.executeUpdate();
	}

	@Override
	@Transactional
	public List<Customer> getCustomerDetailByFirstName(String firstName) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		//Customer customer = session.get(Customer.class,firstName);
		Query query = session.createQuery("from Customer where firstName=:customerName");
		query.setParameter("customerName",firstName);
		List<Customer> customer = query.list();
		for(Customer c : customer) {
			System.out.println(c.getFirstName());
		}
		return customer;
	}

}
