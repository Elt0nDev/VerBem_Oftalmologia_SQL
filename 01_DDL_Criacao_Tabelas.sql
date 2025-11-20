-- DDL: Criação do Esquema (se necessário) e Tabelas
CREATE DATABASE IF NOT EXISTS VerBem_Oftalmologia;
USE VerBem_Oftalmologia;

-- 1. Tabela Paciente
CREATE TABLE Paciente (
    id_paciente INT PRIMARY KEY AUTO_INCREMENT,
    nome_completo VARCHAR(150) NOT NULL,
    data_nascimento DATE NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100),
    endereco_rua VARCHAR(100),
    endereco_cidade VARCHAR(50)
);

-- 2. Tabela Médico
CREATE TABLE Medico (
    id_medico INT PRIMARY KEY AUTO_INCREMENT,
    nome_completo VARCHAR(150) NOT NULL,
    crm VARCHAR(20) UNIQUE NOT NULL,
    especialidade VARCHAR(50) DEFAULT 'Oftalmologia',
    telefone VARCHAR(15),
    email VARCHAR(100)
);

-- 3. Tabela Consulta
CREATE TABLE Consulta (
    id_consulta INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL,
    data_hora DATETIME NOT NULL,
    diagnostico TEXT,
    valor DECIMAL(10, 2),
    
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id_paciente) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (id_medico) REFERENCES Medico(id_medico) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- 4. Tabela Exame
CREATE TABLE Exame (
    id_exame INT PRIMARY KEY AUTO_INCREMENT,
    id_consulta INT NOT NULL,
    tipo_exame VARCHAR(50) NOT NULL,
    resultado TEXT,
    data_realizacao DATE,
    
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta) ON DELETE CASCADE ON UPDATE CASCADE
);
