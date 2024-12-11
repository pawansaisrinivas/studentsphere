package com.klef.jfsd.springbootmvc.controller;

import com.klef.jfsd.springbootmvc.model.Admin;
import com.klef.jfsd.springbootmvc.model.Customer;
import com.klef.jfsd.springbootmvc.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    @GetMapping("/adminlogin")
    public String showLoginPage() {
        return "adminlogin";
    }

    @PostMapping("/adminlogin")
    public String handleLogin(@RequestParam("username") String username,
                               @RequestParam("password") String password,
                               RedirectAttributes redirectAttributes) {
        Admin admin = adminService.checkAdminLogin(username, password);
        if (admin != null) {
            return "redirect:/adminhome";
        } else {
            redirectAttributes.addFlashAttribute("errorMessage", "Invalid credentials.");
            return "redirect:/adminlogin";
        }
    }

    @GetMapping("/adminhome")
    public String showAdminHome(Model model) {
        List<Customer> customerList = adminService.viewAllCustomers();
        model.addAttribute("customers", customerList);
        return "adminhome";
    }

    @GetMapping("/customer/add")
    public String showAddCustomerPage() {
        return "addcustomer";
    }

    @PostMapping("/customer/add")
    public String addCustomer(@ModelAttribute Customer customer, RedirectAttributes redirectAttributes) {
        adminService.addCustomer(customer);
        redirectAttributes.addFlashAttribute("successMessage", "Customer added successfully.");
        return "redirect:/adminhome";
    }

    @GetMapping("/customer/edit/{id}")
    public String showEditCustomerPage(@PathVariable int id, Model model) {
        Customer customer = adminService.getCustomerById(id);
        model.addAttribute("customer", customer);
        return "editcustomer";
    }

    @PostMapping("/customer/edit")
    public String editCustomer(@ModelAttribute Customer customer, RedirectAttributes redirectAttributes) {
        adminService.updateCustomer(customer);
        redirectAttributes.addFlashAttribute("successMessage", "Customer updated successfully.");
        return "redirect:/adminhome";
    }

    @GetMapping("/customer/delete/{id}")
    public String deleteCustomer(@PathVariable int id, RedirectAttributes redirectAttributes) {
        adminService.deleteCustomer(id);
        redirectAttributes.addFlashAttribute("successMessage", "Customer deleted successfully.");
        return "redirect:/adminhome";
    }
}
