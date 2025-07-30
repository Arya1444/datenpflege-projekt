-- Tabelle für Kunden
CREATE TABLE kunden (
id INTEGER PRIMARY KEY,
name TEXT NOT NULL, --Name muss eingetragen werden, darf nicht leer sein.
email TEXT UNIQUE --Einzigartigkeitsregel
); 
-- Tabelle für Aufträge
CREATE TABLE auftraege (
  id INTEGER PRIMARY KEY,
  kunde_id INTEGER NOT NULL,-- Verknüpft Aufträge mit einem Kunden
  auftragsdatum DATE,
  status TEXT,
  FOREIGN KEY (kunde_id) REFERENCES kunden(id)-- Fremdschlüssel: verbindet die Tabellen
  );
-- Tabelle für Kontaktpersonen z.Bsp. Firmen
CREATE TABLE kontaktpersonen (
  id INTEGER PRIMARY KEY,
  kunde_id INTEGER NOT NULL, -- Verknüpft Kontaktpersonen mit einem Kunden
  name TEXT NOT NULL,
  telefon TEXT,
  email TEXT,
  FOREIGN KEY (kunde_id) REFERENCES kunden(id)-- Fremdschlüssel: ordnet die Kontaktperson einem Kunden zu
);

-- Tabellen sind erstellt, jetzt fügen wir Daten ein

-- Daten für kunden
INSERT INTO kunden (id, Name, email) VALUES ('1', 'Alice', 'alice@example.com');
INSERT INTO kunden (id, Name, email) VALUES ('2', 'John',  'john@example.com');
INSERT INTO kunden (id, Name, email) VALUES ('3', 'Travel', 'travel@example.com');

-- Daten für Aufträge
INSERT INTO auftraege (id, kunde_id, auftragsdatum, status) VALUES (1, 1, '2025-07-01', 'offen');
INSERT INTO auftraege (id, kunde_id, auftragsdatum, status) VALUES (2, 2, '2025-06-15', 'in_Bearbeitung');
INSERT INTO auftraege (id, kunde_id, auftragsdatum, status) VALUES (3, 3, '2025-06-01', 'abgeschlossen');

-- Daten für Kontaktperson
INSERT INTO kontaktpersonen (id, kunde_id, name, telefon, email) VALUES (1, 1, 'Anna Schmidt', '0321-777657', 'anna@example.de');
INSERT INTO kontaktpersonen (id, kunde_id, name, telefon, email) VALUES (2, 2, 'Max Mueller', '0789-111542', 'max@example.de');
