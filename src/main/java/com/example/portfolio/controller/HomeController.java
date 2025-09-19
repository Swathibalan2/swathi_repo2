package com.example.portfolio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home() {
        return "index";  // maps to src/main/resources/templates/index.html
    }

    @GetMapping("/about")
    public String about() {
        return "about";  // if you have about.html
    }

    @GetMapping("/contact")
    public String contact() {
        return "contact"; // if you have contact.html
    }
}
