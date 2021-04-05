-- Создаем пользователя для новой БД
CREATE USER 'bestuser'@'localhost' IDENTIFIED BY 'bestuser';

-- Назначаем права доступа
GRANT ALL PRIVILEGES ON *.* TO 'bestuser'@'localhost';

-- Создаем БД
CREATE DATABASE my_db;
ALTER SCHEMA `my_db`  DEFAULT COLLATE utf8mb4_unicode_520_ci ;
USE my_db;

-- Создание рабочих таблиц и заполнение тестовыми данными
CREATE TABLE employees
(
    id         int NOT NULL AUTO_INCREMENT,
    name       varchar(15),
    surname    varchar(25),
    patronymic varchar(25),
    position varchar(25),
    department varchar(50),
    city varchar(25),
    phoneGaz varchar(25),
    phoneMobile varchar(15),
    email varchar(50),
    PRIMARY KEY (id)
);

INSERT INTO my_db.employees (name, surname, patronymic, position, department, city,phoneGaz, phoneMobile,email )
VALUES ('Иван', 'Иванов', 'Иванович', 'Начальник управления','Учетно контрольная группа','Сургут','75-35-14','8-932-400-55-44','somemail@gmail.com');

CREATE TABLE Vacancies
(
    id           int NOT NULL AUTO_INCREMENT,
    vacancy      varchar(50),
    description  varchar(300),
    requirements varchar(300),
    conditions   varchar(300),
    contacts     varchar(300),
    PRIMARY KEY (id)
);

INSERT INTO my_db.Vacancies (vacancy, description, requirements, conditions, contacts)
VALUES ('Повар',
        'Приготовление блюд, полуфабрикатов и кулинарных изделий
Соблюдение стандартов организации
Порционирование блюд, обслуживание гостей на раздаче
Участие в составлении меню, и заявок на сырье
',
        'Наличие профессионального образования
Опыт работы от 3-х лет
Умение работать со сборниками рецептур
Наличие медицинской книжки
',
        'Полный рабочий день, график 5/2
Соц. пакет
Конкурентоспособная заработная плата, обсуждается на собеседовании
',
        '+ 7 (3462) 75-34-48
kadr@gaztorg.org.ru
');

