/*
 Warnings:
 
 - You are about to drop the `About` table. If the table is not empty, all the data it contains will be lost.
 - You are about to drop the `Banner` table. If the table is not empty, all the data it contains will be lost.
 - You are about to drop the `Product` table. If the table is not empty, all the data it contains will be lost.
 - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.
 
 */
-- DropTable
DROP TABLE "About";

-- DropTable
DROP TABLE "Banner";

-- DropTable
DROP TABLE "Product";

-- DropTable
DROP TABLE "User";

-- CreateTable
CREATE TABLE "users" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "email" VARCHAR(255) NOT NULL,
    "user_name" VARCHAR(255) NOT NULL,
    "password" VARCHAR(255) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "admin" BOOLEAN NOT NULL DEFAULT false,
    "cart" JSONB,
    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "products" (
    "id" numeric PRIMARY KEY NOT NULL,
    "name" varchar NOT NULL,
    "type" varchar NOT NULL,
    "classify" varchar,
    "user_group" jsonb,
    "color" jsonb,
    "image_url" jsonb,
    "description" text,
    "properties" jsonb,
    "quantity" numeric NOT NULL DEFAULT 0,
    "price" numeric NOT NULL DEFAULT 0,
    "createdAt" timestamp NOT NULL DEFAULT NOW()
);

-- CreateTable
CREATE TABLE "abouts" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "image_banner" VARCHAR(255) NOT NULL,
    "information" JSONB NOT NULL,
    "our_team" VARCHAR(255) NOT NULL,
    "member" JSONB NOT NULL,
    CONSTRAINT "abouts_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "banners" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "banner" JSONB NOT NULL,
    CONSTRAINT "banners_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "users_user_name_key" ON "users"("user_name");