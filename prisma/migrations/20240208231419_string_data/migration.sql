/*
  Warnings:

  - You are about to alter the column `sHumedadAmbiente` on the `planta` table. The data in that column could be lost. The data in that column will be cast from `Double` to `VarChar(191)`.
  - You are about to alter the column `sHumedadSuelo` on the `planta` table. The data in that column could be lost. The data in that column will be cast from `Double` to `VarChar(191)`.
  - You are about to alter the column `sTemperaturaAmbiente` on the `planta` table. The data in that column could be lost. The data in that column will be cast from `Double` to `VarChar(191)`.

*/
-- AlterTable
ALTER TABLE `planta` MODIFY `sHumedadAmbiente` VARCHAR(191) NOT NULL,
    MODIFY `sHumedadSuelo` VARCHAR(191) NOT NULL,
    MODIFY `sTemperaturaAmbiente` VARCHAR(191) NOT NULL;
