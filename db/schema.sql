CREATE TABLE formations(id INTEGER PRIMARY KEY AUTOINCREMENT,code TEXT NOT NULL UNIQUE,name TEXT NOT NULL,level TEXT NOT NULL,description TEXT NOT NULL DEFAULT '');
CREATE TABLE students(id INTEGER PRIMARY KEY AUTOINCREMENT,student_number TEXT NOT NULL UNIQUE,first_name TEXT NOT NULL,last_name TEXT NOT NULL,email TEXT NOT NULL UNIQUE,birth_date TEXT NOT NULL);
CREATE TABLE courses(id INTEGER PRIMARY KEY AUTOINCREMENT,code TEXT NOT NULL UNIQUE,name TEXT NOT NULL,semester INTEGER NOT NULL CHECK(semester BETWEEN 1 AND 10),formation_id INTEGER NOT NULL,FOREIGN KEY(formation_id) REFERENCES formations(id));
CREATE TABLE registrations(id INTEGER PRIMARY KEY AUTOINCREMENT,student_id INTEGER NOT NULL,formation_id INTEGER NOT NULL,academic_year TEXT NOT NULL,UNIQUE(student_id,academic_year),FOREIGN KEY(student_id) REFERENCES students(id),FOREIGN KEY(formation_id) REFERENCES formations(id));



-- Création de la table teachers
CREATE TABLE teachers(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    first_name TEXT NOT NULL, 
    last_name TEXT NOT NULL, 
    email TEXT UNIQUE NOT NULL
);

-- Ajout de données de test (Question 1)
INSERT INTO teachers (first_name, last_name, email) VALUES ('Alan', 'Turing', 'alan.turing@ecole.fr');
INSERT INTO formations (code, name, level) VALUES ('INFO1', 'Licence Informatique', 'L1');
-- (Tu peux rajouter des INSERT pour les autres tables selon le même modèle)