/*
  Warnings:

  - You are about to drop the column `sTemperatura` on the `sensor` table. All the data in the column will be lost.
  - Added the required column `sTemperaturaC` to the `sensor` table without a default value. This is not possible if the table is not empty.
  - Added the required column `sTemperaturaF` to the `sensor` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `sensor` DROP COLUMN `sTemperatura`,
    ADD COLUMN `sTemperaturaC` DOUBLE NOT NULL,
    ADD COLUMN `sTemperaturaF` DOUBLE NOT NULL;
