-- Create and use Case_status

CREATE DATABASE case_status_db;\\
USE case_status_db;

DROP TABLE finalized_h1b;
select * from finalized_h1b;
-- Create tables for raw data to be loaded into
CREATE TABLE Finalized_H1B(
  NAIC_CODE varchar() PRIMARY KEY,
  CASE_STATUS_CERTIFIED INT,
  CASE_STATUS_DENIED INT,
  PERCENTAGE_DENIED decimal(10,2)
);
drop table finalized_us_perm;
CREATE TABLE Finalized_US_Perm (
  NAIC_CODE varchar(30) PRIMARY KEY,
  case_status_Certified INT,
  case_status_Denied INT,
  percentage_Denied decimal(10,2)
);
select * 
from finalized_us_perm
join finalized_h1b
on finalized_h1b.NAIC_CODE = finalized_us_perm.NAIC_CODE;

