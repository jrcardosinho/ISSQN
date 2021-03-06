/*
   quarta-feira, 8 de fevereiro de 201712:38:28
   User: s733001
   Server: df7436sr461
   Database: DB7330_SQL
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Table_1
	(
	id bigint NOT NULL,
	contrato bigint NOT NULL,
	extrato int NOT NULL,
	chave bigint NOT NULL,
	agencia int NOT NULL,
	dt_rel date NOT NULL,
	valor_pago bigint NOT NULL,
	dt_pgto date NOT NULL,
	disp_prox_extr bigint NOT NULL,
	encargos bigint NOT NULL,
	disp_enc_prev bigint NOT NULL,
	mensagem text NULL,
	responsavel nvarchar(7) NULL,
	historico text NULL,
	dt_update date NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.Table_1 ADD CONSTRAINT
	PK_SIEMP PRIMARY KEY CLUSTERED 
	(
	id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Table_1 SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
