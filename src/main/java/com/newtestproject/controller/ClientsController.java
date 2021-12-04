package com.newtestproject.controller;

import com.newtestproject.DAO.ClientDAO;
import com.newtestproject.model.Client;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/clients")
public class ClientsController {

    private ClientDAO clientDAO;

    @Autowired
    public ClientsController(ClientDAO clientDAO) {
        this.clientDAO = clientDAO;
    }


    @GetMapping("/{id}")
    public String show(@PathVariable("id") int id, Model model){
        model.addAttribute("client",clientDAO.show(id));
        return "clients/show";
    }

    @GetMapping("/new")
    public String newClient(@ModelAttribute("client") Client client){
        return "clients/new";
    }

    @PostMapping()
    public String create(@ModelAttribute("client") @Valid Client client,
                         BindingResult bindingResult){
        if(bindingResult.hasErrors())
            return "clients/new";

        clientDAO.save(client);
        return "redirect:/";
    }

    @GetMapping("/{id}/edit")
    public String editClient(@PathVariable("id") int id, Model model){
        model.addAttribute("client", clientDAO.show(id));
        return "clients/edit";
    }

    @PatchMapping("/{id}")
    public String update(@ModelAttribute("client") @Valid Client client, BindingResult bindingResult,
                         @PathVariable("id") int id){
        if (bindingResult.hasErrors())
            return "clients/edit";
        clientDAO.update(id,client);
        return "redirect:/";
    }

    @DeleteMapping("/{id}")
    public String delete(@PathVariable("id") int id){
        clientDAO.delete(id);
        return "redirect:/clients";
    }
}
