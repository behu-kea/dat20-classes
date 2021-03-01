package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class KebabenhavnController {
    @GetMapping("/")
    public String renderHome(Model model) {
        Boolean isUserLoggedIn = true;
        model.addAttribute("isUserLoggedIn", isUserLoggedIn);

        String emailProvider = "hotmail";
        model.addAttribute("emailProvider", emailProvider);

        return "index.html";
    }

    @GetMapping("/about")
    public String renderAbout(Model model) {
        return "about.html";
    }
}
