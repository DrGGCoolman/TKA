package de.gowlr.allcar.web;

import de.gowlr.allcar.entities.EcPicturesEntity;
import de.gowlr.allcar.entities.EcProductTypeEntity;
import de.gowlr.allcar.meta.FileResponse;
import de.gowlr.allcar.repositories.PictureRepository;
import de.gowlr.allcar.repositories.ProductTypeRepository;
import de.gowlr.allcar.services.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

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

    // @GetMapping("/")
    // public String listAllFiles(Model model) {

    // model.addAttribute("files",
    // storageService.loadAll().map(path ->
    // ServletUriComponentsBuilder.fromCurrentContextPath()
    // .path("/download/").path(path.getFileName().toString()).toUriString())
    // .collect(Collectors.toList()));

    // return "index";
    // }

    // @GetMapping("/download/{filename:.+}")
    // @ResponseBody
    // public ResponseEntity<Resource> downloadFile(@PathVariable String filename) {

    // Resource resource = storageService.loadAsResource(filename);

    // return ResponseEntity.ok()
    // .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" +
    // resource.getFilename() + "\"")
    // .body(resource);
    // }

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

        productToUpdate.setEcPicturesById(picturesToStore);

        pictureRepository.save(pictureToStore);

        productTypeRepository.save(productToUpdate);
        // String uri =
        // ServletUriComponentsBuilder.fromCurrentContextPath().path("/download/").path(name).toUriString();

        // return new FileResponse(name, uri, file.getContentType(), file.getSize());
        return "redirect:/products/" + id.toString();

    }

    // @PostMapping("/upload-multiple-files")
    // @ResponseBody
    // public List<FileResponse> uploadMultipleFiles(@RequestParam("files")
    // MultipartFile[] files) {
    // return Arrays.stream(files).map(file ->
    // uploadFile(file)).collect(Collectors.toList());
    // }
}