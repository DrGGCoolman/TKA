package de.gowlr.allcar.web;

/**
 * ProductTypeController
 */

import javax.validation.Valid;
import de.gowlr.allcar.entities.*;
import de.gowlr.allcar.repositories.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/products/")
public class ProductTypeController {

    private final ProductTypeRepository ProductTypeRepository;

    @Autowired
    public ProductTypeController(ProductTypeRepository ProductTypeRepository) {
        this.ProductTypeRepository = ProductTypeRepository;
    }

    @GetMapping("signup")
    public String showSignUpForm(EcProductTypeEntity ProductType) {
        return "products/add-product-type";
    }

    @GetMapping("list")
    public String showUpdateForm(Model model) {
        model.addAttribute("ProductTypes", ProductTypeRepository.findAll());
        return "products/index";
    }

    @PostMapping("add")
    public String addProductType(@Valid EcProductTypeEntity ProductType, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "add-ProductType";
        }

        ProductTypeRepository.save(ProductType);
        return "redirect:list";
    }

    @GetMapping("edit/{id}")
    public String showUpdateForm(@PathVariable("id") long id, Model model) {
        EcProductTypeEntity ProductType = ProductTypeRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid ProductType Id:" + id));
        model.addAttribute("ProductType", ProductType);
        return "update-ProductType";
    }

    @PostMapping("update/{id}")
    public String updateProductType(@PathVariable("id") Integer id, @Valid EcProductTypeEntity ProductType, BindingResult result,
            Model model) {
        if (result.hasErrors()) {
            ProductType.setId(id);
            return "update-ProductType";
        }

        ProductTypeRepository.save(ProductType);
        model.addAttribute("ProductTypes", ProductTypeRepository.findAll());
        return "index";
    }

    @GetMapping("delete/{id}")
    public String deleteProductType(@PathVariable("id") long id, Model model) {
        EcProductTypeEntity ProductType = ProductTypeRepository.findById(id)
            .orElseThrow(() -> new IllegalArgumentException("Invalid ProductType Id:" + id));
        ProductTypeRepository.delete(ProductType);
        model.addAttribute("ProductTypes", ProductTypeRepository.findAll());
        return "index";
    }
}
