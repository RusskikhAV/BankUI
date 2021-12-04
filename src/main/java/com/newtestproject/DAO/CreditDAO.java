package com.newtestproject.DAO;

import com.newtestproject.model.Client;
import com.newtestproject.model.Credit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;


@Component
public class CreditDAO {

    BankDAO bankDAO;
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Autowired
    public CreditDAO(BankDAO bankDAO) {
        this.bankDAO = bankDAO;
    }

    public Credit show(int id){
        return bankDAO.showCredits().stream().filter(credit -> credit.getCreditId() == id).findAny().orElse(null);

    }

    public void save(Credit credit){
        jdbcTemplate.update("INSERT INTO credits (INTERESTRATE, CREDITTERM, CLIENTID) VALUES (?, ?, ?)" ,credit.getInterestRate(), credit.getCreditTerm(), credit.getClientId());
    }

    public void update(int id, Credit credit){

    }

    public void delete(int id){

    }
}
