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

/* Cria um indice na tabela employees para o campo last_name */
CREATE INDEX idx_emp_last_name
ON employees (last_name);