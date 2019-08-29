CREATE TABLE employee (
  id INTEGER PRIMARY KEY,
  name VARCHAR(64) NOT NULL,
  age  INT(4) NOT NULL
);


CREATE TABLE systemAdministator (
  sysAdmId INTEGER PRIMARY KEY,
  userName VARCHAR(64) NOT NULL,
  password  INT(4) NOT NULL
);

CREATE TABLE company (
  companyId INTEGER PRIMARY KEY,
  companyAdminId INTEGER NOT NULL,
  companyName  VARCHAR(16) NOT NULL,
  sysAdmID INTEGER,
  FOREING key(companyAdminId) REFERENCES companyAdministator(companyAdminId),
  
);

CREATE TABLE employee (
 employeeId INTEGER PRIMARY KEY,
  companyId INTEGER NOT NULL, 
  FOREING key(companyId) REFERENCES company(companyId)
);
CREATE TABLE companyAdministator (
 companyAdminId INTEGER PRIMARY KEY,
  companyAdminName VARCHAR(16) NOT NULL,
  employeeId INTEGER  NOT NULL,
  FOREING key(employeeId) REFERENCES employee(employeeId)
  
);

