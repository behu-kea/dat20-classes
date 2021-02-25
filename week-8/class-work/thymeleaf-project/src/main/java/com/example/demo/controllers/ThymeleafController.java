package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;

@Controller
public class ThymeleafController {
    @GetMapping("/")
    public String renderHtml() {
        return "home/index.html";
    }

    @GetMapping("/about")
    public String renderAbout() {
        return "home/index.html";
    }

    @GetMapping("/advanced")
    public String renderHtmlAdvanced(Model model) {
        String title = "welcome to our site1";
        model.addAttribute("welcomeTitle", 2);

        return "html-advanced.html";
    }
}
