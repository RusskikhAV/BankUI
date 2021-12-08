package com.newtestproject.controller;

import com.newtestproject.DAO.BankDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/banks")
public class BankController {

    private final BankDAO bankDAO;

    @Autowired
    public BankController(BankDAO bankDAO) {
        this.bankDAO = bankDAO;
    }

    @GetMapping()
    public String bank() {
        return "banks/index";
    }

    @GetMapping("/credits")
    public String showCredits(Model model) {
        model.addAttribute("credits", bankDAO.showCredits());
        return "banks/credits";
    }

    @GetMapping("/clients")
    public String showClients(Model model) {
        model.addAttribute("clients", bankDAO.showClients());
        return "banks/clients";
    }
}