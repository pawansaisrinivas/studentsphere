package com.klef.jfsd.springbootmvc.service;

import com.klef.jfsd.springbootmvc.model.Admin;
import com.klef.jfsd.springbootmvc.model.Customer;

import java.util.List;

public interface AdminService {
    List<Customer> viewAllCustomers();
    Admin checkAdminLogin(String uname, String pwd);
    void addCustomer(Customer customer);
    Customer getCustomerById(int id);
    void updateCustomer(Customer customer);
    void deleteCustomer(int id);
    
}
