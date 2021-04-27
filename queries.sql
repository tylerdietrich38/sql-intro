CREATE TABLE "Employees" (
................ "FullName"     TEXT,
................ "Salary"       INT,
................ "JobPosition"  TEXT,
................ "PhoneExtension"  INT,
................ "IsPartTime"   TEXT
................ );

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime
................ ")
................ Values ('Bob Rick', 65000, 'Developer', 101, 'No');
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime
................ ")
................ Values ('Harry Scary', 70000, 'Senior Developer', 110, 'No');
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime
................ ")
................ Values ('Freddy Boy', 75000, 'Extra  Senior Developer', 110, 'Yes');
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime
................ ")
................ Values ('Cam Obam', 80000, ' Super Extra Senior Developer', 120, 'No');
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime
................ ")
................ Values ('Collin Call', 90000, 'Big Super Extra Senior Developer', 121, 'No');

SELECT * FROM "Employees";
+-------------+----------+----------------------------------+------------------+--------------+
| FullName    | Salary   | JobPosition                      | PhoneExtension   | IsPartTime   |
|-------------+----------+----------------------------------+------------------+--------------|
| Bob Rick    | 65000    | Developer                        | 101              | No           |
| Harry Scary | 70000    | Senior Developer                 | 110              | No           |
| Freddy Boy  | 75000    | Extra  Senior Developer          | 110              | Yes          |
| Cam Obam    | 80000    |  Super Extra Senior Developer    | 120              | No           |
| Collin Call | 90000    | Big Super Extra Senior Developer | 121              | No           |
+-------------+----------+----------------------------------+------------------+--------------+

SELECT "FullName", "PhoneExtension" FROM "Employees";
+-------------+------------------+
| FullName    | PhoneExtension   |
|-------------+------------------|
| Bob Rick    | 101              |
| Harry Scary | 110              |
| Freddy Boy  | 110              |
| Cam Obam    | 120              |
| Collin Call | 121              |
+-------------+------------------+
SELECT 5

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime
................ ")
................ Values ('Mark Shark', 450, 'Software Developer', 130, 'Yes');
INSERT 0 1
Time: 0.009s
CompanyDatabase> SELECT * FROM "Employees";
+-------------+----------+----------------------------------+------------------+--------------+
| FullName    | Salary   | JobPosition                      | PhoneExtension   | IsPartTime   |
|-------------+----------+----------------------------------+------------------+--------------|
| Bob Rick    | 65000    | Developer                        | 101              | No           |
| Harry Scary | 70000    | Senior Developer                 | 110              | No           |
| Freddy Boy  | 75000    | Extra  Senior Developer          | 110              | Yes          |
| Cam Obam    | 80000    |  Super Extra Senior Developer    | 120              | No           |
| Collin Call | 90000    | Big Super Extra Senior Developer | 121              | No           |
| Mark Shark  | 450      | Software Developer               | 130              | Yes          |
+-------------+----------+----------------------------------+------------------+--------------+

CompanyDatabase> UPDATE "Employees" SET "Salary" = '500' WHERE "FullName" = 'Bob Rick';
UPDATE 1
Time: 0.026s
CompanyDatabase> SELECT * FROM "Employees";
+-------------+----------+----------------------------------+------------------+--------------+
| FullName    | Salary   | JobPosition                      | PhoneExtension   | IsPartTime   |
|-------------+----------+----------------------------------+------------------+--------------|
| Harry Scary | 70000    | Senior Developer                 | 110              | No           |
| Freddy Boy  | 75000    | Extra  Senior Developer          | 110              | Yes          |
| Cam Obam    | 80000    |  Super Extra Senior Developer    | 120              | No           |
| Collin Call | 90000    | Big Super Extra Senior Developer | 121              | No           |
| Mark Shark  | 450      | Software Developer               | 130              | Yes          |
| Bob Rick    | 500      | Developer                        | 101              | No           |
+-------------+----------+----------------------------------+------------------+--------------+
SELECT 6

CompanyDatabase> DELETE FROM "Employees" WHERE "FullName" = 'Bob Rick';
You're about to run a destructive command.
Do you want to proceed? (y/n): y
Your call!
DELETE 1
Time: 0.007s
CompanyDatabase> SELECT * FROM "Employees";
+-------------+----------+----------------------------------+------------------+--------------+
| FullName    | Salary   | JobPosition                      | PhoneExtension   | IsPartTime   |
|-------------+----------+----------------------------------+------------------+--------------|
| Harry Scary | 70000    | Senior Developer                 | 110              | No           |
| Freddy Boy  | 75000    | Extra  Senior Developer          | 110              | Yes          |
| Cam Obam    | 80000    |  Super Extra Senior Developer    | 120              | No           |
| Collin Call | 90000    | Big Super Extra Senior Developer | 121              | No           |
| Mark Shark  | 450      | Software Developer               | 130              | Yes          |
+-------------+----------+----------------------------------+------------------+--------------+
SELECT 5

CompanyDatabase> ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(15);
You're about to run a destructive command.
Do you want to proceed? (y/n): y
Your call!
ALTER TABLE
Time: 0.008s
CompanyDatabase> SELECT * FROM "Employees";
+-------------+----------+----------------------------------+------------------+--------------+---------------+
| FullName    | Salary   | JobPosition                      | PhoneExtension   | IsPartTime   | ParkingSpot   |
|-------------+----------+----------------------------------+------------------+--------------+---------------|
| Harry Scary | 70000    | Senior Developer                 | 110              | No           | <null>        |
| Freddy Boy  | 75000    | Extra  Senior Developer          | 110              | Yes          | <null>        |
| Cam Obam    | 80000    |  Super Extra Senior Developer    | 120              | No           | <null>        |
| Collin Call | 90000    | Big Super Extra Senior Developer | 121              | No           | <null>        |
| Mark Shark  | 450      | Software Developer               | 130              | Yes          | <null>        |
+-------------+----------+----------------------------------+------------------+--------------+---------------+
SELECT 5

