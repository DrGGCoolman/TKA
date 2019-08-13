package de.gowlr.allcar.product;



import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;
import java.math.BigDecimal;
import java.util.Collection;

@Service
@Transactional
public class ProductService {

    private final ProductRepository repository;

    public ProductService(ProductRepository repository) {
        this.repository = repository;
    }

    @PostConstruct
    void init() {
        // add example Product for testing
        Product Product = new Product();
        Product.setName("Sommerparty");
        addProductEntry(Product, new ProductEntry(new BigDecimal(15), "Anne", "Anne, Benedict, Charlotte"));
        addProductEntry(Product, new ProductEntry(new BigDecimal(16), "Charlotte", "Anne, Charlotte"));

        repository.save(Product);
    }

    public Product createProduct(String name) {
        Product Product = new Product();
        Product.setName(name);
        return repository.save(Product);
    }

    public Product getProduct(Long id) {
        return repository.getOne(id);
    }

    public void addProductEntry(Product Product, ProductEntry entry) {
        entry.setProduct(Product);
        Product.getEntries().add(entry);
    }

    public Collection<Product> getAll() {
        return repository.findAll();
    }

    public void delete(Long id) {
        repository.deleteById(id);
    }
}
