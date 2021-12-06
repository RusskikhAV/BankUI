package com.newtestproject.model;

import java.util.List;

public class Bank {

    private final List<Client> clients;
    private final List<Credit> credits;

    public Bank(List<Client> clients, List<Credit> credits) {
        this.clients = clients;
        this.credits = credits;
    }
}
