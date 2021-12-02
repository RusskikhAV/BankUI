package com.newtestproject.controller;

import com.newtestproject.DAO.CreditDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/credits")
public class CreditController {
    CreditDAO creditDAO;

    @Autowired
    public CreditController(CreditDAO creditDAO) {
        this.creditDAO = creditDAO;
    }

    @GetMapping()
    public String credits(Model model){
        model.addAttribute("credits", creditDAO.index());
        return "credits/index";
    }

    @GetMapping("/{id}")
    public String show(@PathVariable("id") int id, Model model){
        model.addAttribute("credit",creditDAO.show(id));
        return "credits/show";
    }
}
