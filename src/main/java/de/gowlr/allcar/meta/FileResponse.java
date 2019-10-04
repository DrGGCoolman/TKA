package de.gowlr.allcar.meta;

// Definiert die Antwort des Servers auf erfolgreich gespeicherter Dateien.
public class FileResponse {
    private String name;
    private String uri;
    private String type;
    private long size;

    public FileResponse(String name, String uri, String type, long size) {
        this.name = name;
        this.uri = uri;
        this.type = type;
        this.size = size;
    }

    
}