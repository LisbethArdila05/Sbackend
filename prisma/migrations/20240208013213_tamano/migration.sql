/*
  Warnings:

  - You are about to drop the column `tamano` on the `planta` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX `planta_tamano_key` ON `planta`;

-- AlterTable
ALTER TABLE `planta` DROP COLUMN `tamano`;

-- CreateTable
CREATE TABLE `tamano` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `tamanoPlanta` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `tamano_tamanoPlanta_key`(`tamanoPlanta`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
