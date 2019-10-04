package de.gowlr.allcar.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import de.gowlr.allcar.repositories.ProductTypeRepository;

//Enthälten allgemeine Routen, die keinem Controller direkt zuzuordnen sind.
@Controller
public class MainController {

    @Autowired
    private ProductTypeRepository productTypeRepository;

    @RequestMapping("/")
    public String root() {
        return "redirect:/index";
    }

    @RequestMapping("/index")
    public String index(Model model) {
        model.addAttribute("highlights", productTypeRepository.findByHighlighted(true));
        return "index";
    }

    @RequestMapping("/impressum")
    public String Impressum() {
        return "impressum";
    }

    @RequestMapping("/datenschutz")
    public String Datenschutz() {
        return "datenschutz";
    }

}