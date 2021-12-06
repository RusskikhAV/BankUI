package com.newtestproject.model;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;

public class CreditOffer {
    private int id;
    private Client client;
    private Credit credit;

    @NotEmpty
    @Min(value = 10_000, message = "Сумма кредита не может быть меньше {min}")
    @Max(value = 10_000_000, message = "Сумма кредита не может быть больше {max}")
    private int amountCredit;

    public CreditOffer() {
    }

    public CreditOffer(int id, Client client, Credit credit, int amountCredit) {
        this.id = id;
        this.client = client;
        this.credit = credit;
        this.amountCredit = amountCredit;
    }
}
