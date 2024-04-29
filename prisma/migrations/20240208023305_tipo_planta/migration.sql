/*
  Warnings:

  - You are about to drop the column `nombrePlanta` on the `planta` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[tipoPlanta]` on the table `planta` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `tipoPlanta` to the `planta` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX `planta_nombrePlanta_key` ON `planta`;

-- AlterTable
ALTER TABLE `planta` DROP COLUMN `nombrePlanta`,
    ADD COLUMN `tipoPlanta` VARCHAR(191) NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX `planta_tipoPlanta_key` ON `planta`(`tipoPlanta`);
