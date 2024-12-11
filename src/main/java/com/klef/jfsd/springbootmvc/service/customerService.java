package com.klef.jfsd.springbootmvc.service;

import com.klef.jfsd.springbootmvc.model.Customer;

public interface customerService {

    String customerRegistration(Customer customer);

    boolean validateCredentials(String email, String password);
}
