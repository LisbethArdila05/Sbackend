/*
  Warnings:

  - Added the required column `plantaId` to the `tamano` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `tamano` ADD COLUMN `plantaId` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `tamano` ADD CONSTRAINT `tamano_plantaId_fkey` FOREIGN KEY (`plantaId`) REFERENCES `planta`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
