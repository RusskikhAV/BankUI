package com.newtestproject.DAO;

import com.newtestproject.model.Credit;
import com.newtestproject.model.CreditOffer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.util.List;


@Component
public class CreditOfferDAO {
    private JdbcTemplate jdbcTemplate;

    private static double pow(double value, int powValue) {
        return Math.pow(value, powValue);
    }

    private static double round(double value) {
        return Math.round(value * 100.0) / 100.0;
    }

    @Autowired
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public List<CreditOffer> allScheduleOfOneCredit(int id) {
        return jdbcTemplate.query("SELECT * FROM paymentschedule WHERE clientId=?", new Object[]{id}, new BeanPropertyRowMapper<>(CreditOffer.class));
    }


    public CreditOffer show(int clientId, int chequeId) {
        return jdbcTemplate.query("SELECT * FROM paymentschedule WHERE clientId=? and IDCHEK=?", new Object[]{clientId, chequeId}, new BeanPropertyRowMapper<>(CreditOffer.class)).stream().findAny().orElse(null);
    }


    public void save(CreditOffer creditOffer) {
        jdbcTemplate.update("INSERT INTO paymentschedule (DATE, PAYMENT, PERCENT, BODYCREDIT, BALANCE, CLIENTID, CREDITID) VALUES (?, ?, ?, ?, ?, ?, ?)",
                creditOffer.getDate(), creditOffer.getPayment(), creditOffer.getPercent(), creditOffer.getBodyCredit(),
                creditOffer.getBalance(), creditOffer.getClientId(), creditOffer.getCreditId());
    }


    public void update(int clientId, int chequeId, CreditOffer creditOffer) {
        jdbcTemplate.update("UPDATE paymentschedule SET DATE=?, PAYMENT=?, PERCENT=?, BODYCREDIT=?, BALANCE=? WHERE CLIENTID=? AND IDCHEK=?",
                creditOffer.getDate(), creditOffer.getPayment(), creditOffer.getPercent(), creditOffer.getBodyCredit(), creditOffer.getBalance(), clientId, chequeId);
    }


    public void delete(int idClient, int idCheque) {
        jdbcTemplate.update("DELETE FROM PAYMENTSCHEDULE WHERE CLIENTID=? AND IDCHEK=?", idClient, idCheque);
    }

    public List<CreditOffer> showScheduleOfTheOneCredit(int idClient, int idCredit) {
        return jdbcTemplate.query("SELECT * FROM paymentschedule WHERE CLIENTID=? and CREDITID=?", new Object[]{idClient, idCredit}, new BeanPropertyRowMapper<>(CreditOffer.class));
    }


    public void paymentSchedule(Credit credit, int clientId, int creditId) {
        final double ratePerMonth = credit.getInterestRate() / 12 / 100;
        final double annuityRate = (ratePerMonth * pow((1 + ratePerMonth), credit.getCreditTerm()) / ((pow((1 + ratePerMonth), credit.getCreditTerm())) - 1));
        double payment = credit.getAmountCredit() * annuityRate;
        double total = 0;
        LocalDate localDate = LocalDate.now();
        double balance = credit.getAmountCredit();
        //List<CreditOffer> offers = new ArrayList<>();
        CreditOffer creditOffer = new CreditOffer();

        for (int i = 1; i <= credit.getCreditTerm(); i++) {
            double percent = balance * ratePerMonth;
            double bodyCredit = payment - (credit.getAmountCredit() * ratePerMonth);
            creditOffer.setDate(localDate);
            creditOffer.setPayment(round(payment));
            creditOffer.setPercent(round(percent));
            creditOffer.setBodyCredit(round(bodyCredit));
            creditOffer.setBalance(round(balance));
            creditOffer.setClientId(credit.getClientId());
            creditOffer.setCreditId(creditId);
            save(creditOffer);
            System.out.println(round(balance));
            System.out.println("clID " + clientId);
            System.out.println("crID " + creditId);
            //offers.add(creditOffer);
            //System.out.println("#" + i + " Date: " + localDate + " Payment: " + round(payment) + " Rate Schedule: " +
            // round(rateSchedule) + " Body: " + round(bodyCredit) + " Balance: " + round(balance));
            balance -= payment;
            total += payment;
            localDate = localDate.plusMonths(1);

        }
        System.out.println("Total: " + round(total));
        //return creditOffer;
    }
}
