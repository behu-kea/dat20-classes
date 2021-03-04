package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.concurrent.ThreadLocalRandom;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class SessionController {
    @GetMapping("/assign-session-data")
    @ResponseBody
    public String assignSessionData(HttpServletRequest request) {
        HttpSession session = request.getSession();

        int randomNum = ThreadLocalRandom.current().nextInt(1, 100 + 1);
        String username = "benjamin" + randomNum;
        session.setAttribute("username", username);
        session.setAttribute("age", 34);
        ArrayList<String> usernames = new ArrayList<>();
        usernames.add("asd");
        usernames.add("helle");
        session.setAttribute("usernames", usernames);

        return "data saved on session";
    }

    @GetMapping("/get-session-data")
    @ResponseBody
    public String getSessionData(HttpServletRequest request) {
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");

        return username;
    }

    @GetMapping("/get-session-data-thymeleaf")
    public String getSessionData() {
        return "sessions.html";
    }

    @GetMapping("/invalidate-session-data")
    @ResponseBody
    public String invalidateSessionData(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();

        return "username";
    }

}
