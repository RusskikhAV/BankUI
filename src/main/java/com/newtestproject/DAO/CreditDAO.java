package com.newtestproject.DAO;

import com.newtestproject.model.Credit;
import com.newtestproject.repository.CommonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class CreditDAO implements CommonRepository<Credit> {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public Credit show(int id) {
        return jdbcTemplate.query("SELECT * FROM credits WHERE clientId=?", new Object[]{id}, new BeanPropertyRowMapper<>(Credit.class)).stream().findAny().orElse(null);
    }

    @Override
    public void save(Credit credit) {
        jdbcTemplate.update("INSERT INTO credits (INTERESTRATE, CREDITTERM, AMOUNTCREDIT, CLIENTID) VALUES (?, ?, ?, ?)",
                credit.getInterestRate(), credit.getCreditTerm(), credit.getAmountCredit(), credit.getClientId());
    }

    @Override
    public void update(int id, Credit updatedCredit) {
        jdbcTemplate.update("UPDATE credits SET INTERESTRATE=?, CREDITTERM=?, AMOUNTCREDIT=? WHERE CREDITID=?",
                updatedCredit.getInterestRate(), updatedCredit.getCreditTerm(), updatedCredit.getAmountCredit(), id);
    }

    @Override
    public void delete(int id) {
        jdbcTemplate.update("DELETE FROM credits WHERE CREDITID=?", id);
    }

    public List<Credit> allCreditsOfOneClient(int id) {
        return jdbcTemplate.query("SELECT * FROM credits WHERE clientId=?", new Object[]{id}, new BeanPropertyRowMapper<>(Credit.class));
    }
}
