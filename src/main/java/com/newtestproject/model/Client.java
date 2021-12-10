package com.newtestproject.model;

import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Setter
@Getter
public class Client {
    private int clientId;

    @NotEmpty(message = "field - \"Name\" must not be empty")
    @Size(min = 2, max = 15, message = "\"Name\" cannot be less than 2 and more than 15 characters")
    private String name;

    @NotEmpty(message = "field - \"Surname\" must not be empty")
    @Size(min = 2, max = 20, message = "\"Surname\" cannot be less than 2 and more than 20 characters")
    private String surname;

    @NotEmpty(message = "field - \"Second Name\" must not be empty")
    @Size(min = 2, max = 25, message = "\"Second Name\" cannot be less than 2 and more than 25 characters")
    private String secondName;

    @NotEmpty(message = "field - \"Telephone Number\" must not be empty")
    @Pattern(regexp = "^(\\+\\d{1,3}( )?)?((\\(\\d{3}\\))|\\d{3})[- .]?\\d{3}[- .]?\\d{4}$", message = "\n" +
            "the telephone number must be of the standard \"8(800)555-3535\" or \"+7(800)555-3535\"")
    private String telephoneNumber;

    @NotEmpty(message = "field - \"Email\" must not be empty")
    @Email(message = "Wrong email")
    private String eMail;

    @NotEmpty(message = "field - \"Passport Number\" must not be empty")
    @Pattern(regexp = "^(\\d{2}[- .]?){2}\\d{6}$", message = "the passport number must be of the standard \"33 33 333333\"")
    private String passportNumber;

    public Client() {

    }

    public Client(int clientId, String name, String surname, String secondName, String telephoneNumber, String eMail, String passportNumber) {
        this.clientId = clientId;
        this.name = name;
        this.surname = surname;
        this.secondName = secondName;
        this.telephoneNumber = telephoneNumber;
        this.eMail = eMail;
        this.passportNumber = passportNumber;
    }
}