package de.gowlr.allcar.services;

import org.springframework.web.multipart.MultipartFile;

public interface StorageService {

    void init();

    String store(MultipartFile file, Integer id);

}