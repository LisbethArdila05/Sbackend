/*
  Warnings:

  - You are about to drop the `historial` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `fecha` to the `sensor` table without a default value. This is not possible if the table is not empty.
  - Added the required column `idEstado` to the `sensor` table without a default value. This is not possible if the table is not empty.
  - Added the required column `idtipoPlanta` to the `sensor` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `historial` DROP FOREIGN KEY `historial_idEstado_fkey`;

-- DropForeignKey
ALTER TABLE `historial` DROP FOREIGN KEY `historial_idSensor_fkey`;

-- DropForeignKey
ALTER TABLE `historial` DROP FOREIGN KEY `historial_idtipoPlanta_fkey`;

-- AlterTable
ALTER TABLE `sensor` ADD COLUMN `fecha` DATETIME(3) NOT NULL,
    ADD COLUMN `idEstado` INTEGER NOT NULL,
    ADD COLUMN `idtipoPlanta` INTEGER NOT NULL;

-- DropTable
DROP TABLE `historial`;

-- AddForeignKey
ALTER TABLE `sensor` ADD CONSTRAINT `sensor_idtipoPlanta_fkey` FOREIGN KEY (`idtipoPlanta`) REFERENCES `planta`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `sensor` ADD CONSTRAINT `sensor_idEstado_fkey` FOREIGN KEY (`idEstado`) REFERENCES `estado`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
