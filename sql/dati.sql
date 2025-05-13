USE greencity;

-- Inserisci utenti
INSERT INTO utenti (nome, email, ruolo, password_hash)
VALUES 
('Anna Rossi', 'anna.rossi@email.com', 'cittadino', 'hash1'),
('Marco Verdi', 'marco.verdi@email.com', 'ente', 'hash2'),
('EcoFuture Srl', 'info@ecofuture.it', 'azienda', 'hash3');

-- Inserisci segnalazioni
INSERT INTO segnalazioni (id_utente, titolo, descrizione, categoria, latitudine, longitudine)
VALUES 
(1, 'Discarica abusiva', 'Presenza di rifiuti in un campo vicino alla stazione.', 'rifiuti', 45.4642, 9.1900),
(1, 'Fumo sospetto', 'Fumo nero proveniente da una fabbrica dismessa.', 'inquinamento', 45.4668, 9.1902);

-- Inserisci iniziative
INSERT INTO iniziative (titolo, descrizione, data_evento, luogo, organizzatore)
VALUES 
('Pulizia del Parco Nord', 'Giornata di volontariato per ripulire il parco.', '2025-06-15', 'Parco Nord Milano', 2),
('Piantumazione alberi', 'Iniziativa di riforestazione urbana.', '2025-06-22', 'Via delle Betulle, 10', 3);

-- Inserisci partecipazioni
INSERT INTO partecipazioni (id_utente, id_iniziativa)
VALUES 
(1, 1),
(1, 2),
(2, 2);

-- Inserisci commenti
INSERT INTO commenti (id_segnalazione, id_utente, contenuto)
VALUES 
(1, 2, 'Grazie per la segnalazione, provvederemo a inviare una pattuglia.'),
(2, 3, 'Abbiamo già avvisato le autorità competenti.');

