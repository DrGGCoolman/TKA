package de.gowlr.allcar.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

// Interpretiert Fehlermeldung vom Storage-Service.
@ResponseStatus(HttpStatus.NOT_FOUND)
public class FileNotFoundException extends StorageException {

    /**
     *
     */
    private static final long serialVersionUID = 1272454118128682839L;

    public FileNotFoundException(String message) {
        super(message);
    }

    public FileNotFoundException(String message, Throwable cause) {
        super(message, cause);
    }
}