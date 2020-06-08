package de.gowlr.allcar.web;

/**
 * ProductTypeController
 */

import de.gowlr.allcar.entities.*;
import de.gowlr.allcar.repositories.*;
import de.gowlr.allcar.services.*;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

//Behandelt alle Anfragen bzgl. der ProductTypes. Alle routen werden unter /products/* gruppiert.
@Controller
@RequestMapping("/products/")
public class ProductTypeController {

    @Autowired
    private ProductTypeRepository ProductTypeRepository;
    @Autowired
    private FilterService FilterService;
    @Autowired
    private CarFilterModel CarFilter;
    @Autowired
    private SearchService SearchService;
    @Autowired
    private SearchwordRepository SearchwordRepository;
    @Autowired
    private BrandRepository BrandRepository;
    @Autowired
    private CategoryRepository CatRepository;

    @ModelAttribute
    public void setDefaultAttributes(Model model) {
        this.CarFilter.init();
        model.addAttribute("carFilter", CarFilter);
    }

    // Gibt Daten zu einem bestimmten ProductType zurück. Benötigt dazu beim Aufruf
    // eine Id.
    // Die Daten stammen aus der Datenbank und werden über das entsprechen
    // Repository bezogen.
    @GetMapping("{id}")
    public String showProductDetail(@PathVariable("id") Integer id, Model model) {
        EcProductTypeEntity ProductType = ProductTypeRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid ProductType Id:" + id));
        model.addAttribute("product", ProductType);
        return "products/product-detail";
    }

    // Aufruf der Produkt-Anlegen ansicht.
    @GetMapping("create")
    public String showCreateFrom(Model model) {
        model.addAttribute("cats", CatRepository.findAll());
        model.addAttribute("brands", BrandRepository.findAll());
        model.addAttribute("productType", new EcProductTypeEntity());
        return "admin/create-product";
    }

    // Behandelt das Anlegen eines Produktes. Validiert das Produkt-Anlegen
    // formular.
    @PostMapping("add")
    public String addProductType(@Valid EcProductTypeEntity productType, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "admin/create-product";
        }
        EcProductTypeEntity savedProduct = ProductTypeRepository.save(productType);
        return "redirect:edit/" + savedProduct.getId().toString();
    }

    // Aufruf der Produkt-Beaarbeiten ansicht.
    @GetMapping("edit/{id}")
    public String showUpdateForm(@PathVariable("id") Integer id, Model model) {
        EcProductTypeEntity productType = ProductTypeRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid ProductType Id:" + id));
        model.addAttribute("isUpdate", true);
        model.addAttribute("cats", CatRepository.findAll());
        model.addAttribute("brands", BrandRepository.findAll());
        model.addAttribute("productType", productType);
        return "admin/edit-product";
    }

    // Behandelt das Bearbeiten eines Produktes. Validiert das Produkt-Bearbeiten
    // formular.
    @PostMapping("update/{id}")
    public String updateProductType(@PathVariable("id") Integer id, @Valid EcProductTypeEntity productType,
            BindingResult result, Model model) {
        if (result.hasErrors()) {
            productType.setId(id);
            return "redirect:" + id.toString();
        }

        ProductTypeRepository.save(productType);

        return "redirect:/products/" + id.toString();
    }

    // Behandelt das Löschen eines Produktes.
    @GetMapping("delete/{id}")
    public String deleteProductType(@PathVariable("id") int id, Model model) {
        EcProductTypeEntity productType = ProductTypeRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid ProductType Id:" + id));
        ProductTypeRepository.delete(productType);
        model.addAttribute("ProductTypes", ProductTypeRepository.findAll());
        return "redirect:/products/list";
    }

    // ruft den SearchService auf und übergibt das Suchwort.
    // Speichert jede Suchanfrage, welche von Registrierten Nutzern getätigt wird in
    // der Datenbank.
    @GetMapping("search")
    public String searchByKeyword(@RequestParam(value = "searchfor", required = false) String searchfor, Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();

        if (!(auth instanceof AnonymousAuthenticationToken)) {
            EcUserEntity currUser = EcUserEntity.getCurrentUser();

            EcSearchWordsEntity searchWordToStore = new EcSearchWordsEntity();
            searchWordToStore.setEcUserByUserId(currUser);
            searchWordToStore.setSearchWords(searchfor);
            SearchwordRepository.save(searchWordToStore);
        }
        model.addAttribute("carFilter", CarFilter);
        model.addAttribute("productTypes", SearchService.search(searchfor));

        return "products/index";
    }

    // Ansicht der Gefilterten Inhalte
    @GetMapping("showFilter")
    public String showFilteredProducts(Model model) {

        return "products/index";
    }

    // Ruft FilterService auf. Als Übergabeparameter dient das gefüllte
    // CarFilterModel
    @PostMapping("filter")
    public String loginValidate(CarFilterModel carFilter, BindingResult result, Model model, RedirectAttributes red) {

        red.addFlashAttribute("productTypes", FilterService.filter(carFilter));
        red.addFlashAttribute("carFilter", CarFilter);

        return "redirect:showFilter";
    }

    // Gibt Listenansicht der Farhzeuge zurück
    @GetMapping("list")
    public String showAllProducts(Model model) {
        model.addAttribute("productTypes", ProductTypeRepository.findAll());
        return "products/index";
    }

    // Gibt Categorienansicht der Fahrzeuge zurück
    @GetMapping("category")
    public String showCategory(@RequestParam(value = "cat", required = true) String cat, Model model) {

        model.addAttribute("productTypes", ProductTypeRepository.findByEcCategoryByCategoryIdTitleIgnoreCase(cat));
        return "products/index";
    }

}
