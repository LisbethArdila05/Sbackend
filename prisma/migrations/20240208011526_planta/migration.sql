-- CreateTable
CREATE TABLE `planta` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nombrePlanta` VARCHAR(191) NOT NULL,
    `tamano` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `planta_nombrePlanta_key`(`nombrePlanta`),
    UNIQUE INDEX `planta_tamano_key`(`tamano`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
