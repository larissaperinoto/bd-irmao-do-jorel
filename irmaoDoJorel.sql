CREATE DATABASE IF NOT EXISTS IrmaoDoJorel;

USE IrmaoDoJorel;

CREATE TABLE ocupacoes(
  ocupacao_id INT PRIMARY KEY AUTO_INCREMENT,
  ocupacao VARCHAR(100) NOT NULL
);

CREATE TABLE temporadas(
  temporada_id INT PRIMARY KEY AUTO_INCREMENT,
  quantidade_episodios INT NOT NULL,
  data_inicio DATE NOT NULL,
  data_final DATE NOT NULL
);

CREATE TABLE episodios(
  episodio_id INT PRIMARY KEY AUTO_INCREMENT,
  titulo VARCHAR(200) NOT NULL,
  estreia DATE NOT NULL,
  temporada INT NOT NULL,
  FOREIGN KEY (temporada) REFERENCES temporadas (temporada_id)
);

CREATE TABLE personagens(
  personagem_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  idade INT,
  primeira_aparicao INT NOT NULL,
  FOREIGN KEY (primeira_aparicao) REFERENCES episodios (episodio_id)
);

CREATE TABLE personagem_ocupacao(
  personagem_id INT NOT NULL,
  ocupacao_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (personagem_id, ocupacao_id),
  FOREIGN KEY (personagem_id) REFERENCES personagens (personagem_id),
  FOREIGN KEY (ocupacao_id) REFERENCES ocupacoes (ocupacao_id)
);
