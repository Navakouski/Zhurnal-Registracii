CREATE TABLE [dbo].[Приложения](
	[ИнформационнаяСистема] [bigint] NOT NULL,
	[Id] [bigint] NOT NULL,
	[Наименование] [nvarchar](500) NULL,
	[Представление] [nvarchar](500) NULL,
 CONSTRAINT [PK_Приложения] PRIMARY KEY CLUSTERED 
(
	[ИнформационнаяСистема] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Компьютеры](
	[ИнформационнаяСистема] [bigint] NOT NULL,
	[Id] [bigint] NOT NULL,
	[Наименование] [nvarchar](500) NULL,
 CONSTRAINT [PK_Компьютеры] PRIMARY KEY CLUSTERED 
(
	[ИнформационнаяСистема] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[МаксималныеIDТаблиц](
	[ИнформационнаяСистема] [bigint] NOT NULL,
	[Наименование] [nvarchar](500) NOT NULL,
	[Id] [bigint] NOT NULL,
 CONSTRAINT [PK_МаксималныеIDТаблиц] PRIMARY KEY CLUSTERED 
(
	[ИнформационнаяСистема] ASC,
	[Наименование] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[События](
	[ИнформационнаяСистема] [bigint] NOT NULL,
	[Id] [bigint] NOT NULL,
	[Наименование] [nvarchar](500) NULL,
	[Представление] [nvarchar](500) NULL,
 CONSTRAINT [PK_События] PRIMARY KEY CLUSTERED 
(
	[ИнформационнаяСистема] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ИнформационныеСистемы](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Наименование] [nvarchar](250) NULL,
	[Описание] [nvarchar](500) NULL,
	[Представление] [nvarchar](500) NULL
 CONSTRAINT [PK_ИнформационныеСистемы] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Метаданные](
	[ИнформационнаяСистема] [bigint] NOT NULL,
	[Id] [bigint] NOT NULL,
	[Наименование] [nvarchar](500) NULL,
	[Uuid] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Метаданные] PRIMARY KEY CLUSTERED 
(
	[ИнформационнаяСистема] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ПервичныеПорты](
	[ИнформационнаяСистема] [bigint] NOT NULL,
	[Id] [bigint] NOT NULL,
	[Наименование] [nvarchar](500) NULL,
 CONSTRAINT [PK_ПервичныеПорты] PRIMARY KEY CLUSTERED 
(
	[ИнформационнаяСистема] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ЗаписиДанных](
	[ИнформационнаяСистема] [bigint] NOT NULL,
	[Id] [bigint] NOT NULL,
	[Период] [datetime2] NOT NULL,
	[УровеньСобытия] [bigint] NULL,
	[Соединение] [bigint] NULL,
	[Сеанс] [bigint] NULL,
	[СостояниеТранзакции] [bigint] NULL,
	[ПериодТранзакции] [datetime2] NULL,
	[ИдентификаторТранзакции] [bigint] NULL,
	[Пользователь] [bigint] NULL,
	[Компьютер] [bigint] NULL,
	[Приложение] [bigint] NULL,
	[Событие] [bigint] NULL,
	[Комментарий] [nvarchar](max) NULL,
	[Метаданные] [nvarchar](700)  NULL,
	[Данные] [nvarchar](max) NULL,
	[ИдентификаторДанных] [nvarchar](32) NULL,
	[ПредставлениеДанных] [nvarchar](200) NULL,
	[РабочийСервер] [bigint] NULL,
	[ПервичныйПорт] [bigint] NULL,
	[ДополнительныйПорт] [bigint] NULL,
 CONSTRAINT [PK_ЗаписиДанных] PRIMARY KEY CLUSTERED 
(
	[ИнформационнаяСистема] ASC,
	[Период] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[ДополнительныеПорты](
	[ИнформационнаяСистема] [bigint] NOT NULL,
	[Id] [bigint] NOT NULL,
	[Наименование] [nvarchar](500) NULL,
 CONSTRAINT [PK_ДополнительныеПорты] PRIMARY KEY CLUSTERED 
(
	[ИнформационнаяСистема] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[УровниСобытий](
	[ИнформационнаяСистема] [bigint] NOT NULL,
	[Id] [bigint] NOT NULL,
	[Представление] [nvarchar](500) NULL,
	[Имя] [nvarchar](500) NULL,
 CONSTRAINT [PK_УровниСобытий] PRIMARY KEY CLUSTERED 
(
	[ИнформационнаяСистема] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Пользователи](
	[ИнформационнаяСистема] [bigint] NOT NULL,
	[Id] [bigint] NOT NULL,
	[Наименование] [nvarchar](500) NULL,
	[Uuid] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Пользователи] PRIMARY KEY CLUSTERED 
(
	[ИнформационнаяСистема] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[РабочиеСервера](
	[ИнформационнаяСистема] [bigint] NOT NULL,
	[Id] [bigint] NOT NULL,
	[Наименование] [nvarchar](500) NULL,
 CONSTRAINT [PK_РабочиеСервера] PRIMARY KEY CLUSTERED 
(
	[ИнформационнаяСистема] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[СостоянияТранзакции](
	[ИнформационнаяСистема] [bigint] NOT NULL,
	[Id] [bigint] NOT NULL,
	[Представление] [nvarchar](500) NULL,
	[Имя] [nvarchar](500) NULL,
 CONSTRAINT [PK_СостоянияТранзакции] PRIMARY KEY CLUSTERED 
(
	[ИнформационнаяСистема] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TRIGGER Компьютеры_INSERT
ON Компьютеры
AFTER INSERT
AS
UPDATE МаксималныеIDТаблиц
SET Id = (SELECT TOP 1 MAX(Id) FROM inserted)
WHERE Наименование = 'Компьютеры' AND ИнформационнаяСистема = (SELECT TOP 1 ИнформационнаяСистема FROM inserted)
GO

CREATE TRIGGER Приложения_INSERT
ON Приложения
AFTER INSERT
AS
UPDATE МаксималныеIDТаблиц
SET Id = (SELECT TOP 1 MAX(Id) FROM inserted)
WHERE Наименование = 'Приложения' AND ИнформационнаяСистема = (SELECT TOP 1 ИнформационнаяСистема FROM inserted)
GO

CREATE TRIGGER События_INSERT
ON События
AFTER INSERT
AS
UPDATE МаксималныеIDТаблиц
SET Id = (SELECT TOP 1 MAX(Id) FROM inserted)
WHERE Наименование = 'События' AND ИнформационнаяСистема = (SELECT TOP 1 ИнформационнаяСистема FROM inserted)
GO

CREATE TRIGGER РабочиеСервера_INSERT
ON РабочиеСервера
AFTER INSERT
AS
UPDATE МаксималныеIDТаблиц
SET Id = (SELECT TOP 1 MAX(Id) FROM inserted)
WHERE Наименование = 'РабочиеСервера' AND ИнформационнаяСистема = (SELECT TOP 1 ИнформационнаяСистема FROM inserted)
GO

CREATE TRIGGER ПервичныеПорты_INSERT
ON ПервичныеПорты
AFTER INSERT
AS
UPDATE МаксималныеIDТаблиц
SET Id = (SELECT TOP 1 MAX(Id) FROM inserted)
WHERE Наименование = 'ПервичныеПорты' AND ИнформационнаяСистема = (SELECT TOP 1 ИнформационнаяСистема FROM inserted)
GO

CREATE TRIGGER ЗаписиДанных_INSERT
ON ЗаписиДанных
AFTER INSERT
AS
UPDATE МаксималныеIDТаблиц
SET Id = (SELECT TOP 1 MAX(Id) FROM inserted)
WHERE Наименование = 'ЗаписиДанных' AND ИнформационнаяСистема = (SELECT TOP 1 ИнформационнаяСистема FROM inserted)
GO

CREATE TRIGGER Пользователи_INSERT
ON Пользователи
AFTER INSERT
AS
UPDATE МаксималныеIDТаблиц
SET Id = (SELECT TOP 1 MAX(Id) FROM inserted)
WHERE Наименование = 'Пользователи' AND ИнформационнаяСистема = (SELECT TOP 1 ИнформационнаяСистема FROM inserted)
GO

CREATE TRIGGER Метаданные_INSERT
ON Метаданные
AFTER INSERT
AS
UPDATE МаксималныеIDТаблиц
SET Id = (SELECT TOP 1 MAX(Id) FROM inserted)
WHERE Наименование = 'Метаданные' AND ИнформационнаяСистема = (SELECT TOP 1 ИнформационнаяСистема FROM inserted)
GO

CREATE TRIGGER ДополнительныеПорты_INSERT
ON ДополнительныеПорты
AFTER INSERT
AS
UPDATE МаксималныеIDТаблиц
SET Id = (SELECT TOP 1 MAX(Id) FROM inserted)
WHERE Наименование = 'ДополнительныеПорты' AND ИнформационнаяСистема = (SELECT TOP 1 ИнформационнаяСистема FROM inserted)
GO

CREATE VIEW [dbo].[ПросмотрЗаписиДанных]
		                AS
		                SELECT
			                [RD].[ИнформационнаяСистема] AS [ИнформационнаяСистема],
			                [IS].[Наименование] AS [ИнформационнаяСистемаНаименование],
							[IS].[Описание] AS [ИнформационнаяСистемаОписание],
							[IS].[Представление] AS [ИнформационнаяСистемаПредставление],
			                dateadd(hour, 3, [RD].[Период]) AS Период,
			                [RD].[Id] AS [RowId],
			                [RD].[УровеньСобытия] AS [IDУровеньСобытия],
			                [SV].[Представление] AS [УровеньСобытияПредставление],
							[SV].[Имя] AS [УровеньСобытияИмя],
			                [RD].[Соединение] AS [Соединение],
			                [RD].[Сеанс],
			                [RD].[СостояниеТранзакции],
							[ST].[Представление] AS [СостояниеТранзакцииПредставление],
							[ST].[Имя] AS [СостояниеТранзакцииИмя],
			                dateadd(hour, 3, [RD].[ПериодТранзакции]) AS ПериодТранзакции,
			                [RD].[ИдентификаторТранзакции],
			                [RD].[Пользователь] AS [Пользователь],
			                [USR].[Наименование] AS [ПользовательНаименование],
			                [USR].[Uuid] AS [ПользовательUUID],
			                [RD].[Компьютер] AS [Компьютер],
			                [CMP].[Наименование] AS [КомпьютерНаименование],
							[RD].[Метаданные] AS [Метаданные],
			                [META].[Наименование] AS [МетаданныеНаименование],
			                [META].[Uuid] AS [МетаданныеИдентификаторДанных],
							[RD].[Данные],
			                [RD].[ИдентификаторДанных],
			                [RD].[ПредставлениеДанных],
			                [RD].[Комментарий],
			                [RD].[Приложение] AS [Приложение],
			                [APPS].[Наименование] AS [ПриложениеНаименование],
							[APPS].[Представление] [ПриложениеПредставление],
			                [RD].[Событие] AS [Событие],
			                [EVNT].[Наименование] AS [СобытиеНаименование],
							[EVNT].[Представление] [СобытиеПредставление],
			                [RD].[РабочийСервер] AS [РабочийСервер],
			                [WSRV].[Наименование] AS [РабочийСерверНаименование],
			                [RD].[ПервичныйПорт] AS [ПервичныйПорт],
			                [PPRT].[Наименование] AS [ПервичныйПортНаименование],
			                [RD].[ДополнительныйПорт] AS [ДополнительныйПорт],
			                [SPRT].[Наименование] AS [ДополнительныйПортНаименование]
		                FROM [dbo].[ЗаписиДанных] AS [RD]
			                LEFT JOIN [dbo].[ИнформационныеСистемы] AS [IS]
			                ON [RD].[ИнформационнаяСистема] = [IS].[Id]
			                LEFT JOIN [dbo].[УровниСобытий] AS [SV]
			                ON [RD].[ИнформационнаяСистема] = [SV].[ИнформационнаяСистема]
				                AND [RD].[УровеньСобытия] = [SV].[Id]
			                LEFT JOIN [dbo].[Пользователи] AS [USR]
			                ON [RD].[ИнформационнаяСистема] = [USR].[ИнформационнаяСистема]
				                AND [RD].[Пользователь] = [USR].[Id]
			                LEFT JOIN [dbo].[Компьютеры] AS [CMP]
			                ON [RD].[ИнформационнаяСистема] = [CMP].[ИнформационнаяСистема]
				                AND [RD].[Компьютер] = [CMP].[Id]
			                LEFT JOIN [dbo].[Приложения] AS [APPS]
			                ON [RD].[ИнформационнаяСистема] = [APPS].[ИнформационнаяСистема]
				                AND [RD].[Приложение] = [APPS].[Id]
			                LEFT JOIN [dbo].[События] AS [EVNT]
			                ON [RD].[ИнформационнаяСистема] = [EVNT].[ИнформационнаяСистема]
				                AND [RD].[Событие] = [EVNT].[Id]
			                LEFT JOIN [dbo].[Метаданные] AS [META]
			                ON [RD].[ИнформационнаяСистема] = [META].[ИнформационнаяСистема]
				                AND [RD].[Метаданные] = CAST([META].[Id] AS [nvarchar](max))
			                LEFT JOIN [dbo].[РабочиеСервера] AS [WSRV]
			                ON [RD].[ИнформационнаяСистема] = [WSRV].[ИнформационнаяСистема]
				                AND [RD].[РабочийСервер] = [WSRV].[Id]
			                LEFT JOIN [dbo].[ПервичныеПорты] AS [PPRT]
			                ON [RD].[ИнформационнаяСистема] = [PPRT].[ИнформационнаяСистема]
				                AND [RD].[ПервичныйПорт] = [PPRT].[Id]
			                LEFT JOIN [dbo].[ДополнительныеПорты] AS [SPRT]
			                ON [RD].[ИнформационнаяСистема] = [SPRT].[ИнформационнаяСистема]
				                AND [RD].[ДополнительныйПорт] = [SPRT].[Id]
							LEFT JOIN [dbo].[СостоянияТранзакции] AS [ST]
			                ON [RD].[ИнформационнаяСистема] = [ST].[ИнформационнаяСистема]
				                AND [RD].[СостояниеТранзакции] = [ST].[Id]	
GO

CREATE NONCLUSTERED INDEX [IX_Приложения_ИнформационнаяСистема_Наименование] ON [dbo].[Приложения]
(
	[ИнформационнаяСистема] ASC,
	[Наименование] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_Компьютеры_ИнформационнаяСистема_Наименование] ON [dbo].[Компьютеры]
(
	[ИнформационнаяСистема] ASC,
	[Наименование] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_События_ИнформационнаяСистема_Наименование] ON [dbo].[События]
(
	[ИнформационнаяСистема] ASC,
	[Наименование] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_Метаданные_ИнформационнаяСистема_Наименование_Uuid] ON [dbo].[Метаданные]
(
	[ИнформационнаяСистема] ASC,
	[Наименование] ASC,
	[Uuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_ПервичныеПорты_ИнформационнаяСистема_Наименование] ON [dbo].[ПервичныеПорты]
(
	[ИнформационнаяСистема] ASC,
	[Наименование] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_ЗаписиДанных_ИнформационнаяСистема_ИдентификаторДанных] ON [dbo].[ЗаписиДанных]
(
	[ИнформационнаяСистема] ASC,
	[ИдентификаторДанных] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_ЗаписиДанных_ИнформационнаяСистема_Пользователь_Период] ON [dbo].[ЗаписиДанных]
(
	[ИнформационнаяСистема] ASC,
	[Пользователь] ASC,
	[Период] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_ДополнительныеПорты_ИнформационнаяСистема_Наименование] ON [dbo].[ДополнительныеПорты]
(
	[ИнформационнаяСистема] ASC,
	[Наименование] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_УровниСобытий_ИнформационнаяСистема_Имя] ON [dbo].[УровниСобытий]
(
	[ИнформационнаяСистема] ASC,
	[Имя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_Пользователи_ИнформационнаяСистема_Наименование_Uuid] ON [dbo].[Пользователи]
(
	[ИнформационнаяСистема] ASC,
	[Наименование] ASC,
	[Uuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_РабочиеСервера_ИнформационнаяСистема_Наименование] ON [dbo].[РабочиеСервера]
(
	[ИнформационнаяСистема] ASC,
	[Наименование] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
