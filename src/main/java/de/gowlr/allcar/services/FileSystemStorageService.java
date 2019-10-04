package de.gowlr.allcar.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import de.gowlr.allcar.config.StorageProperties;
import de.gowlr.allcar.exceptions.StorageException;

import javax.annotation.PostConstruct;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

@Service
public class FileSystemStorageService implements StorageService {

    private final Path rootLocation;

    @Autowired
    public FileSystemStorageService(StorageProperties properties) {
        this.rootLocation = Paths.get(properties.getLocation());
    }

    @Override
    @PostConstruct
    public void init() {
        try {
            Files.createDirectories(rootLocation);
        } catch (IOException e) {
            throw new StorageException("Storage konnte nicht initialisiert werden: ", e);
        }
    }

    // Kümmert sich um das Speichern von Dateien
    @Override
    public String store(MultipartFile file, Integer id) {

        String filename = StringUtils.cleanPath(file.getOriginalFilename());
        Path subFolder = Path.of(rootLocation.toString(), id.toString());
        // Sicherstellen, dass solch ein Ordner nicht doppelt angelegt wird
        try {
            Files.createDirectories(subFolder);
        } catch (IOException e) {
            throw new StorageException("Storage konnte nicht initialisiert werden: ", e);
        }

        try {
            if (file.isEmpty()) {
                throw new StorageException("Konnte leere Datei nicht speichern: " + filename);
            }
            if (filename.contains("..")) {
                // Security, um Zugriff aufs ausserhalb des Projektverzeichnisses liegende
                // Dateisystem zu verhindern
                throw new StorageException(
                        "Datei konnte aufgrund von relativem Pfad ausserhalb der aktuellen Directory nicht gespeichert werden:  "
                                + filename);
            }
            try (InputStream inputStream = file.getInputStream()) {
                Files.copy(inputStream, this.rootLocation.resolve(id.toString() + "/" + filename),
                        StandardCopyOption.REPLACE_EXISTING);
            }
        } catch (IOException e) {
            throw new StorageException("Konnte nicht gespeichert werden: " + filename, e);
        }

        return filename;
    }

}