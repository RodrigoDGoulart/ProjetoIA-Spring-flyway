CREATE TABLE `redzone` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `data_cadastro` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `entrada_redzone` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `data` datetime DEFAULT NULL,
  `id_redzone` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_redzone_entrada_idx` (`id_redzone`),
  CONSTRAINT `id_redzone_entrada` FOREIGN KEY (`id_redzone`) REFERENCES `redzone` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `saida_redzone` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `data` datetime DEFAULT NULL,
  `id_redzone` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_redzone_saida_idx` (`id_redzone`),
  CONSTRAINT `id_redzone_saida` FOREIGN KEY (`id_redzone`) REFERENCES `redzone` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;