USE ������������������;
GO

-- 1. ������� ������ �� ������ ������� (SQL Server ��������������)
CREATE LOGIN [admin_login] WITH PASSWORD = 'SPas1';
CREATE LOGIN [master_login] WITH PASSWORD = 'SPas2';
CREATE LOGIN [client_login] WITH PASSWORD = 'SPas3';
CREATE LOGIN [operator_login] WITH PASSWORD = 'SPas4';

-- �������� �����
CREATE ROLE �������������;
CREATE ROLE ������;
CREATE ROLE ������;
CREATE ROLE ��������;
GO
-- ���������� ������������� ���� ������ (������, �������������� ��� ������ ��� ����������)
-- �������� ������������� (������ ��� ������������)

CREATE USER [admin_user] FOR LOGIN [admin_login];
CREATE USER [master_user] FOR LOGIN [master_login];
CREATE USER [client_user] FOR LOGIN [client_login];
CREATE USER [operator_user] FOR LOGIN [operator_login];
GO

-- ���������� ������������� � ����
EXEC sp_addrolemember '�������������', 'admin_user';
EXEC sp_addrolemember '������', 'master_user';
EXEC sp_addrolemember '������', 'client_user';
EXEC sp_addrolemember '��������', 'operator_user';
GO

-- ���������� ���� �����

-- ������������� � ������ ������
GRANT SELECT, INSERT, UPDATE, DELETE ON ������� TO �������������;
GRANT SELECT, INSERT, UPDATE, DELETE ON ������� TO �������������;
GRANT SELECT, INSERT, UPDATE, DELETE ON ������� TO �������������;
GRANT SELECT, INSERT, UPDATE, DELETE ON ������ TO �������������;
GRANT SELECT, INSERT, UPDATE, DELETE ON ������ TO �������������;
GRANT SELECT, INSERT, UPDATE, DELETE ON ������� TO �������������;

-- ������ � ������ ������ � ����� ������, ���������� ����� ������
GRANT SELECT ON ������� TO ������;
GRANT SELECT, UPDATE ON ������ TO ������;
GRANT SELECT ON ������� TO ������;
GRANT SELECT ON ������� TO ������;

-- ������ � ������ � �������� ����� ������, ������ ����� ������
GRANT SELECT ON ������� TO ������;
GRANT SELECT, INSERT ON ������ TO ������;
GRANT SELECT ON ������� TO ������;
GRANT SELECT ON ������ TO ������;

-- �������� � �������� � ������ ������, �������� �������� � �������
GRANT SELECT, INSERT ON ������ TO ��������;
GRANT SELECT ON ������� TO ��������;
GRANT SELECT ON ������� TO ��������;
GO
