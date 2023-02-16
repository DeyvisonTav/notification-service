-- CreateTable
CREATE TABLE "OrderSummary" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "coffee" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "amount" INTEGER NOT NULL,
    "price" INTEGER NOT NULL,
    "createdAt" DATETIME NOT NULL,
    "orderId" TEXT,
    CONSTRAINT "OrderSummary_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES "Order" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Order" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "paymentType" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "totalPrice" INTEGER NOT NULL,
    "createdAt" DATETIME NOT NULL
);
