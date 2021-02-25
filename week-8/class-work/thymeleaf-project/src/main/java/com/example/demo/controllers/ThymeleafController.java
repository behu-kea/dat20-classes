package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;

@Controller
public class ThymeleafController {
    @GetMapping("/")
    public String renderHome() {
        return "index.html";
    }

    @GetMapping("/variables")
    public String renderVariables(Model model) {
        String username = "benna1000";
        model.addAttribute("usernameToRender", username);

        ArrayList<Integer> prices = new ArrayList<>();
        prices.add(399);
        prices.add(800);

        model.addAttribute("cheapPrices", prices);

        return "variables.html";
    }
}
