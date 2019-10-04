package de.gowlr.allcar.config;

import org.springframework.boot.context.properties.ConfigurationProperties;

//Ermöglicht externe Konfiguration des Uploadpfades über die application.properties
@ConfigurationProperties(prefix = "storage")
public class StorageProperties {

    private String location;

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

}