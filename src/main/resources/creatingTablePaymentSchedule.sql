create table paymentSchedule
(
    idChek     bigint generated by default as identity (start with 1 increment by 1),
    date       DATE,
    payment    double,
    percent    double,
    bodyCredit double,
    balance    double,
    clientId   bigint,
    creditId   bigint,

    foreign key (creditId) references CREDITS (creditId),
    foreign key (ClientId) references clients (ClientId)
);