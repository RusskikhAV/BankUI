package com.newtestproject.model;

import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.*;

@Setter
@Getter
public class Client {
    private int id;

    @NotEmpty(message = "поле - \"Имя\" не должно быть пустым")
    @Size(min = 2, max = 15, message = "Имя не может быть меньше 2х и больше 15 символов")
    private String name;

    @NotEmpty(message = "поле - \"Фамилия\" не должно быть пустым")
    @Size(min = 2, max = 20, message = "Фамилия не может быть меньше 2х и больше 20 символов")
    private String surname;

    @NotEmpty(message = "поле - \"Фамилия\" не должно быть пустым")
    @Size(min = 2, max = 25, message = "Фамилия не может быть меньше 2х и больше 25 символов")
    private String secondName;

    @Pattern(regexp = "^[0-9]{1}\\-[0-9]{3}\\-[0-9]{3}\\-[0-9]{2}\\-[0-9]{2}")
    private String telephoneNumber;

    @NotEmpty(message = "поле - \"Email\" не должно быть пустым")
    @Email(message = "Проверьте правильность ввода Email")
    private String eMail;

    @Pattern(regexp = "[0-9]{2} [0-9]{2} [0-9]{6}")
    private String passportNumber;

    private int creditLimit;

    public Client(){

    }

    public Client(int id, String name, String surname, String secondName, String telephoneNumber, String eMail, String passportNumber) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.secondName = secondName;
        this.telephoneNumber = telephoneNumber;
        this.eMail = eMail;
        this.passportNumber = passportNumber;
    }
}
