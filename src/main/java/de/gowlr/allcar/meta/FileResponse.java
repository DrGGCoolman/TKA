package de.gowlr.allcar.meta;

// Definiert die Antwort des Servers auf erfolgreich gespeicherter Dateien.
import lombok.Getter;
import lombok.Setter;

public class FileResponse {
    @Getter
    @Setter
    private String name;
    @Getter
    @Setter
    private String uri;
    @Getter
    @Setter
    private String type;
    @Getter
    @Setter
    private long size;

    public FileResponse(String name, String uri, String type, long size) {
        this.name = name;
        this.uri = uri;
        this.type = type;
        this.size = size;
    }

    
}