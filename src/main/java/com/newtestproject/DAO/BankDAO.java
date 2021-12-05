package com.newtestproject.DAO;

import com.newtestproject.model.Client;
import com.newtestproject.model.Credit;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Data
public class BankDAO {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public List<Credit> showCredits(){

        return jdbcTemplate.query("SELECT * FROM credits", new BeanPropertyRowMapper<>(Credit.class));
    }

    public List<Client> showClients(){
        return jdbcTemplate.query("SELECT * FROM clients", new BeanPropertyRowMapper<>(Client.class));
    }

  }
