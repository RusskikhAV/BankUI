package com.newtestproject.model;

import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;

@Getter
@Setter
public class Credit {
    private int id;

    @NotEmpty
    @Min(value = 10_000, message = "Сумма кредита не может быть меньше {min}")
    @Max(value = 10_000_000, message = "Сумма кредита не может быть больше {max}")
    private int amountCredit;

    @NotEmpty
    @Min(value = 1, message = "Процентная ставка не может быть меньше {min}")
    @Max(value = 100, message = "Процентная ставка не может быть больше {max}")
    private double interestRate;

    @NotEmpty
    @Min(value = 1, message = "Срок кредитования не может быть меньше {min}")
    @Max(value = 240, message = "Срок кредитования не может быть больше {max}")
    private int creditTerm;

    public Credit() {

    }

    public Credit(int id, int amountCredit, double interestRate, int creditTerm) {
        this.id = id;
        this.amountCredit = amountCredit;
        this.interestRate = interestRate;
        this.creditTerm = creditTerm;
    }
}
