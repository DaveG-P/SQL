-- Add regions to tables where players are fromAtletic_Club

CREATE DATABASE La_Liga;

USE La_Liga;

CREATE table Teams (
	ID int(50) AUTO_INCREMENT,
    Equipo VARCHAR(30), 
    Com_Autonoma VARCHAR(30),
    Provencia VARCHAR(30),
    Cuidad VARCHAR(30), 
    Estadio VARCHAR(30), 
    Primary KEY(ID)
);

INSERT INTO Teams(Equipo, Com_Autonoma, Provencia, Cuidad, Estadio)
VALUES ("Atheltic Club", "Pais Vasco", "Viscaya", "Bilbao", "San Mames"),
("Atletico de Madrid", "Communidad de Madrid", "Madrid", "Madrid", "Wanda Metropolitano" ),
("C.D. Leganes", "Communidad de Madrid", "Madrid", "Leganes", "Butarque"),
("Deportivo Avales", "Pais Vasco", "Alava", "Vitoria", "Mendizorroza"),
("F.C Barcelona", "Cataluna", "Barcelona", "Barcelona", "Camp Nou"),
("Getafe C.F", "Communidad de Madrid", "Madrid", "Getafe", "Alfonso Perez"),
("Girona F.C", "Cataluna", "Gerona", "Girona", "Montilivi"),
("Levante U.D", "Comunidad Valenciana", "Valencia", "Valencia", "Cuidad de Valencia"),
("R.C. Celta de Vigo", "Galicia", "Pontevedra", "Vigo", "Abanca Balaidos"),
("R.C.D Espanyol", "Cataluna", "Barcelona", "Cornella de LLobregat", "RCDE Stadium"),
("Rayo Vallecano", "Communidad de Madrid", "Madrid", "Madrid", "Campo de Vallecas"),
("Real Betis Balompe", "Andalucia", "Sevilla", "Sevilla", "Benito Villamarin"),
("Real Madrid", "Communidad de Madrid", "Madrid", "Madrid", "Santiago Bernabeu"),
("Real Sociedad", "Pais Vasco", "Guipuizcoa", "San Sebastian", "Anoeta"),
("Real Valladolid", "Castilla y Leon", "Valladolid", "Valladolid", "Estadio Jose Zorilla"),
("S.D. Eibar", "Pais Vasco", "Guipuzcoa", "Eibar", "Ipurua"), 
("S.D. Huesca", "Aragon", "Huesca", "Huesca", "Estadio El Alcoreaz"),
("Sevilla F.C", "Anadalucia", "Sevilla", "Sevilla", "Ramon Sanchez Pizjuan"),
("Valencia C.F.", "Comunidad Valenciana", "Valencia", "Valencia", "Mestalla"),
("Villareal F.C.", "Comunidad Valenciana", "Castellon", "Villareal", "Estadio de Ceramica");

SELECT * FROM Teams;

Create Table Atletico_Madrid (
	ID int(35) auto_increment,
    Posicion VARCHAR(5),
    Dorsal INT(90),
    Nombre VARCHAR(40), 
    Nacional VARCHAR(50),
    primary key(ID)
);

INSERT INTO Atletico_Madrid (Posicion, Dorsal, Nombre, Nacional)
VALUES 
("POR", 1,  "Antomio Adan", "Espana"),
("POR", 13, "Jan Oblak","Eslovenia"),
("DEF", 2,  "Diego Godin", "Uruguay"),
("DEF", 3,  "Felipe Luis", "Brazil"),
("DEF", 4,  "Santiago Arias", "Colombia"),
("DEF", 15, "Stefan Savic", "Yugoslavia"),
("DEF", 20, "Juanfran Torres", "Espana"),
("DEF", 21, "Lucas Hernandez", "Francia"),
("DEF", 24, "Jose Gimenez", "Uruguay"),
("DEF", 35, "Francisco Martiniez", "Espana"),
("MED", 5,  "Thomas Partey", "Ghana"),
("MED", 6,  "Koke Resurreccion", "Espana"),
("MED", 8,  "Saul Niguez", "Espana"),
("MED", 11, "Thomas Lemar", "Francia"),
("MED", 14, "Rodri Hernandez", "Espana"),
("MED", 23, "Vitolo Machin", "Espana"),
("DEL", 7,  "Antione Griezmann", "Francia"),
("DEL", 9,  "Nikola Kalinic", "Croacia"),
("DEL", 10, "Angel Correa", "Argentina"),
("DEL", 19, "Diego Costa", "Espana"),
("DEL", 22, "Alavaro Morata", "Espana");

SELECT * FROM Atletico_Madrid;

Create Table Atletic_Club (
	ID int(35) auto_increment,
    Posicion VARCHAR(5),
    Dorsal INT(90),
    Nombre VARCHAR(40), 
    Nacional VARCHAR(50), 
    primary key(ID)
);

