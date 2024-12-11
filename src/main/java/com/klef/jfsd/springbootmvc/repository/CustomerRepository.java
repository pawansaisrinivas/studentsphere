package com.klef.jfsd.springbootmvc.repository;

import com.klef.jfsd.springbootmvc.model.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {
    // Custom query method to find customer by email and password
    Optional<Customer> findByEmailAndPassword(String email, String password);
}
