package de.gowlr.allcar.product;

import lombok.Getter;
import lombok.Setter;
import org.springframework.util.StringUtils;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

@Entity
public class Product {

    @Id
    @GeneratedValue
    @Getter
    private Long id;

    @Basic(optional = false)
    @Getter
    @Setter
    private String name;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true, mappedBy = "Product")
    @OrderBy
    private List<ProductEntry> entries;

    public List<ProductEntry> getEntries() {
        if (entries == null) {
            entries = new ArrayList<>();
        }
        return entries;
    }

    public Map<String, BigDecimal> computeBalance() {
        // map of the balances sorted by name
        Map<String, BigDecimal> balance = new TreeMap<>();
        for (ProductEntry entry : getEntries()) {
            String[] debitors = StringUtils.tokenizeToStringArray(entry.getDebitors(), ",");

            if (debitors.length == 0) {
                // ignore entries without debitors
                continue;
            }

            addToBalance(balance, entry.getCreditor(), entry.getAmount());
            BigDecimal debitorAmount = entry.getAmount()
                    .divide(new BigDecimal(debitors.length), 4, RoundingMode.HALF_UP).negate();
            for (String debitor : debitors) {
                addToBalance(balance, debitor, debitorAmount);
            }
        }

        // round the result to 2 decimals
        for (Map.Entry<String, BigDecimal> mapEntry : balance.entrySet()) {
            mapEntry.setValue(mapEntry.getValue().setScale(2, RoundingMode.HALF_UP));
        }

        return balance;
    }

    private void addToBalance(Map<String, BigDecimal> balance, String user, BigDecimal amount) {
        BigDecimal currentAmount = balance.getOrDefault(user, BigDecimal.ZERO);
        balance.put(user, currentAmount.add(amount));
    }
}
