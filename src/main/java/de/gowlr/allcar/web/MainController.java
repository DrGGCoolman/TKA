package de.gowlr.allcar.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Joe Grandja
 */
@Controller
public class MainController {

    @RequestMapping("/")
    public String root() {
        return "redirect:/index";
    }

    @RequestMapping("/home")
    public String home() {
        return "home2";
    }

    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping("/user/index")
    public String userIndex() {
        return "user/index";
    }

    @RequestMapping("/admin/index")
    public String adminIndex() {
        return "admin/index";
    }

    @RequestMapping("/admin/createProduct")
    public String CreateProduct() {
        return "admin/createProduct";
    }

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/product")
    public String rent() {
        return "product";
    }

    @RequestMapping("/admin/rent")
    public String adminRent() {
        return "adminRent";
    }

    @RequestMapping("/login-error")
    public String loginError(Model model) {
        model.addAttribute("loginError", true);
        return "login";
    }

}