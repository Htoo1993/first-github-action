package com.lazht.githubaction.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Author: htoo
 * Project: first-github-action
 * Created: 24/04/2026
 */

@RestController
public class WelcomeController {
    @GetMapping("/welcome")
    public String welcome(){
        return "Hello my first github action";
    }
}
