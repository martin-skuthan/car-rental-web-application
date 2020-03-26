package pl.java.services;

import java.util.ArrayList;
import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import pl.java.dao.CustomerDao;
import pl.java.model.Customer;

@RequestScoped
public class CustomerService {
	@Inject
	private CustomerDao customerDao;
	
	public void createCustomer(String firstName, String lastName, String pesel) {
		Customer user = new Customer(firstName, lastName, pesel);
		customerDao.createCustomer(user);
	}
	
	public void readCustomer(String userId) {
		
	}
	
	public void updateCustomer(String firstName, String lastName, String pesel) {
		
	}
	
	public void deleteCustomer(String userId) {
		
	}
	
	public List<Customer> readAllCustomers() {
		List<Customer> customers = customerDao.readAllCustomers();
		return customers;
	}
}
