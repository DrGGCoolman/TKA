package de.gowlr.allcar.services;

import org.springframework.web.multipart.MultipartFile;

// Interface definiert wie der Storage-Service implementiert sein muss, um der Applikation alle notwendigen Funktionalitäten bereitzustellen.
public interface StorageService {

    void init();

    String store(MultipartFile file, Integer id);

}