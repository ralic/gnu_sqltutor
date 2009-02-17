/* 
   This file is part of GNU Sqltutor
   Copyright (C) 2008  Ales Cepek <cepek@gnu.org>
 
   GNU Sqltutor is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   GNU Sqltutor is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with GNU Sqltutor.  If not, see <http://www.gnu.org/licenses/>.
 */


SET search_path TO sqltutor;

DROP TABLE Pracoviste CASCADE;
DROP TABLE Zamestnanci CASCADE;
DROP TABLE Mzdy CASCADE;

CREATE TABLE Pracoviste(
  kod char(2) PRIMARY KEY,
  popis varchar(20) UNIQUE NOT NULL CHECK (popis <> '')
);

CREATE TABLE Zamestnanci(
  id SERIAL PRIMARY KEY,
  jmeno varchar(20) NOT NULL CHECK (jmeno <> ''),
  prijmeni varchar(20) NOT NULL CHECK (prijmeni <> ''),
  pracoviste_kod char(2) NOT NULL REFERENCES pracoviste(kod),
  vek integer NOT NULL CHECK(vek > 0)
);

CREATE TABLE Mzdy(
  id SERIAL PRIMARY KEY,
  vlozeno date NOT NULL DEFAULT(CURRENT_DATE),
  zamestnanec_id integer NOT NULL REFERENCES Zamestnanci(id),
  castka NUMERIC(8,2) NOT NULL CHECK (castka > 0.0)
);

INSERT INTO Pracoviste VALUES('kc','Konstrukce');
INSERT INTO Pracoviste VALUES('pr','Provoz');
INSERT INTO Pracoviste VALUES('sk','Sekretariat');
INSERT INTO Pracoviste VALUES('vy','Vyroba');
INSERT INTO Pracoviste VALUES('it','Informatika');

-- SELECT * FROM Pracoviste;

INSERT INTO Zamestnanci(jmeno, prijmeni, pracoviste_kod, vek) VALUES('Pavel', 'Stehule', 'it',33);
INSERT INTO Zamestnanci(jmeno, prijmeni, pracoviste_kod, vek) VALUES('Radek', 'Hirjak', 'kc', 32);
INSERT INTO Zamestnanci(jmeno, prijmeni, pracoviste_kod, vek) VALUES('Jan', 'Pytel', 'it', 31);
INSERT INTO Zamestnanci(jmeno, prijmeni, pracoviste_kod, vek) VALUES('Zdenek', 'Stehule', 'vy', 28);
INSERT INTO Zamestnanci(jmeno, prijmeni, pracoviste_kod, vek) VALUES('Lucie', 'Kubikova', 'sk', 25);
INSERT INTO Zamestnanci(jmeno, prijmeni, pracoviste_kod, vek) VALUES('Tomas', 'Zezula', 'sk', 45);

-- SELECT * FROM Zamestnanci;

INSERT INTO Mzdy VALUES(DEFAULT, '2007-01-01', 1, 30000);
INSERT INTO Mzdy VALUES(DEFAULT, '2007-01-01', 2, 25000);
INSERT INTO Mzdy VALUES(DEFAULT, '2007-01-01', 3, 28000);
INSERT INTO Mzdy VALUES(DEFAULT, '2007-01-01', 4, 20000);
INSERT INTO Mzdy VALUES(DEFAULT, '2007-01-01', 5, 18000);
INSERT INTO Mzdy VALUES(DEFAULT, '2007-01-01', 6, 50000);

INSERT INTO Mzdy VALUES(DEFAULT, '2007-02-01', 1, 30000);
INSERT INTO Mzdy VALUES(DEFAULT, '2007-02-01', 2, 25000);
INSERT INTO Mzdy VALUES(DEFAULT, '2007-02-01', 3, 30000);
INSERT INTO Mzdy VALUES(DEFAULT, '2007-02-01', 4, 20000);
INSERT INTO Mzdy VALUES(DEFAULT, '2007-02-01', 5, 18000);
INSERT INTO Mzdy VALUES(DEFAULT, '2007-02-01', 6, 50000);

INSERT INTO Mzdy VALUES(DEFAULT, '2007-03-01', 1, 31000);
INSERT INTO Mzdy VALUES(DEFAULT, '2007-03-01', 2, 26000);
INSERT INTO Mzdy VALUES(DEFAULT, '2007-03-01', 3, 31000);
INSERT INTO Mzdy VALUES(DEFAULT, '2007-03-01', 4, 20000);
INSERT INTO Mzdy VALUES(DEFAULT, '2007-03-01', 5, 19000);
INSERT INTO Mzdy VALUES(DEFAULT, '2007-03-01', 6, 60000);

INSERT INTO Mzdy VALUES(DEFAULT, '2007-04-01', 1, 30500);
INSERT INTO Mzdy VALUES(DEFAULT, '2007-04-01', 2, 25000);
INSERT INTO Mzdy VALUES(DEFAULT, '2007-04-01', 3, 28000);
INSERT INTO Mzdy VALUES(DEFAULT, '2007-04-01', 4, 20000);
INSERT INTO Mzdy VALUES(DEFAULT, '2007-04-01', 6, 51000);

-- SELECT * FROM Mzdy;