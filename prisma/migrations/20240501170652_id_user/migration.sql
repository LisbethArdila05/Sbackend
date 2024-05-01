/*
  Warnings:

  - You are about to drop the column `nombreUser` on the `sensor` table. All the data in the column will be lost.
  - Added the required column `idUser` to the `sensor` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `sensor` DROP FOREIGN KEY `sensor_nombreUser_fkey`;

-- AlterTable
ALTER TABLE `sensor` DROP COLUMN `nombreUser`,
    ADD COLUMN `idUser` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `sensor` ADD CONSTRAINT `sensor_idUser_fkey` FOREIGN KEY (`idUser`) REFERENCES `Usuario`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
