CREATE DATABASE ������������������
COLLATE Cyrillic_General_CI_AS;
GO

USE ������������������;
GO

CREATE TABLE ������� (
    ID_������� INT IDENTITY(1,1) PRIMARY KEY,
    ��� NVARCHAR(100) NOT NULL,
    ������� NVARCHAR(20),
    Email NVARCHAR(50),
    ����� NVARCHAR(200)
);

CREATE TABLE ������� (
    ID_������� INT IDENTITY(1,1) PRIMARY KEY,
    ��� NVARCHAR(100) NOT NULL,
    ������� NVARCHAR(20),
    ������������� NVARCHAR(100)
);

CREATE TABLE ������� (
    ID_������� INT IDENTITY(1,1) PRIMARY KEY,
    ID_������� INT NOT NULL FOREIGN KEY REFERENCES �������(ID_�������),
    ���_������� NVARCHAR(50) NOT NULL,
    ������ NVARCHAR(100) NOT NULL,
    ��������_����� NVARCHAR(50),
    ����_������� DATE
);

CREATE TABLE ������� (
    ID_������� INT IDENTITY(1,1) PRIMARY KEY,
    �������� NVARCHAR(50) NOT NULL
);

CREATE TABLE ������ (
    ID_������ INT IDENTITY(1,1) PRIMARY KEY,
    ID_������� INT NOT NULL FOREIGN KEY REFERENCES �������(ID_�������),
    ID_������� INT NOT NULL FOREIGN KEY REFERENCES �������(ID_�������),
    ID_������� INT NOT NULL FOREIGN KEY REFERENCES �������(ID_�������),
    ID_������� INT NOT NULL FOREIGN KEY REFERENCES �������(ID_�������),
    ����_�������� DATETIME NOT NULL,
    ��������_�������� NVARCHAR(MAX),
    ��������� DECIMAL(10, 2),
    ����_���������� DATETIME
);

CREATE TABLE ������ (
    ID_������ INT IDENTITY(1,1) PRIMARY KEY,
    ID_������ INT NOT NULL FOREIGN KEY REFERENCES ������(ID_������),
    ����� DECIMAL(10, 2) NOT NULL,
    ����_������ DATETIME NOT NULL,
    ������_������ NVARCHAR(50)
);
GO
