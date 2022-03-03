CREATE TABLE employees (id INTEGER PRIMARY KEY AUTOINCREMENT,names VARCHAR(30),lastnames VARCHAR(30),ruc VARCHAR(10),phone VARCHAR(10),email VARCHAR(20), address VARCHAR(50));
CREATE TABLE rol(id INTEGER PRIMARY key AUTOINCREMENT,rol VARCHAR(15),description VARCHAR(100));
CREATE TABLE users(id INTEGER primary key AUTOINCREMENT, user VARCHAR(10), password VARCHAR(10), REFERENCES employees (id), FOREIGN KEY (rol_id) REFERENCES rol (id));
CREATE TABLE dishes (id INTEGER PRIMARY KEY AUTOINCREMENT, name VARCHAR(50),description VARCHAR(100));
CREATE TABLE menu_daily(id INTEGER PRIMARY KEY AUTOINCREMENT, date_menu DATE, quantity INTEGER, dish_id INTEGER, FOREIGN KEY (dish_id) REFERENCES dishes(id));
create table reservations(id INTEGER PRIMARY key AUTOINCREMENT,date_reservation DATE,menu_id INTEGER, FOREIGN KEY (user_id) REFERENCES users(id));

INSERT INTO EMPLOYEERS 
    (names, lastnames,ruc,phone,email,address) 
VALUES
    ('Kim', 'Muñoz','099999991','0111111111','kim@email.com','Gatilandia'),
    ('Erika Cristina', 'Muñoz','099999992','0111111112','erika@email.com','Dragonlandia'),
    ('Nancy', 'Chalen','099999993','0111111113','nancy@email.com','Amorlandia'),
    ('Roberto', 'Zak','099999994','0111111114','zac@email.com','Gamerlandia'),
    ('Papo', 'Muñoz','099999995','0111111115','papo@email.com','Bunnylandia'),
    ('Luisa', 'Cepeda','099999996','0111111116','luisa@email.com','Galapagolandia'),
    ('Karen', 'Cepeda','099999997','0111111117','karen@email.com','Gandilandia');


INSERT INTO rol 
    (rol, description) 
VALUES
    ('Admin', 'Manage everything(users,dishes,menu)'),
    ('Kitchen', 'In charge of control the users recieve their food with data form the web'),
    ('User', 'They choose their weekly food from the web');

INSERT INTO users 
    (user, password,employee_id,rol_id) 
VALUES
    ('kim1', '123',1,1),
    ('eri2', '123',2,2),
    ('nan3', '123',3,3);

INSERT INTO dishes 
    (name, description) 
VALUES
    ('Seco de Pollo', 'Arroz amarillo con pollo y maduro'),
    ('Guatita', 'Arroz y guatita jugosa'),
    ('Caldo de Bola', 'Caldo de bola de verde con carne y choclo');

INSERT INTO menu_daily 
    (date_menu, quantity,dish_id) 
VALUES
    ('02/03/2022', 10,1),
    ('03/03/2022', 10,1),
    ('03/03/2022', 7,2),
    ('04/03/2022', 2,3),
    ('04/03/2022', 1,2),
    ('05/03/2022', 5,1);

INSERT INTO reservations 
    (date_reservation, menu_id,user_id) 
VALUES
    ('02/03/2022', 1,3),
    ('03/03/2022', 2,3),
    ('03/03/2022', 3,4),
    ('04/03/2022', 5,3),
    ('04/03/2022', 4,4),
    ('05/03/2022', 6,4);