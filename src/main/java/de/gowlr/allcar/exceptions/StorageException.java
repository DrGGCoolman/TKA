package de.gowlr.allcar.exceptions;

// Interpretiert Fehlermeldung vom Storage-Service.
public class StorageException extends RuntimeException {

    public StorageException(String message) {
        super(message);
    }

    public StorageException(String message, Throwable cause) {
        super(message, cause);
    }
}