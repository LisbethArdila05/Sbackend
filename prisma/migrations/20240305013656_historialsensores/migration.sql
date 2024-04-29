-- CreateTable
CREATE TABLE `historial` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `fecha` DATETIME(3) NOT NULL,
    `idtipoPlanta` INTEGER NOT NULL,
    `idSensor` INTEGER NOT NULL,
    `idEstado` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `historial` ADD CONSTRAINT `historial_idtipoPlanta_fkey` FOREIGN KEY (`idtipoPlanta`) REFERENCES `planta`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `historial` ADD CONSTRAINT `historial_idSensor_fkey` FOREIGN KEY (`idSensor`) REFERENCES `sensor`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `historial` ADD CONSTRAINT `historial_idEstado_fkey` FOREIGN KEY (`idEstado`) REFERENCES `estado`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
