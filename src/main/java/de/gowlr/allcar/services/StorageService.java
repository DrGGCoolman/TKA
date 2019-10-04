package de.gowlr.allcar.services;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

import java.nio.file.Path;
import java.util.stream.Stream;

// Interface definiert wie der Storage-Service implementiert sein muss, um der Applikation alle notwendigen Funktionalitäten bereitzustellen.
public interface StorageService {

    void init();

    String store(MultipartFile file, Integer id);

    Stream<Path> loadAll();

    Path load(String filename);

    Resource loadAsResource(String filename);

    void deleteAll();

}