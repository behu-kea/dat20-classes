package com.example.demo.controllers;

import com.example.demo.models.Event;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;

@Controller
public class EventsController {
    private ArrayList<String> events;

    @GetMapping("/create-event")
    public String renderEventForm() {
        return "event-form.html";
    }

    @PostMapping("/create-new-event")
    public String createNewEvent(@RequestParam("title") String title, @RequestParam("date") String date) {
        // simulating new event creation
        Event event = new Event(title, date);
        events.add(event.title);

        return "redirect:/succes";
    }

    @GetMapping("/succes")
    @ResponseBody
    public String eventCreationSuccess() {
        return "Success!! 🎉";
    }
}
