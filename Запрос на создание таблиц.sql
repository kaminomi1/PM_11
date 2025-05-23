CREATE DATABASE СервисЦентрРемонта
COLLATE Cyrillic_General_CI_AS;
GO

USE СервисЦентрРемонта;
GO

CREATE TABLE Клиенты (
    ID_Клиента INT IDENTITY(1,1) PRIMARY KEY,
    ФИО NVARCHAR(100) NOT NULL,
    Телефон NVARCHAR(20),
    Email NVARCHAR(50),
    Адрес NVARCHAR(200)
);

CREATE TABLE Мастера (
    ID_Мастера INT IDENTITY(1,1) PRIMARY KEY,
    ФИО NVARCHAR(100) NOT NULL,
    Телефон NVARCHAR(20),
    Специализация NVARCHAR(100)
);

CREATE TABLE Техника (
    ID_Техники INT IDENTITY(1,1) PRIMARY KEY,
    ID_Клиента INT NOT NULL FOREIGN KEY REFERENCES Клиенты(ID_Клиента),
    Тип_техники NVARCHAR(50) NOT NULL,
    Модель NVARCHAR(100) NOT NULL,
    Серийный_номер NVARCHAR(50),
    Дата_покупки DATE
);

CREATE TABLE Статусы (
    ID_Статуса INT IDENTITY(1,1) PRIMARY KEY,
    Название NVARCHAR(50) NOT NULL
);

CREATE TABLE Заявки (
    ID_Заявки INT IDENTITY(1,1) PRIMARY KEY,
    ID_Клиента INT NOT NULL FOREIGN KEY REFERENCES Клиенты(ID_Клиента),
    ID_Техники INT NOT NULL FOREIGN KEY REFERENCES Техника(ID_Техники),
    ID_Мастера INT NOT NULL FOREIGN KEY REFERENCES Мастера(ID_Мастера),
    ID_Статуса INT NOT NULL FOREIGN KEY REFERENCES Статусы(ID_Статуса),
    Дата_создания DATETIME NOT NULL,
    Описание_проблемы NVARCHAR(MAX),
    Стоимость DECIMAL(10, 2),
    Дата_завершения DATETIME
);

CREATE TABLE Оплаты (
    ID_Оплаты INT IDENTITY(1,1) PRIMARY KEY,
    ID_Заявки INT NOT NULL FOREIGN KEY REFERENCES Заявки(ID_Заявки),
    Сумма DECIMAL(10, 2) NOT NULL,
    Дата_оплаты DATETIME NOT NULL,
    Способ_оплаты NVARCHAR(50)
);
GO
