-- Entidades:
-- Animal, Cuidador, Gerente, Cuidador e Animal;

-- Atributos:
-- Animal: animal_id , nome , especie , sexo , idade e localização ;
-- Cuidador: cuidador_id , nome , gerente_id ;
-- Gerente: gerente_id e nome ;
-- Cuidador e Animal: cuidador_id e animal_id ;

-- Relacionamentos:
-- Um animal pode ter um ou mais cuidadores;
-- Um cuidador pode cuidar de um ou mais animais;
-- Um gerente pode gerenciar uma ou mais cuidadores;
-- Um cuidador possui um gerente;

DROP SCHEMA IF EXISTS zoologico;
    CREATE SCHEMA zoologico;
    USE zoologico;

    CREATE TABLE animal(
        animal_id INT PRIMARY KEY AUTO_INCREMENT,
        nome VARCHAR(50) NOT NULL,
        especie VARCHAR(50) NOT NULL,
        sexo VARCHAR(50) NOT NULL,
        idade INT NOT NULL,
        localizacao VARCHAR(50) NOT NULL
    );

     CREATE TABLE gerente(
        gerente_id INT PRIMARY KEY AUTO_INCREMENT,
        nome VARCHAR(50) NOT NULL
    );

    CREATE TABLE cuidador(
        cuidador_id INT PRIMARY KEY AUTO_INCREMENT,
        nome VARCHAR(50) NOT NULL,
        gerente_id INT NOT NULL,
        FOREIGN KEY (gerente_id) REFERENCES gerente (gerente_id)
    );

    CREATE TABLE animal_cuidador(
        animal_id INT,
        cuidador_id INT,
        CONSTRAINT PRIMARY KEY(animal_id, cuidador_id),
        FOREIGN KEY (animal_id) REFERENCES animal (animal_id),
        FOREIGN KEY (cuidador_id) REFERENCES cuidador (cuidador_id)
    );
    