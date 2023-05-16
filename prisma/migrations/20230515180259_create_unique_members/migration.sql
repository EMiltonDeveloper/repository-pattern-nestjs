/*
  Warnings:

  - A unique constraint covering the columns `[name]` on the table `RocketTeamMember` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "RocketTeamMember_name_key" ON "RocketTeamMember"("name");
