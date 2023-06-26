# Banking-Project-using-MySQL-and-Python
ABOUT
________

In this project we have created a BANK MANAGEMENT SYSTEM using Python and MySQL.Data entered by the user are stored in MYSQL database in tabular form. 

This project is designed for The Bank Staffs to keep the record of their customers.it display all records, and user  can modify it accordingly.
If someone is not having account he/she could make a new account.Further it can also check overall record of a local customer or full detail of a single a/c as per transactions, It create a new record for new customer, Update an old customer record, Delete a record of a customer . 
Python is used as Front End and MySQL is used as Back End.

*Requirement
________________

1. Python Latest Version
2. Visual Code
3. Mysql
4. Python My SQL Converter : Most Important

*Module Used In python Code
_______________________________

1. datetime
2. mysql.connector

*About Mysql Code
_______________________

1. database = bankproject
2. address = local
3. user=ravi
4. password=rishav2841



Before Running This Code in Your System Make Sure you have created the bank and transactions Table.

*My Sql Code for Creating Table Customer

DROP TABLE IF EXISTS 'customer';
CREATE TABLE IF NOT EXISTS 'customer' (
'acno' int(11) NOT NULL AUTO_INCREMENT,
'name' char(30) DEFAULT NULL,
'address' varchar(100) DEFAULT NULL,
'phone' varchar(15) DEFAULT NULL,
'email' varchar(80) DEFAULT NULL,
'aadhar_no' varchar(20) DEFAULT NULL,
'account_no' varchar(20) DEFAULT NULL,
'status' char(15) DEFAULT NULL,
'balance' float(15,2) DEFAULT NULL,
PRIMARY KEY ('acno')
)ENGINE=MYISAM AUTO_INCREMENT=7 DEFAULT CHARSET = latin1;

*My Sql code for creating Table Transaction:

DROP TABLE IF EXISTS 'transaction';
CREATE TABLE IF NOT EXISTS 'transaction'(
    'tid' int(11) NOT NULL AUTO_INCREMENT,
    'dot' date DEFAULT NULL,
    'amount' int(10) DEFAULT NULL,
    'type' char(20) DEFAULT NULL,
    'acno' int(10)  DEFAULT NULL,
    PRIMARY KEY('tid')
)ENGINE=MYISAM AUTO_INCREMENT=9 DEFAULT CHARSET = latin1;
