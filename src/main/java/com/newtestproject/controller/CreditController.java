package com.newtestproject.controller;

import com.newtestproject.DAO.CreditDAO;
import com.newtestproject.model.Client;
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
    CreditDAO creditDAO;

    @Autowired
    public CreditController(CreditDAO creditDAO) {
        this.creditDAO = creditDAO;
    }

    @GetMapping("/{id}")
    public String show(@PathVariable("id") int id, Model model){
        model.addAttribute("credit",creditDAO.show(id));
        return "credits/show";
    }

    @PatchMapping("/{id}")
    public String update(@ModelAttribute("credit") @Valid Credit credit, BindingResult bindingResult, @PathVariable("id") int id){
        if(bindingResult.hasErrors())
            return "credits/edit";
            creditDAO.update(id, credit);

            return "redirect:/";
    }

    @GetMapping("/new")
    public String newCredit(@ModelAttribute("credit") Credit credit){
        return "credits/new";
    }

    @PostMapping()
    public String create(@ModelAttribute("credit") @Valid Credit credit,
                         BindingResult bindingResult){
        if(bindingResult.hasErrors())
            return "credits/new";

        creditDAO.save(credit);
        return "redirect:/";
    }
}
