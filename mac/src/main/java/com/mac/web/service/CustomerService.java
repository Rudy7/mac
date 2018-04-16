package com.mac.web.service;

import java.util.List;
import com.mac.web.domain.Command;
import com.mac.web.domain.Customer;

public interface CustomerService {
	public void addCustomer(Command cmd);
	public void modifyCustomer(Command cmd);
	public void removeCustomer(Command cmd);
	public List<Customer> list();
	public List<Customer> findByName(Command cmd);
	public Customer findById(Command cmd);
	public boolean count(Command cmd);
}