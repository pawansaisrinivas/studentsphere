package com.klef.jfsd.springbootmvc.controller;

import com.klef.jfsd.springbootmvc.model.Customer;
import com.klef.jfsd.springbootmvc.service.customerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class CustomerController {

    private final customerService customerService;

    @Autowired
    public CustomerController(customerService customerService) {
        this.customerService = customerService;
    }

    @GetMapping("/")
    public ModelAndView home() {
        return new ModelAndView("home");
    }

    @GetMapping("/customerreg")
    public ModelAndView customerReg() {
        return new ModelAndView("customerreg");
    }

    @PostMapping("/insertcustomer")
    public ModelAndView insertCustomer(Customer customer, RedirectAttributes redirectAttributes) {
        try {
            String message = customerService.customerRegistration(customer);
            ModelAndView mv = new ModelAndView("regsuccess");
            mv.addObject("message", message);
            return mv;
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("errorMessage", "Error during registration.");
            return new ModelAndView("redirect:/customerreg");
        }
    }

    @GetMapping("/customerlogin")
    public ModelAndView customerLogin() {
        return new ModelAndView("customerlogin");
    }

    @PostMapping("/customerlogin")
    public String handleLogin(@RequestParam("email") String email,
                              @RequestParam("password") String password,
                              RedirectAttributes redirectAttributes) {
        try {
            if (customerService.validateCredentials(email, password)) {
                return "redirect:/studenthome";
            } else {
                redirectAttributes.addFlashAttribute("errorMessage", "Invalid email or password.");
                return "redirect:/customerlogin";
            }
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("errorMessage", "An error occurred during login.");
            return "redirect:/customerlogin";
        }
    }

    @GetMapping("/studenthome")
    public ModelAndView studentHome() {
        return new ModelAndView("studenthome");
    }
}
