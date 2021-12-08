package com.newtestproject.controller;

import com.newtestproject.DAO.CreditOfferDAO;
import com.newtestproject.model.Credit;
import com.newtestproject.model.CreditOffer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


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
}