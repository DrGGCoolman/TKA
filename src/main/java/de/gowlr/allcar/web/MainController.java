package de.gowlr.allcar.web;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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

    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping("/user/index")
    public String userIndex() {
        return "user/index";
    }

    @RequestMapping("/admin/")
    public String adminIndex() {
        return "admin/index";
    }

    @RequestMapping("/admin/createProduct")
    public String CreateProduct() {
        return "admin/createProduct";
    }

    @RequestMapping("/login")
    public String login() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication(); 
        return auth instanceof AnonymousAuthenticationToken ? "login" : "redirect:/";
        //return "login";
    }

    @RequestMapping("/products/product-detail")
    public String productDetail() {
        return "products/product-detail";
    }

    @RequestMapping("/admin/products")
    public String adminProducts() {
        return "admin/Products";
    }

    @RequestMapping("/login-error")
    public String loginError(Model model) {
        model.addAttribute("loginError", true);
        return "login";
    }

    @RequestMapping("/register")
    public String register() {
        return "register";
    }

    @RequestMapping("/admin/product-create-edit")
    public String adminproductCreateEdit() {
        return "admin/product-create-edit";
    }

    @RequestMapping("/user/add-user")
    public String userAddUser() {
        return "user/add-user";
    }

}