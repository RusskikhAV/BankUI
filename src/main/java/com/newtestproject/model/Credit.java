package com.newtestproject.model;

import lombok.Data;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

@Data
public class Credit {
    private int creditId;

    @Min(value = 1, message = "min interestRate")
    @Max(value = 35, message = "max interestRate")
    private double interestRate;

    @Min(value = 1, message = "min creditTerm")
    @Max(value = 35, message = "max creditTerm")
    private int creditTerm;

    private int clientId;

    public Credit() {

    }

    public Credit(int creditId, double interestRate, int creditTerm, int clientId) {
        this.creditId = creditId;
        this.interestRate = interestRate;
        this.creditTerm = creditTerm;
        this.clientId = clientId;
    }


}
