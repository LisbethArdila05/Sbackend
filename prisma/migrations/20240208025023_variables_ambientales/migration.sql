/*
  Warnings:

  - Added the required column `sHumedadAmbiente` to the `planta` table without a default value. This is not possible if the table is not empty.
  - Added the required column `sHumedadSuelo` to the `planta` table without a default value. This is not possible if the table is not empty.
  - Added the required column `sTemperaturaAmbiente` to the `planta` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `planta` ADD COLUMN `sHumedadAmbiente` DOUBLE NOT NULL,
    ADD COLUMN `sHumedadSuelo` DOUBLE NOT NULL,
    ADD COLUMN `sTemperaturaAmbiente` DOUBLE NOT NULL;
