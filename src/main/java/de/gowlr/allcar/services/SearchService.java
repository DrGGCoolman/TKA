package de.gowlr.allcar.services;

import java.util.ArrayList;
import java.util.LinkedHashSet;

import org.springframework.beans.factory.annotation.Autowired;

import de.gowlr.allcar.entities.*;
import de.gowlr.allcar.repositories.*;

/**
 * SearchService Wird mit einem Suchwort aufgerufen, welches Zerlegt wird.
 * Anhand der Entstehenden Teilworte wird mittels des Repositories in der
 * Datenbank nach passenden Fahrzeugen gesucht. Diese werden als Liste
 * zurückgegeben.
 */
public class SearchService {
    @Autowired
    private ProductTypeRepository ProductTypeRepository;

    public LinkedHashSet<EcProductTypeEntity> search(String searchfor) {
        String[] searchWords = null;
        ArrayList<EcProductTypeEntity> searchResultsWithDupes = new ArrayList<EcProductTypeEntity>();

        if (searchfor != null && !searchfor.isEmpty()) {

            searchWords = searchfor.split(" ");

            for (String word : searchWords) {
                if (ProductTypeRepository.findByEcBrandByBrandIdBrandTitleContainingIgnoreCase(word) != null) {
                    searchResultsWithDupes
                            .addAll(ProductTypeRepository.findByEcBrandByBrandIdBrandTitleContainingIgnoreCase(word));
                }
                if (ProductTypeRepository.findByModelContainingIgnoreCase(word) != null) {
                    searchResultsWithDupes.addAll(ProductTypeRepository.findByModelContainingIgnoreCase(word));
                }
                if (ProductTypeRepository.findByVariantContainingIgnoreCase(word) != null) {
                    searchResultsWithDupes.addAll(ProductTypeRepository.findByVariantContainingIgnoreCase(word));
                }
            }
        }
        return new LinkedHashSet<EcProductTypeEntity>(searchResultsWithDupes);
    }
}