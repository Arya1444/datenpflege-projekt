--Alle Kunden anzeigen:
SELECT * FROM kunden;

--Alle Aufträge eines ausgewählten Kunden anzeigen, hier als Beispiel id=1:



-- Zeigt alle Kontaktpersonen und den zugehörigen Kunden
SELECT k.name AS kontaktname, ku.name AS kundenname, k.telefon, k.email
FROM kontaktpersonen k
JOIN kunden ku ON k.kunde_id = ku.id;
