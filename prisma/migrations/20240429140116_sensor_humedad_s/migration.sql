/*
  Warnings:

  - Added the required column `sHumedadS` to the `sensor` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `sensor` ADD COLUMN `sHumedadS` INTEGER NOT NULL;
