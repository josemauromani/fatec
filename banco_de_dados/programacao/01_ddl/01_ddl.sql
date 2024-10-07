/* Criando uma tabela chamada employees */
CREATE TABLE employees (
    employee_id NUMBER(6) PRIMARY KEY,
    first_name VARCHAR2(20),
    last_name VARCHAR2(25) NOT NULL,
    email VARCHAR2(100) UNIQUE,
    hire_date DATE NOT NULL,
    job_id VARCHAR2(10) NOT NULL,
    salary NUMBER(8,2),
    department_id NUMBER(4)
);

/* Alterando uma tabela, 
adicionando uma coluna nova chamada phone_number */
ALTER TABLE employees
ADD phone_number VARCHAR2(15);

/* Alterando uma tabela, apagando a coluna phone_number */
ALTER TABLE employees
DROP COLUMN phone_number;

/* Alterando uma tabela, modificando a coluna salary */
ALTER TABLE employees
MODIFY salary NUMBER(10, 2);

/* Alterando uma tabela, adicionando uma restrição informando que 
a coluna email sera unica */
ALTER TABLE employees
ADD CONSTRAINT emp_email_unique UNIQUE (email);

/* Cria um indice na tabela employees para o campo last_name */
CREATE INDEX idx_emp_last_name
ON employees (last_name);

/* Apaga o indice criado */
DROP INDEX idx_emp_last_name;

/* Apaga a tabela employees */
DROP TABLE employees;

/* Altera a tabela employees, adicionando uma chave estrangeira 
que faz referencia a tabela departments atraves do codigo 
department_id */
ALTER TABLE employees
ADD CONSTRAINT fk_dept
FOREIGN KEY (department_id)
REFERENCES departments (department_id);
