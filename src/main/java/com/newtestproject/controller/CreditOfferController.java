package com.newtestproject.controller;

import com.newtestproject.DAO.CreditOfferDAO;
import com.newtestproject.model.Credit;
import com.newtestproject.model.CreditOffer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;


@Controller
@RequestMapping("/offer")
public class CreditOfferController {
    private final CreditOfferDAO creditOfferDAO;

    @Autowired
    public CreditOfferController(CreditOfferDAO creditOfferDAO) {
        this.creditOfferDAO = creditOfferDAO;
    }

    @GetMapping("/{id}")
    public String show(@PathVariable("id") int id, Model model) {
        model.addAttribute("offers", creditOfferDAO.allScheduleOfOneCredit(id));
        return "offer/show";
    }

    @GetMapping("/{idClient}/{idCheque}/edit")
    public String edit(@PathVariable("idClient") int idClient,@PathVariable("idCheque") int idCheque, Model model){
        model.addAttribute("creditOffer", creditOfferDAO.show(idClient,idCheque));
        return "offer/edit";
    }

    @PatchMapping("/{idClient}/{idCheque}")
    public String updateOneOfTheSchedule(@ModelAttribute("creditOffer") @Valid CreditOffer creditOffer, BindingResult bindingResult,
                                         @PathVariable("idClient") int idClient,@PathVariable("idCheque") int idCheque){
        if(bindingResult.hasErrors()) {
        return "offer/edit";
        }
       creditOfferDAO.update(idClient, idCheque, creditOffer);
        return "redirect:/banks/clients";
    }

    @DeleteMapping("/{idClient}/{idCheque}")
    public String delete(@PathVariable("idClient") int idClient,@PathVariable("idCheque") int idCheque){
        creditOfferDAO.delete(idClient , idCheque);
        return "redirect:/banks/clients";
    }
}