package de.gowlr.allcar.product;



import lombok.Getter;
import lombok.Setter;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import java.math.BigDecimal;

@Entity
public class ProductEntry {

    @Id
    @GeneratedValue
    @Getter
    private Long id;

    @ManyToOne(optional = false)
    @Getter
    @Setter
    private Product Product;

    @Basic(optional = false)
    @Getter
    @Setter
    private BigDecimal amount;

    @Basic(optional = false)
    @Getter
    @Setter
    private String creditor;

    @Basic(optional = false)
    @Getter
    @Setter
    private String debitors;

    public ProductEntry() {
    }

    public ProductEntry(BigDecimal amount, String creditor, String debitors) {
        this.amount = amount;
        this.creditor = creditor;
        this.debitors = debitors;
    }
}
