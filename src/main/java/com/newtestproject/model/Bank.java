package com.newtestproject.model;

import java.util.List;

public class Bank {

    private List<Client> clients;
    private List<Credit> credits;

    public Bank(List<Client> clients, List<Credit> credits) {
        this.clients = clients;
        this.credits = credits;
    }
}
