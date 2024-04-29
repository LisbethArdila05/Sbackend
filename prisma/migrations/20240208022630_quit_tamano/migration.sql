/*
  Warnings:

  - You are about to drop the `tamano` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `tamano` DROP FOREIGN KEY `tamano_plantaId_fkey`;

-- DropTable
DROP TABLE `tamano`;
