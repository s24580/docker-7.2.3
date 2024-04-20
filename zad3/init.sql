-- Ustawienie uprawnień, aby każdy mógł używać tej bazy danych i tabel
-- To jest szczególnie ważne w środowisku Docker, gdzie różne procesy mogą mieć różne uprawnienia
-- Oczywiście, w środowisku produkcyjnym będziesz chciał to ograniczyć
SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

-- Upewniamy się, że nie ma już takiej tabeli, żeby uniknąć błędów
DROP TABLE IF EXISTS data_table;

-- Tworzenie tabeli
CREATE TABLE data_table (
    id SERIAL PRIMARY KEY,
    text VARCHAR(255),
    number INTEGER
);

-- Wypełnianie tabeli danymi
INSERT INTO data_table (text, number) VALUES ('Sample text 1', 100);
INSERT INTO data_table (text, number) VALUES ('Sample text 2', 150);
INSERT INTO data_table (text, number) VALUES ('Sample text 3', 200);

-- Potwierdzanie wszystkich operacji na koniec skryptu
COMMIT;
