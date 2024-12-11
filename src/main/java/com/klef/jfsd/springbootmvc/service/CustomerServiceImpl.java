package com.klef.jfsd.springbootmvc.service;

import com.klef.jfsd.springbootmvc.model.Customer;
import com.klef.jfsd.springbootmvc.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CustomerServiceImpl implements customerService {

    @Autowired
    private CustomerRepository customerRepository;

    @Override
    public String customerRegistration(Customer customer) {
        customerRepository.save(customer);
        return "Customer registration successful";
    }

    @Override
    public boolean validateCredentials(String email, String password) {
        // Use the repository method to find the customer by email and password
        Optional<Customer> customer = customerRepository.findByEmailAndPassword(email, password);

        // Return true if customer is present, false otherwise
        return customer.isPresent();
    }
}
