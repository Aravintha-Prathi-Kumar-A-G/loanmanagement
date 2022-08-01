create table loan
(
loan_id number(4) not null, 
loan_type varchar2(70) not null,
primary key (loan_id)
);
select * from appointments;

create table loan_emi_details
( 
loan_id number(4)  not null,
payment_amount number(12,5)  null,
payment_id number(4) not null,
user_id number(4) not null,
emi_date date,
 FOREIGN KEY (loan_id) REFERENCES loan(loan_id)
);

create table loan_details
(
user_id number(4) not null,
loan_id number(4) not null,
loan_date date,
loan_amount number(12,2)  null,
no_of_emis number(4)  null,
due_date date,
emi_paid date,
emi_pending varchar2(30),
interest number(4),
FOREIGN KEY (loan_id) REFERENCES loan(loan_id),
FOREIGN KEY (user_id) REFERENCES users_details(user_id)
);

create table users_details
(
user_id number(4) not null primary key,
users_name varchar2(60)  null,
gender varchar2(10)  null,
age number(4),
dob date,
phone_no number(10),
pan_no varchar2(20),
account_no number(15),
address varchar2(250),
pincode number(6),
role VARCHAR2(20),
password VARCHAR2(40)
);
select * from loan;

alter table users_details
add email varchar2(40);
select * from users_details;
drop table loan_details;

commit;

