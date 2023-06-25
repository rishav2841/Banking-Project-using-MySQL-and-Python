
SET SQL_MODE = "N0_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

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

INSERT INTO 'customer'('acno','name','address','phone','email','aadhar_no','account_type','status','balance')
values
(1, 'RAVI RANJAN','CF-4 KOLKATA','7014515637','rishavsingh@gmail.com','1234-1243-4545','saving','active',250000.00),
(2, 'RAJ KUMAR','PUMP NAGAR PATNA','9673431245','rajkumar@gmail.com','4545-1243-4565','current','active',150000.00),
(3, 'MITTHU','6B-13 PEER TOLA','7668774612','mithhu12@gmail.com','1253-8765-2541','saving','active',165000.00);

DROP TABLE IF EXISTS 'transaction';
CREATE TABLE IF NOT EXISTS 'transaction'(
    'tid' int(11) NOT NULL AUTO_INCREMENT,
    'dot' date DEFAULT NULL,
    'amount' int(10) DEFAULT NULL,
    'type' char(20) DEFAULT NULL,
    'acno' int(10)  DEFAULT NULL,
    PRIMARY KEY('tid')
)ENGINE=MYISAM AUTO_INCREMENT=9 DEFAULT CHARSET = latin1;


INSERT INTO ' transaction'('tid','dot','amount','type','acno') values
(1, '2023-06-15',1000,'deposit',1),
(2, '2023-05-15',2000,'deposit',2),
(3, '2023-07-15',1100,'withdraw',3);
