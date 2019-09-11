package de.gowlr.allcar.web;

/**
 * ProductTypeController
 */

import de.gowlr.allcar.entities.*;
import de.gowlr.allcar.repositories.*;

import javax.validation.Valid;
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

    @GetMapping("create")
    public String showCreateFrom(Model model) {
       model.addAttribute("productType", new EcProductTypeEntity());
        return "products/product-create-edit";
    }

    @GetMapping("list")
    public String showUpdateForm(Model model) {
        model.addAttribute("productTypes", ProductTypeRepository.findAll());
        return "products/index";
    }

    @PostMapping("add")
    public String addProductType(@Valid EcProductTypeEntity productType, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "products/product-create-edit";
        }

        ProductTypeRepository.save(productType);
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
    public String updateProductType(@PathVariable("id") Integer id, @Valid EcProductTypeEntity productType,
            BindingResult result, Model model) {
        if (result.hasErrors()) {
            productType.setId(id);
            return "update-ProductType";
        }

        ProductTypeRepository.save(productType);
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
