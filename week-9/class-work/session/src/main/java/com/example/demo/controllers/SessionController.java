package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
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
    public String renderHome(HttpServletRequest request) {
        HttpSession session = request.getSession();

        int randomNum = ThreadLocalRandom.current().nextInt(1, 100 + 1);
        session.setAttribute("username", "peter" + randomNum);
        session.setAttribute("integer", 1);
        ArrayList<String> usernames = new ArrayList<>();
        usernames.add("asd");
        usernames.add("helle");
        session.setAttribute("usernames", usernames);

        return "Username assigned in session";
    }

    @GetMapping("/get-session-data")
    public String renderGetSessionData(HttpServletRequest request) {
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        Integer integer = (Integer) session.getAttribute("integer");
        ArrayList usernames = (ArrayList) session.getAttribute("usernames");

        return "get-session-data.html";
    }

    @GetMapping("/invalidate-session")
    @ResponseBody
    public String invalidateSession(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();

        return "Session invalidated";
    }
}
