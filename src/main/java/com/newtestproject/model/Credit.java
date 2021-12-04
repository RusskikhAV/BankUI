package com.newtestproject.model;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;

@Data
public class Credit {
    private int creditId;
    private double interestRate;
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
