-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_RocketTeamMember" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "function" TEXT NOT NULL
);
INSERT INTO "new_RocketTeamMember" ("function", "id", "name") SELECT "function", "id", "name" FROM "RocketTeamMember";
DROP TABLE "RocketTeamMember";
ALTER TABLE "new_RocketTeamMember" RENAME TO "RocketTeamMember";
CREATE UNIQUE INDEX "RocketTeamMember_name_key" ON "RocketTeamMember"("name");
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
