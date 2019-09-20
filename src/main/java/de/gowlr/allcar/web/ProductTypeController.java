package de.gowlr.allcar.web;

/**
 * ProductTypeController
 */

import de.gowlr.allcar.entities.*;
import de.gowlr.allcar.repositories.*;

import java.util.ArrayList;
import java.util.LinkedHashSet;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/products/")
public class ProductTypeController {

    private final ProductTypeRepository ProductTypeRepository;
    private CarFilterModel CarFilter;

    @Autowired
    public ProductTypeController(ProductTypeRepository ProductTypeRepository, CarFilterModel carFilterModel) {
        this.ProductTypeRepository = ProductTypeRepository;
        this.CarFilter = carFilterModel;
    }

    @GetMapping("{id}")
    public String showProductDetail(@PathVariable("id") Integer id, Model model) {
        EcProductTypeEntity ProductType = ProductTypeRepository.findById(id);
        model.addAttribute("product", ProductType);
        return "products/product-detail";
    }

    @GetMapping("create")
    public String showCreateFrom(Model model) {
        model.addAttribute("product", new EcProductTypeEntity());
        return "products/product-create-edit";
    }

    @GetMapping("list")
    public String showUpdateForm(Model model) {
        // public String showUpdateForm(CarFilter CarFilter, Model model) {
        model.addAttribute("productTypes", ProductTypeRepository.findAll());
        model.addAttribute("carFilter", CarFilter);
        return "products/index";
    }

    @GetMapping("search")
    public String searchByKeyword(@RequestParam(value = "searchfor", required = false) String searchfor, Model model) {
        String[] searchWords = null;
        ArrayList<EcProductTypeEntity> searchResultsWithDupes = new ArrayList<EcProductTypeEntity>();

        if (searchfor != null && !searchfor.isEmpty()) {

            searchWords = searchfor.split(" ");

            // TODO: speichern in DB von searchfor

            for (String word : searchWords) {
                if (ProductTypeRepository.findByEcBrandByBrandIdBrandTitleContainingIgnoreCase(word) != null) {
                    searchResultsWithDupes
                            .addAll(ProductTypeRepository.findByEcBrandByBrandIdBrandTitleContainingIgnoreCase(word));
                }
                if (ProductTypeRepository.findByModelContainingIgnoreCase(word) != null) {
                    searchResultsWithDupes.addAll(ProductTypeRepository.findByModelContainingIgnoreCase(word));
                }
                if (ProductTypeRepository.findByVariantContainingIgnoreCase(word) != null) {
                    searchResultsWithDupes.addAll(ProductTypeRepository.findByVariantContainingIgnoreCase(word));
                }
            }
        }
        LinkedHashSet<EcProductTypeEntity> searchResults = new LinkedHashSet<>(searchResultsWithDupes);

        model.addAttribute("productTypes", searchResults);

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

    @PostMapping("filter")
    public String filterAllProducts(Model model) {
        String[] searchWords = null;
        ArrayList<EcProductTypeEntity> filteredResultsWithDupes = new ArrayList<EcProductTypeEntity>();

        LinkedHashSet<EcProductTypeEntity> filteredResults = new LinkedHashSet<>(filteredResultsWithDupes);

        model.addAttribute("productTypes", filteredResults);

        return "products/index";
    }

}
