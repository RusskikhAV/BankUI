package com.newtestproject.DAO;

import com.newtestproject.model.Client;
import com.newtestproject.repository.CommonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class ClientDAO implements CommonRepository<Client> {
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public Client show(int id) {
        return jdbcTemplate.query("SELECT * FROM clients WHERE clientId=?",
                new Object[]{id}, new BeanPropertyRowMapper<>(Client.class)).stream().findAny().orElse(null);
    }

    @Override
    public void save(Client client) {
        jdbcTemplate.update("INSERT INTO clients (NAME, SURNAME, SECONDNAME, TELEPHONENUMBER, EMAIL, PASSPORTNUMBER) VALUES (?, ?, ?, ?, ?, ?)",
                client.getName(), client.getSurname(), client.getSecondName(),
                client.getTelephoneNumber(), client.getEMail(), client.getPassportNumber());

    }

    @Override
    public void update(int id, Client updatedClient) {
        jdbcTemplate.update("UPDATE clients SET NAME=?, SURNAME=?, SECONDNAME=?, TELEPHONENUMBER=?, EMAIL=?, " +
                        "PASSPORTNUMBER=? WHERE CLIENTID=?",
                updatedClient.getName(), updatedClient.getSurname(), updatedClient.getSecondName(),
                updatedClient.getTelephoneNumber(), updatedClient.getEMail(), updatedClient.getPassportNumber(), id);

    }

    @Override
    public void delete(int id) {
        jdbcTemplate.update("DELETE FROM clients WHERE CLIENTID=?", id);
    }

}
