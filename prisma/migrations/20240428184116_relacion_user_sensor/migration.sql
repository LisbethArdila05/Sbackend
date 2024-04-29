/*
  Warnings:

  - Added the required column `nombreUser` to the `sensor` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `sensor` ADD COLUMN `nombreUser` VARCHAR(191) NOT NULL;

-- AddForeignKey
ALTER TABLE `sensor` ADD CONSTRAINT `sensor_nombreUser_fkey` FOREIGN KEY (`nombreUser`) REFERENCES `Usuario`(`nombreUsuario`) ON DELETE RESTRICT ON UPDATE CASCADE;
