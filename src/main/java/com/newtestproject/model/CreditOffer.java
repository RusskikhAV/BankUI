package com.newtestproject.model;

import lombok.Data;

import java.time.LocalDate;

@Data
public class CreditOffer {
    private int idChek;
    private LocalDate date;
    private double payment;
    private double percent;
    private double bodyCredit;
    private double balance;
    private int clientId;

    public CreditOffer() {
    }

    public CreditOffer(int idChek, LocalDate date, double payment, double percent, double bodyCredit, double balance, int clientId) {
        this.idChek = idChek;
        this.date = date;
        this.payment = payment;
        this.percent = percent;
        this.bodyCredit = bodyCredit;
        this.balance = balance;
        this.clientId = clientId;
    }
}
