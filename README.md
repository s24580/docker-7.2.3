##Opis
SUT - System Under Test
Projekt tworzy 3 kontenery Dockerowe:
Express.js z aplikacją, zawierającą proste API
Postgress z bazą danych i kilkoma rekordami
Jasmine z testami naszej aplikacji
##Uruchomienie
Sklonuj repozytorium na twój komputer
Aby uruchomić projekt uruchom plik 'skrypt2.sh', jednak zanim to zrobisz upewnij się,
że na twoim komputerze zainstalowany jest Docker.
'skrypt2.sh' utworzy wszystkie potrzebne obrazy oraz kontenery,
a także uruchomi testy.
Jesli chcesz przetestować aplikację manualnie, możesz wejsć w adresy:


http://localhost:3000/people/


http://localhost:3000/people/1


http://localhost:3000/average
