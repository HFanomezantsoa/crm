create table budget (
    budget_id int primary key auto_increment,
    description varchar(255),
    amount decimal(15,2),
    customer_id int unsigned not null,
    created_at date not null,
    foreign key (customer_id) references customer(customer_id)
);

create table alert_settings (
    alert_id int primary key auto_increment,
    rate decimal(5,2)
);

ALTER TABLE trigger_lead
ADD COLUMN expense_amount decimal(15,2);

ALTER TABLE trigger_ticket
ADD COLUMN expense_amount decimal(15,2);
