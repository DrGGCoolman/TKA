package de.gowlr.allcar.web;

import de.gowlr.allcar.services.*;
import lombok.AllArgsConstructor;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@AllArgsConstructor
@Controller
public class UserController {

    private final UserService userService;

    @GetMapping
    public String userIndex(Model model) {
        model.addAttribute("users", userService.findAll());
        return "users/index";
    }

    @GetMapping("/users/login")
    public String login() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return auth instanceof AnonymousAuthenticationToken ? "login" : "redirect:/index";
    }
}