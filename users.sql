
-- Copiando dados para a tabela public.users: 1 rows
/*!40000 ALTER TABLE "users" DISABLE KEYS */;
INSERT INTO "users" ("id", "nome", "email", "cpf", "password_hash", "telefone", "created_at", "updated_at") VALUES
	(2, 'admin', 'admin@gmail.com', '67049311391', '$2a$08$E6Nbtt7SgTH6mXIZDGUwEObimwcXYQ0KYfhrz1W5sdxi041EaJlFS', '9999999', '2023-04-23 17:01:38.954+00', '2023-04-23 17:01:38.954+00');
/*!40000 ALTER TABLE "users" ENABLE KEYS */;

