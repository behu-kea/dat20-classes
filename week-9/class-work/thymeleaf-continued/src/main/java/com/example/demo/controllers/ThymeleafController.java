package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ThymeleafController {
    @GetMapping("/")
    public String renderHome(Model model) {
        Boolean isUserLoggedIn = false;
        model.addAttribute("isUserLoggedIn", isUserLoggedIn);
        String emailProvide = "hotmail";
        model.addAttribute("emailProvider", emailProvide);

        return "index.html";
    }

    @GetMapping("/about")
    public String renderAbout() {
        return "about.html";
    }
}
