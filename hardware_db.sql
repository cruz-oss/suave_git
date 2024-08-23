CREATE DATABASE hardware_info;
USE hardware_info;

CREATE TABLE hardware_upgrade (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cpu VARCHAR(255),
    memory VARCHAR(255),
    disk VARCHAR(255),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Fazendo a busca na tabela
select * from hardware_upgrade;

-- deletando tabela
DROP TABLE hardware_upgrade;

 
