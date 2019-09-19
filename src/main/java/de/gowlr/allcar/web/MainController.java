package de.gowlr.allcar.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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

    @RequestMapping("/admin/")
    public String adminIndex() {
        return "admin/index";
    }

    @RequestMapping("/admin/createProduct")
    public String CreateProduct() {
        return "admin/createProduct";
    }

    @RequestMapping("/products/product-detail")
    public String productDetail() {
        return "products/product-detail";
    }

    @RequestMapping("/admin/products")
    public String adminProducts() {
        return "admin/Products";
    }

    @RequestMapping("/admin/product-create-edit")
    public String adminproductCreateEdit() {
        return "admin/product-create-edit";
    }

}