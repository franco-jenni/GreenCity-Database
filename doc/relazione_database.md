# Relazione del Database - GreenCity

Il database del progetto GreenCity è progettato per supportare le seguenti funzionalità:

## Tabelle principali

### `utenti`
Contiene i dati degli utenti registrati (cittadini, enti, aziende).

### `segnalazioni`
Raccoglie segnalazioni ambientali geolocalizzate effettuate dai cittadini.

### `iniziative`
Eventi e progetti ambientali promossi da enti/aziende.

### `partecipazioni`
Gestisce la relazione molti-a-molti tra utenti e iniziative.

### `commenti`
Permette agli utenti di commentare le segnalazioni.

## Vincoli

- Le tabelle usano chiavi esterne per mantenere integrità referenziale.
- Le date sono salvate automaticamente con `CURRENT_TIMESTAMP`.
- Gli utenti sono tipizzati per ruolo (`ENUM`).

---

## Pronto all'Uso

Puoi eseguire lo script in un ambiente MySQL o caricarlo su un'app come DBeaver o phpMyAdmin.
