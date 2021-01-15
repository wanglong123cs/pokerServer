USE master;
GO
CREATE DATABASE LandlordDB
ON 
( NAME = LandlordDB,
    FILENAME = 'D:\\Study\\Android\\poker_server\\pokerServer\\LandlordDB.mdf',
    SIZE = 5MB,
    MAXSIZE = 50MB,
    FILEGROWTH = 1MB )
LOG ON
( NAME = RSGLXT_log,
    FILENAME = 'D:\\Study\\Android\\poker_server\\pokerServer\\LandlordDB.ldf',
    SIZE = 3MB,
    MAXSIZE = 25MB,
    FILEGROWTH = 1MB )
		COLLATE Chinese_PRC_CI_AS;		--�����ִ�Сд
GO

USE LandlordDB
CREATE TABLE USER_Table					  --�û���
(
username nvarchar(15) not null primary key,   --����û���
password nvarchar(20) null,						--�������

name nvarchar(10) null,		--�����
sex bit null default 1,				   --����Ա�
score int null default 0,				--��ҵĻ���
image int null default 0,				--��ҵ�ͼƬ
)

CREATE UNIQUE INDEX USERNAME_INDEX ON USER_Table(USERNAME);	--���û�������������