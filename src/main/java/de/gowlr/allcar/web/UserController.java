package de.gowlr.allcar.web;

import de.gowlr.allcar.entities.*;
import de.gowlr.allcar.repositories.*;
import de.gowlr.allcar.services.*;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import javax.validation.Valid;

import org.springframework.web.bind.annotation.PathVariable;

@RequestMapping("/users/")
@RestController
public class UserController {

    private final UserRepository UserRepository;
    private final UserService UserService;

    @Autowired
    public UserController(UserRepository userRepository, UserService userService) {
        this.UserRepository = userRepository;
        this.UserService = userService;
    }

    @GetMapping
    public String userIndex(Model model) {
        model.addAttribute("users", UserService.findAll());
        return "users/index";
    }

    @GetMapping("/login")
    public String login() {

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return auth instanceof AnonymousAuthenticationToken ? "login" : "redirect:/index";
    }

    @PostMapping("/lergin")
    public String loginPost(@RequestParam(value = "username", required = true) String username) {
        EcUserEntity user = UserRepository.findByUsername(username);
        return user.toString();
    }

    @GetMapping("register")
    public String showSignUpForm(EcUserEntity user) {
        return "add-user";
    }

    @PostMapping("add")
    public String addEcUserEntity(@Valid EcUserEntity user, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "add-user";
        }

        UserRepository.save(user);
        return "redirect:list";
    }

}