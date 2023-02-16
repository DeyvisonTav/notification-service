/*
  Warnings:

  - Added the required column `draft` to the `Order` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Order" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "paymentType" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "totalPrice" INTEGER NOT NULL,
    "createdAt" DATETIME NOT NULL,
    "draft" BOOLEAN NOT NULL
);
INSERT INTO "new_Order" ("address", "createdAt", "id", "paymentType", "totalPrice") SELECT "address", "createdAt", "id", "paymentType", "totalPrice" FROM "Order";
DROP TABLE "Order";
ALTER TABLE "new_Order" RENAME TO "Order";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