INSERT INTO Atletic_Club (Posicion, Dorsal, Nombre, Nacional)
VALUES 
("POR", 1,  "Alex Remiro", "Espana"),
("POR", 13, "Iago Herrerin","Espana"),
("POR", 25, "Unai Simon", "Espana"),
("DEF", 3,  "Unai Nunez", "Espana"),
("DEF", 4,  "Inigo Martinez", "Espana"),
("DEF", 5,  "Yeray Alvarez", "Espana"),
("DEF", 12, "Yuri Berchiche", "Espana"),
("DEF", 15, "Inigo Lekue", "Espana"),
("DEF", 18, "Oscar de Marcos", "Espana"),
("DEF", 21, "Ander Capa", "Espana"),
("DEF", 24, "Mikei Balenziaga", "Espana"),
("DEF", 31, "Peru Nolaskoain", "Espana"),
("MED", 6,  "Mikei San Jose", "Espana"),
("MED", 7,  "Benat Etxebarria", "Espana"),
("MED", 8,  "Ander Iturraspe", "Espana"),
("MED", 10, "Iker Munian", "Espana"),
("MED", 16, "Dani Garcia", "Espana"),
("MED", 17, "Mikai Rico", "Espana"),
("MED", 22, "Raul Garcia", "Espana"),
("MED", 23, "Unai Lopez", "Espana"),
("DEL", 9,  "Inaki Williams", "Espana"),
("DEL", 2,  "Kenan Kodro", "Espana"),
("DEL", 11, "Inigo Cordoba", "Espana"),
("DEL", 14, "Markel Susaeta", "Espana"),
("DEL", 19, "Ibai Gomez", "Espana"),
("DEL", 20, "Aritz Aduriz", "Espana"),
("DEL", 30, "Gorka Guruzeta", "Espana");
SELECT * FROM Atletic_Club;

Create Table Leganes (
	ID int(35) auto_increment,
    Posicion VARCHAR(5),
    Dorsal INT(90),
    Nombre VARCHAR(40), 
    Nacional VARCHAR(50), 
    primary key(ID)
);

Create Table Avales (
	ID int(35) auto_increment,
    Posicion VARCHAR(5),
    Dorsal INT(90),
    Nombre VARCHAR(40), 
    Nacional VARCHAR(50), 
    primary key(ID)
);

Create Table Barcelona (
	ID int(35) auto_increment,
    Posicion VARCHAR(5),
    Dorsal INT(90),
    Nombre VARCHAR(40), 
    Nacional VARCHAR(50), 
    primary key(ID)
);

Create Table Getafe (
	ID int(35) auto_increment,
    Posicion VARCHAR(5),
    Dorsal INT(90),
    Nombre VARCHAR(40), 
    Nacional VARCHAR(50), 
    primary key(ID)
);

Create Table Girona (
	ID int(35) auto_increment,
    Posicion VARCHAR(5),
    Dorsal INT(90),
    Nombre VARCHAR(40), 
    Nacional VARCHAR(50), 
    primary key(ID)
);

Create Table Levante (
	ID int(35) auto_increment,
    Posicion VARCHAR(5),
    Dorsal INT(90),
    Nombre VARCHAR(40), 
    Nacional VARCHAR(50), 
    primary key(ID)
);

Create Table Celta_Vigo (
	ID int(35) auto_increment,
    Posicion VARCHAR(5),
    Dorsal INT(90),
    Nombre VARCHAR(40), 
    Nacional VARCHAR(50), 
    primary key(ID)
);

Create Table Espanyol (
	ID int(35) auto_increment,
    Posicion VARCHAR(5),
    Dorsal INT(90),
    Nombre VARCHAR(40), 
    Nacional VARCHAR(50), 
    primary key(ID)
);

Create Table Rayo_Vallecano (
	ID int(35) auto_increment,
    Posicion VARCHAR(5),
    Dorsal INT(90),
    Nombre VARCHAR(40), 
    Nacional VARCHAR(50), 
    primary key(ID)
);

Create Table Real_Betis (
	ID int(35) auto_increment,
    Posicion VARCHAR(5),
    Dorsal INT(90),
    Nombre VARCHAR(40), 
    Nacional VARCHAR(50), 
    primary key(ID)
);

Create Table Real_Madrid (
	ID int(35) auto_increment,
    Posicion VARCHAR(5),
    Dorsal INT(90),
    Nombre VARCHAR(40), 
    Nacional VARCHAR(50), 
    primary key(ID)
);

Create Table Real_Sociedad (
	ID int(35) auto_increment,
    Posicion VARCHAR(5),
    Dorsal INT(90),
    Nombre VARCHAR(40), 
    Nacional VARCHAR(50), 
    primary key(ID)
);

Create Table Real_Valladolid (
	ID int(35) auto_increment,
    Posicion VARCHAR(5),
    Dorsal INT(90),
    Nombre VARCHAR(40), 
    Nacional VARCHAR(50), 
    primary key(ID)
);

Create Table Eibar (
	ID int(35) auto_increment,
    Posicion VARCHAR(5),
    Dorsal INT(90),
    Nombre VARCHAR(40), 
    Nacional VARCHAR(50), 
    primary key(ID)
);

Create Table Huesca (
	ID int(35) auto_increment,
    Posicion VARCHAR(5),
    Dorsal INT(90),
    Nombre VARCHAR(40), 
    Nacional VARCHAR(50), 
    primary key(ID)
);

Create Table Sevilla (
	ID int(35) auto_increment,
    Posicion VARCHAR(5),
    Dorsal INT(90),
    Nombre VARCHAR(40), 
    Nacional VARCHAR(50), 
    primary key(ID)
);

Create Table Valencia (
	ID int(35) auto_increment,
    Posicion VARCHAR(5),
    Dorsal INT(90),
    Nombre VARCHAR(40), 
    Nacional VARCHAR(50), 
    primary key(ID)
);

Create Table Villareal (
	ID int(35) auto_increment,
    Posicion VARCHAR(5),
    Dorsal INT(90),
    Nombre VARCHAR(40), 
    Nacional VARCHAR(50), 
    primary key(ID)
);