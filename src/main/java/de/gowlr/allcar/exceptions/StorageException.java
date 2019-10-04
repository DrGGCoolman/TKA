package de.gowlr.allcar.exceptions;

public class StorageException extends RuntimeException {

    /**
     *
     */
    private static final long serialVersionUID = -5440979096966514955L;

    public StorageException(String message) {
        super(message);
    }

    public StorageException(String message, Throwable cause) {
        super(message, cause);
    }
}