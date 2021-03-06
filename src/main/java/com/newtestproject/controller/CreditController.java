package com.newtestproject.controller;

import com.newtestproject.DAO.CreditDAO;
import com.newtestproject.DAO.CreditOfferDAO;
import com.newtestproject.model.Credit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/credits")
public class CreditController {
    private final CreditDAO creditDAO;
    private final CreditOfferDAO creditOfferDAO;

    @Autowired
    public CreditController(CreditDAO creditDAO, CreditOfferDAO creditOfferDAO) {
        this.creditDAO = creditDAO;
        this.creditOfferDAO = creditOfferDAO;
    }

    @GetMapping("/{id}")
    public String show(@PathVariable("id") int id, Model model) {
        model.addAttribute("credit", creditDAO.show(id));
        return "redirect:/banks/clients";
    }

    @GetMapping("/{clientId}/new")
    public String newCredit(@PathVariable("clientId") int clientId, @ModelAttribute("credit") Credit credit) {
        return "credits/new";
    }

    @PostMapping("/{clientId}/new")
    public String create(@PathVariable("clientId") int clientId, @ModelAttribute("credit") @Valid Credit credit, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "credits/new";
        }
        creditDAO.save(credit);
        return "redirect:/banks/credits";
    }

    @GetMapping("/{id}/edit")
    public String editCredit(@PathVariable("id") int id, Model model) {
        model.addAttribute("credit", creditDAO.show(id));
        return "credits/edit";
    }

    @PatchMapping("/{id}")
    public String update(@ModelAttribute("credit") @Valid Credit credit, BindingResult bindingResult,
                         @PathVariable("id") int id) {
        if (bindingResult.hasErrors()) {
            return "credits/edit";
        }
        creditDAO.update(id, credit);
        return "redirect:/banks/credits";
    }

    @DeleteMapping("{id}")
    public String delete(@PathVariable("id") int id) {
        creditDAO.delete(id);
        return "redirect:/banks/credits";
    }

    @GetMapping("/{id}/client_credits")
    public String allCreditsOfOneClient(@PathVariable("id") int id, Model model) {
        model.addAttribute("credits", creditDAO.allCreditsOfOneClient(id));
        return "credits/client_credits";
    }

    @GetMapping("/{clientId}/{creditId}/about_the_credit")
    public String aboutTheCredit(@ModelAttribute("oneCredit") Credit credit, @PathVariable("clientId") int clientId, @PathVariable("creditId") int creditId, Model model) {
        model.addAttribute("oneCredit", creditDAO.showOneOfTheCredit(clientId, creditId));
        return "credits/about_the_credit";
    }

    @PostMapping("/{clientId}/{creditId}/about_the_credit")
    public String createSchedule(@ModelAttribute("oneCredit") Credit credit, @PathVariable("clientId") int clientId, @PathVariable("creditId") int creditId) {
        System.out.println(credit);
        creditOfferDAO.paymentSchedule(credit, clientId, creditId);
        return "redirect:/banks/credits";
    }
}