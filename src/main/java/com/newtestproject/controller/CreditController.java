package com.newtestproject.controller;

import com.newtestproject.DAO.CreditDAO;
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
    private CreditDAO creditDAO;

    @Autowired
    public CreditController(CreditDAO creditDAO) {
        this.creditDAO = creditDAO;
    }

    @GetMapping("/{id}")
    public String show(@PathVariable("id") int id, Model model){
        model.addAttribute("credit",creditDAO.show(id));
        return "credits/show";
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

    @GetMapping("/{id}/edit")
    public String editCredit(@PathVariable("id") int id, Model model){
        model.addAttribute("credit", creditDAO.show(id));
        return "credits/edit";
    }

    @PatchMapping("/{id}")
    public String update(@ModelAttribute("credit") @Valid Credit credit, BindingResult bindingResult,
                         @PathVariable("id") int id){
        if(bindingResult.hasErrors()) {
            return "credits/edit";
        }
        creditDAO.update(id, credit);
            return "redirect:/banks/credits";
    }

    @DeleteMapping("{id}")
    public String delete(@PathVariable("id") int id){
        creditDAO.delete(id);
        return "redirect:/banks/credits";
    }

    @GetMapping("/{id}/client_credits")
    public String allCreditsOfOneClient(@PathVariable("id") int id, Model model){
       model.addAttribute("credits", creditDAO.allCreditsOfOneClient(id));
        return "credits/client_credits";
    }
}
