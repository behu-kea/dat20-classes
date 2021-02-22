package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class EventController {
    @GetMapping(value="/event")
    public String renderEvent() {
        return "event-form.html";
    }

    @PostMapping(value = "/create-event")
    public String createEvent(@RequestParam("title") String title, @RequestParam("contact") Integer contact) {
        // Simulationg creation of a new event
        System.out.println(title);
        System.out.println(contact);

        return "redirect:/event-success";
    }

    @GetMapping(value="/event-success")
    @ResponseBody
    public String showEventSuccess() {
        return "Success";
    }
}
