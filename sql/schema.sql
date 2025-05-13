-- Creazione del database
CREATE DATABASE IF NOT EXISTS greencity;
USE greencity;

-- Tabella utenti
CREATE TABLE utenti (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL,
    ruolo ENUM('cittadino', 'ente', 'azienda') NOT NULL,
    password_hash VARCHAR(255),
    data_registrazione TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabella segnalazioni ambientali
CREATE TABLE segnalazioni (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_utente INT,
    titolo VARCHAR(255),
    descrizione TEXT,
    categoria ENUM('rifiuti', 'inquinamento', 'verde pubblico', 'altro'),
    latitudine DECIMAL(10,8),
    longitudine DECIMAL(11,8),
    data_segnalazione TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_utente) REFERENCES utenti(id) ON DELETE CASCADE
);

-- Tabella iniziative ecologiche
CREATE TABLE iniziative (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titolo VARCHAR(255),
    descrizione TEXT,
    data_evento DATE,
    luogo VARCHAR(255),
    organizzatore INT,
    FOREIGN KEY (organizzatore) REFERENCES utenti(id) ON DELETE SET NULL
);

-- Tabella partecipazioni (utenti che partecipano alle iniziative)
CREATE TABLE partecipazioni (
    id_utente INT,
    id_iniziativa INT,
    PRIMARY KEY (id_utente, id_iniziativa),
    FOREIGN KEY (id_utente) REFERENCES utenti(id) ON DELETE CASCADE,
    FOREIGN KEY (id_iniziativa) REFERENCES iniziative(id) ON DELETE CASCADE
);

-- Tabella commenti alle segnalazioni
CREATE TABLE commenti (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_segnalazione INT,
    id_utente INT,
    contenuto TEXT,
    data_commento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_segnalazione) REFERENCES segnalazioni(id) ON DELETE CASCADE,
    FOREIGN KEY (id_utente) REFERENCES utenti(id) ON DELETE CASCADE
);
