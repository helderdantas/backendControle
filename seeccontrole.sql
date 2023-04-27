-- Copiando estrutura para tabela public.controles
CREATE TABLE IF NOT EXISTS "controles" (
	"id" INTEGER  NULL DEFAULT 'nextval(''id_seq_controles''::regclass)',
	"setor" VARCHAR(255),
	"subsetor" VARCHAR(255),
	"ilha" VARCHAR(255),
	"baia" VARCHAR(255),
	"cputombo" VARCHAR(255),
	"cpunumeroserie" VARCHAR(255),
	"monitor1tombo" VARCHAR(255),
	"monitor1numeroserie" VARCHAR(255),
	"monitor2tombo" VARCHAR(255),
	"monitor2numeroserie" VARCHAR(255),
	"impressora" VARCHAR(255),
	"telefone" VARCHAR(255),
	"observacao" VARCHAR(255),
	"created_at" TIMESTAMPTZ,
	"updated_at" TIMESTAMPTZ,
);

-- Copiando dados para a tabela public.controles: -1 rows
/*!40000 ALTER TABLE "controles" DISABLE KEYS */;
/*!40000 ALTER TABLE "controles" ENABLE KEYS */;

-- copiando estrutura para tabela public.setors
CREATE TABLE IF NOT EXISTS "setors" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''id_seq_setores''::regclass)',
	"ativo" BOOLEAN NOT NULL,
	"nome" VARCHAR(255) NOT NULL,
	"telefone" INTEGER NOT NULL,
	"created_at" TIMESTAMPTZ NOT NULL,
	"updated_at" TIMESTAMPTZ NOT NULL,
);

-- Copiando dados para a tabela public.setors: -1 rows
/*!40000 ALTER TABLE "setors" DISABLE KEYS */;
/*!40000 ALTER TABLE "setors" ENABLE KEYS */;

-- Copiando estrutura para tabela public.subsetors
CREATE TABLE IF NOT EXISTS "subsetors" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''id_seq_subsetores''::regclass)',
	"ativo" BOOLEAN NOT NULL,
	"nome" VARCHAR(255) NOT NULL,
	"nomesetor" VARCHAR(255) NOT NULL,
	"telefone" INTEGER NULL DEFAULT NULL,
	"created_at" TIMESTAMPTZ NOT NULL,
	"updated_at" TIMESTAMPTZ NOT NULL,
);

-- Copiando dados para a tabela public.subsetors: -1 rows
/*!40000 ALTER TABLE "subsetors" DISABLE KEYS */;
/*!40000 ALTER TABLE "subsetors" ENABLE KEYS */;

-- Copiando estrutura para tabela public.users
CREATE TABLE IF NOT EXISTS "users" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''id_seq_users''::regclass)',
	"nome" VARCHAR(255) NOT NULL,
	"email" VARCHAR(255) NOT NULL,
	"cpf" VARCHAR(255) NOT NULL,
	"password_hash" VARCHAR(255) NOT NULL,
	"telefone" VARCHAR(255) NOT NULL,
	"created_at" TIMESTAMPTZ NOT NULL,
	"updated_at" TIMESTAMPTZ NOT NULL,
	UNIQUE INDEX "users_email_key" ("email"),
	UNIQUE INDEX "users_cpf_key" ("cpf")
);

-- Copiando dados para a tabela public.users: -1 rows
/*!40000 ALTER TABLE "users" DISABLE KEYS */;
/*!40000 ALTER TABLE "users" ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
