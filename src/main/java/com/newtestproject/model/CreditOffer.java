package com.newtestproject.model;

import lombok.Data;

import javax.validation.constraints.FutureOrPresent;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Positive;
import java.time.LocalDate;

@Data
public class CreditOffer {
    private int idChek;

    @NotNull(message = "\"Date\" cannot be empty")
    @FutureOrPresent(message = "\"Date\" must be future or present")
    private LocalDate date;

    @NotNull(message = "\"Payment\" cannot be empty")
    @Positive(message = "\"Payment\" cannot be negative")
    private double payment;

    @NotNull(message = "\"Percent\" cannot be empty")
    @Positive(message = "\"Percent\" cannot be negative")
    private double percent;

    @NotNull(message = "\"Body Credit\" cannot be empty")
    @Positive(message = "\"Body Credit\" cannot be negative")
    private double bodyCredit;

    @NotNull(message = "\"Balance\" cannot be empty")
    @Positive(message = "\"Balance\"cannot be negative")
    private double balance;

    private int clientId;
    private int creditId;

    public CreditOffer() {
    }

    public CreditOffer(int idChek, LocalDate date, double payment, double percent, double bodyCredit, double balance, int clientId, int creditId) {
        this.idChek = idChek;
        this.date = date;
        this.payment = payment;
        this.percent = percent;
        this.bodyCredit = bodyCredit;
        this.balance = balance;
        this.clientId = clientId;
        this.creditId = creditId;
    }
}