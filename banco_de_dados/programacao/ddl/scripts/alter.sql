/* Alterando uma tabela, 
adicionando uma coluna nova chamada phone_number */
ALTER TABLE employees
ADD phone_number VARCHAR2(15);

/* Alterando uma tabela, modificando a coluna salary */
ALTER TABLE employees
MODIFY salary NUMBER(10, 2);

/* Alterando uma tabela, adicionando uma restrição informando que 
a coluna email sera unica */
ALTER TABLE employees
ADD CONSTRAINT emp_email_unique UNIQUE (email);

/* Altera a tabela employees, adicionando uma chave estrangeira 
que faz referencia a tabela departments atraves do codigo 
department_id */
ALTER TABLE employees
ADD CONSTRAINT fk_dept
FOREIGN KEY (department_id)
REFERENCES departments (department_id);

/* Alterando uma tabela, apagando a coluna phone_number */
ALTER TABLE employees
DROP COLUMN phone_number;

