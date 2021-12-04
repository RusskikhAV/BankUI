package com.newtestproject.model;

import com.newtestproject.DAO.BankDAO;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class Bank {
    BankDAO bankDAO;

    private List<Client> clients;
    private List<Credit> credits;

    public Bank(){

    }

    public Bank(List<Client> clients, List<Credit> credits) {
        this.clients = clients;
        this.credits = credits;
    }
}
