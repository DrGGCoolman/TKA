package de.gowlr.allcar.web;

import de.gowlr.allcar.entities.EcPicturesEntity;
import de.gowlr.allcar.entities.EcProductTypeEntity;
import de.gowlr.allcar.repositories.PictureRepository;
import de.gowlr.allcar.repositories.ProductTypeRepository;
import de.gowlr.allcar.services.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;

//Behandelt Anfragen bzgl. des Dateiuploads
@Controller
public class FileController {

    @Autowired
    private ProductTypeRepository productTypeRepository;
    @Autowired
    private PictureRepository pictureRepository;

    private StorageService storageService;

    public FileController(StorageService storageService) {
        this.storageService = storageService;
    }

    // konkrete Behandlung des POST-Requests zum Dateiupload
    // benötigt eine Datei im Postbody und eine Id, über welche das Bild dem
    // Fahrzeug zugeordnet wird.
    @PostMapping("/upload-file/{id}")
    public String uploadFile(@RequestParam("file") MultipartFile file, @PathVariable("id") Integer id) {
        EcProductTypeEntity productToUpdate = productTypeRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid ProductType Id:" + id));
        ;
        EcPicturesEntity pictureToStore = new EcPicturesEntity();
        pictureToStore.setEcProductTypeByProductId(productToUpdate);
        pictureToStore.setFilePath("/uploads" + "/" + id.toString() + "/" + storageService.store(file, id));
        pictureToStore.setTitle(file.getOriginalFilename());

        List<EcPicturesEntity> picturesToStore = new ArrayList<>();

        picturesToStore.add(pictureToStore);

        pictureRepository.save(pictureToStore);

        productToUpdate.setEcPicturesById(picturesToStore);

        productTypeRepository.save(productToUpdate);

        return "redirect:/products/edit/" + id.toString();

    }

}