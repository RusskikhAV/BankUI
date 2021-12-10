package com.newtestproject.model;

import lombok.Data;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Data
public class Credit {
    private int creditId;

    @Min(value = 1, message = "Interest rate cannot be less than \"1%\"")
    @Max(value = 35, message = "Interest rate cannot be more than \"35%\"")
    @NotNull(message = "Interest rate cannot be empty")
    private double interestRate;

    @Min(value = 1, message = "Credit Term cannot be less than \"1\" month")
    @Max(value = 120, message = "Credit Term cannot be more than \"120\" month")
    @NotNull(message = "Credit Term cannot be empty")
    private int creditTerm;

    @Min(value = 50_000, message = "Amount Credit cannot be less than \"50 000\"")
    @Max(value = 10_000_000, message = "Amount Credit cannot be more than \"10 000 000\"")
    @NotNull(message = "Amount Credit cannot be empty")
    private int amountCredit;

    @NotNull(message = "To apply for a loan, you need a client number")
    private int clientId;

    public Credit() {

    }

    public Credit(double interestRate, int creditTerm, int amountCredit, int clientId) {
        this.interestRate = interestRate;
        this.creditTerm = creditTerm;
        this.amountCredit = amountCredit;
        this.clientId = clientId;
    }

    public Credit(int creditId, double interestRate, int creditTerm, int amountCredit, int clientId) {
        this.creditId = creditId;
        this.interestRate = interestRate;
        this.creditTerm = creditTerm;
        this.amountCredit = amountCredit;
        this.clientId = clientId;
    }


}