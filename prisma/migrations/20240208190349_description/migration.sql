/*
  Warnings:

  - Added the required column `Descripcion` to the `planta` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `planta` ADD COLUMN `Descripcion` VARCHAR(191) NOT NULL;
