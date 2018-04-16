package com.mac.web.mapper;

import java.util.List;
import org.springframework.stereotype.Component;

import com.mac.web.domain.Command;
import com.mac.web.domain.Customer;

@Component
public interface CustomerMapper {
	public void insertCustomer(Command cmd);
	public void updateCustomer(Command cmd);
	public void deleteCustomer(Command cmd);
	public List<Customer> selectAll();
	public List<Customer> selectByName(Command cmd);
	public Customer selectById(Command cmd);
	public int selectCount(Command cmd);
	
	

	
	/*
	public void insertCustomer(Command cmd);
	public Customer updateCustomer(Command cmd);
	public void deleteCustomer(Command cmd);
	
	public void insertAddr(Command cmd);
	public Addr updateAddr(Command cmd);
	public void deleteAddr(Command cmd);
	
	public void insertComment(Command cmd);
	public Comment updateComment(Command cmd);
	public void deleteComment(Command cmd);
	*/
	
	
	
	
/*    public void insertCustomer(Command cmd);
    public Customer updateCustomer(Command cmd);
    public Customer deleteCustomer(Command cmd);
    public Customer getCustomerById(Command cmd); // 관리자 

    public void insertItem(Command cmd);    // 관리자 
    public Item updateItem(Command cmd);    // 관리자 
    public Item deleteItem(Command cmd);    // 관리자 
    public List<Item> getItems(Command cmd);    
    public Item getItem(Command cmd);
   
    public void insertComment(Command cmd);
    public Comment updateComment(Command cmd);
    public Comment deleteComment(Command cmd);
    public List<Comment> articles(Command cmd);
    public Comment getarticle(Command cmd);

    public int count();
    public int exist(Command cmd);*/
}
