create table credits(
                        id bigint ,
                        amountCredit bigint,
                        interestRate double,
                        creditTerm int

);
create table clients(
    id bigint,
    name varchar(15),
    surname varchar(20),
    secondName varchar(25),
    telephoneNumber varchar(15),
    email varchar(70),
    passportNumber varchar(10),

    foreign key (id) references credits (id)
);
