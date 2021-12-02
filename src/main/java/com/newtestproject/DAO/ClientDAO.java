package com.newtestproject.DAO;

import com.newtestproject.model.Client;
import org.springframework.stereotype.Component;

import java.util.*;

@Component
public class ClientDAO {
    private static int CLIENT_COUNT;
    private Set<Client> clients;

    {
        clients = new HashSet<>();
       //clients.add(new Client(++CLIENT_COUNT,"Tom","Johnson", "Smith","8-912-345-23-23", "email@mail.ru","36 32 223432"));
       clients.add(new Client(++CLIENT_COUNT,"Игорь","Серов", "Владимирович","8-912-345-23-23", "email@mail.ru","36 32 223432"));
    }

    public Set<Client> index(){

        return clients;
    }

    public Client show(int id){
        return clients.stream().filter(clients -> clients.getId() == id).findAny().orElse(null);
    }

    public void save(Client client){
        client.setId(++CLIENT_COUNT);
        clients.add(client);
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
        clients.removeIf(client -> client.getId() == id);
    }
}
