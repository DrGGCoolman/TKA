package de.gowlr.allcar.web;

import de.gowlr.allcar.product.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Products")
public class ProductController {

    private final ProductService ProductService;

    public ProductController(ProductService ProductService) {
        this.ProductService = ProductService;
    }

    @GetMapping
    public String index(Model model) {
        model.addAttribute("Products", ProductService.getAll());
        return "Products/index";
    }

    @PostMapping
    public String create(String name) {
        Product Product = ProductService.createProduct(name);
        return "redirect:/Products/" + Product.getId();
    }

    @GetMapping(path = "/{id}")
    public String show(@PathVariable("id") Long id, Model model) {
        model.addAttribute("Product", ProductService.getProduct(id));
        return "Products/show";
    }

    @PostMapping(path = "/{id}")
    public String addEntry(@PathVariable("id") Long id, ProductEntry entry) {
        Product Product = ProductService.getProduct(id);
        ProductService.addProductEntry(Product, entry);
        return "redirect:/Products/" + id;
    }

    @PostMapping(path = "/{id}/delete")
    public String delete(@PathVariable("id") Long id) {
        ProductService.delete(id);
        return "redirect:/Products/";
    }
}
