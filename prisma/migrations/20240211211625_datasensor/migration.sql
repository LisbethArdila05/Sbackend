-- CreateTable
CREATE TABLE `sensor` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `sHumedad` DOUBLE NOT NULL,
    `sTemperatura` DOUBLE NOT NULL,
    `Fecha` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
