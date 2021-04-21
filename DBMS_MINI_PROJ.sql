CREATE TABLE IF NOT EXISTS CUSTOMER
(customer_id   INT  NOT NULL,
mob_num INT  NOT NULL,
customer_name  TEXT  NOT NULL,
customer_address VARCHAR(50),
PRIMARY KEY(customer_id,mob_num)
);

CREATE TABLE IF NOT EXISTS Service_Provider
(Provider_Id   INT  NOT NULL,
Name  TEXT  NOT NULL,
PRIMARY KEY(Provider_Id)
);

CREATE TABLE IF NOT EXISTS Staff 
staff_ID, INT  NOT NULL,
designation TEXT  NOT NULL,
staff_name TEXT  NOT NULL,
PRIMARY KEYstaff_ID, 
);

CREATE TABLE IF NOT EXISTS PLAN
(Plan_id   INT  NOT NULL,
Validity  DATE  NOT NULL,
Plan_type TEXT NOT NULL,
Provider_Id INT NOT NULL,
PRIMARY KEY(Plan_id),
FOREIGN KEY(Provider_Id) REFERENCES Service_Provider(Provider_Id)
);


CREATE TABLE IF NOT EXISTS Bills  
(bill_id INT  NOT NULL,
bill_num INT NOT NULL,
pay_status TEXT NOT NULL,
bill_desc TEXT NOT NULL,
bill_date DATE NOT NULL,
customer_id INT  NOT NULL,
mob_num INT  NOT NULL,
PRIMARY KEY(bill_id ),
FOREIGN KEY(customer_id) REFERENCES CUSTOMER(customer_id),
FOREIGN KEY(mob_num ) REFERENCES CUSTOMER(mob_num)
);

CREATE TABLE IF NOT EXISTS Call_Details
(call_id INT  NOT NULL,
call_start_time INT NOT NULL,
call_end_time INT NOT NULL,
call_type TEXT NOT NULL,
call_date DATE NOT NULL,
customer_id INT  NOT NULL,
mob_num INT  NOT NULL,
Provider_Id INT NOT NULL,
PRIMARY KEY(bill_id ),
FOREIGN KEY(customer_id) REFERENCES CUSTOMER(customer_id),
FOREIGN KEY(mob_num ) REFERENCES CUSTOMER(mob_num),
FOREIGN KEY(Provider_Id ) REFERENCES Service_Provider(Provider_Id),
);


CREATE TABLE IF NOT EXISTS Uses
(customer_id INT  NOT NULL,
mob_num INT NOT NULL,
Plan_id INT NOT NULL,
FOREIGN KEY(customer_id) REFERENCES CUSTOMER(customer_id),
FOREIGN KEY(mob_num ) REFERENCES CUSTOMER(mob_num),
FOREIGN KEY(Plan_id ) REFERENCES Plan(Plan_id ),
);


CREATE TABLE IF NOT EXISTS Register
(staff_ID INT  NOT NULL,
mob_num INT NOT NULL,
customer_id INT NOT NULL,
FOREIGN KEY(customer_id) REFERENCES CUSTOMER(customer_id),
FOREIGN KEY(mob_num ) REFERENCES CUSTOMER(mob_num),
FOREIGN KEY(staff_ID ) REFERENCES Staff(staff_ID),
);




