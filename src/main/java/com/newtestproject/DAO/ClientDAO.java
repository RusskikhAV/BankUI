package com.newtestproject.DAO;

import com.newtestproject.model.Bank;
import com.newtestproject.model.Client;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class ClientDAO {
    Bank bank;
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public Client show(int id){
        return bank.getClients().get(id - 1);
    }

    public void save(Client client){
        jdbcTemplate.update("INSERT INTO clients (NAME,SURNAME,SECONDNAME,TELEPHONENUMBER,EMAIL,PASSPORTNUMBER)VALUES (?, ?, ?, ?, ?, ?)",client.getName(), client.getSurname(),
                client.getSecondName(),client.getTelephoneNumber(), client.getEMail(), client.getPassportNumber());

    }

    public void update(int id, Client updateClient){
        Client clientToBeUpdated = show(id);

        clientToBeUpdated.setName(updateClient.getName());
        clientToBeUpdated.setSurname(updateClient.getSurname());
        clientToBeUpdated.setSecondName(updateClient.getSecondName());
        clientToBeUpdated.setTelephoneNumber(updateClient.getTelephoneNumber());
        clientToBeUpdated.setEMail(updateClient.getEMail());
        clientToBeUpdated.setPassportNumber(updateClient.getPassportNumber());

    }

    public void delete(int id){
       // bankDAO.showClients().removeIf(client -> client.getId() == id);
    }

}
