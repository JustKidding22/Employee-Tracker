DROP DATABASE IF EXISTS employee_db;

CREATE database employee_db;

USE employee_db;

CREATE TABLE department (
  id INTEGER NOT NULL auto_increment PRIMARY KEY,
  name VARCHAR(30)
);

CREATE TABLE role (
  id INTEGER NOT NULL auto_increment PRIMARY KEY,
  title VARCHAR(30),
  salary DECIMAL,
  department_id INTEGER,
  FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE employee (
  id INTEGER NOT NULL auto_increment PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INTEGER,
  manager_id INTEGER,
  FOREIGN KEY (role_id) REFERENCES role(id),
  FOREIGN KEY (manager_id) REFERENCES role(id)
);

USE employee_db;

INSERT into department (name) VALUES ("Construction");
INSERT into department (name) VALUES ("Sales");
INSERT into department (name) VALUES ("Electronics");
INSERT into department (name) VALUES ("HR");
INSERT into department (name) VALUES ("IT");
INSERT into department (name) VALUES ("Finance");

INSERT into role (title, salary, department_id) VALUES ("Construction Manager", 200000, 1);
INSERT into role (title, salary, department_id) VALUES ("Sales Manager", 100000, 2);
INSERT into role (title, salary, department_id) VALUES ("Electronics Manager", 150000, 3);
INSERT into role (title, salary, department_id) VALUES ("HR Manager", 90000, 4);
INSERT into role (title, salary, department_id) VALUES ("IT Manager", 120000, 5);
INSERT into role (title, salary, department_id) VALUES ("Finance Manager", 110000, 6);
INSERT into role (title, salary, department_id) VALUES ("Construction Worker", 50000, 1);
INSERT into role (title, salary, department_id) VALUES ("Sales person", 50000, 2);
INSERT into role (title, salary, department_id) VALUES ("Electronics Engineer", 90000, 3);
INSERT into role (title, salary, department_id) VALUES ("HR Assistant", 50000, 4);
INSERT into role (title, salary, department_id) VALUES ("IT Technician", 60000, 5);
INSERT into role (title, salary, department_id) VALUES ("Accountant", 70000, 6);

INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("John", "Dunn", 1, null);
INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Peter", "Dumfries", 7, 1);
INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Ali", "Al Arabi", 7, 1);

INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Scott", "McTominay", 2, null);
INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("James", "McGill", 8, 2);

INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Matt", "Richie", 3, null);
INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("John", "Smith", 9, 3);

INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("William", "Arthur", 4, null);
INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Maddison", "James", 10, 4);

INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Alfred", "Moss", 5, null);
INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Henry", "Holgate", 11, 5);

INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Bob", "Hope", 6, null);
INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Dwight", "Mosby", 12, 6);