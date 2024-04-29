/*
  Warnings:

  - You are about to drop the column `idEstado` on the `sensor` table. All the data in the column will be lost.
  - You are about to drop the `estado` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `sensor` DROP FOREIGN KEY `sensor_idEstado_fkey`;

-- AlterTable
ALTER TABLE `sensor` DROP COLUMN `idEstado`;

-- DropTable
DROP TABLE `estado`;
