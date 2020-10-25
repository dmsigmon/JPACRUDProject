package com.skilldistillery.jpacrud.data;

import com.skilldistillery.jpacrud.entities.Customer;

public interface CustomerDAO {
	Customer findById(int id);
	Customer getCustomerAddressByName(String fName, String lName);
	void updateCustomerAddress(String address);
	public Customer createCustomer(Customer customer);
	void deleteCustomer(int id);
	
}
