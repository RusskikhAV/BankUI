package com.newtestproject.DAO;

import com.newtestproject.model.Credit;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class CreditDAO {
    private static int CREDIT_COUNT;
    private List<Credit> credits;
    {
        credits = new ArrayList<>();
        credits.add(new Credit(1,100_000,12,12));
    }

    public List<Credit> index(){
        return credits;
    }

    public Credit show(int id){
        return credits.stream().filter(credit -> credit.getId() == id).findAny().orElse(null);
    }
}
