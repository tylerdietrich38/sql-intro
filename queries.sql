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





CompanyDatabase> CREATE TABLE "Departments" (
................ "Id"        SERIAL PRIMARY KEY,
................ "DepartmentName"   TEXT,
................ "Building"         TEXT
................ );
CREATE TABLE

CompanyDatabase> ALTER TABLE "Employees" ADD COLUMN "DepartmentId" INTEGER NULL REFERENCES "Departments" ("Id");

CompanyDatabase> CREATE TABLE "Products" (
................ "Id"        SERIAL PRIMARY KEY,
................ "Price"     DECIMAL,
................ "Name"      TEXT,
................ "Description"  TEXT,
................ "QuantityInStock" INT
................ );


CompanyDatabase> CREATE TABLE "Orders" (
................ "Id"        SERIAL PRIMARY KEY,
................ "OrderNumber" TEXT,
................ "DatePlaced" TimeStamp,
................ "Email"   TEXT
................ );

CREATE TABLE "ProductOrders" (
................ "Id"        SERIAL PRIMARY KEY,
................ "ProductsId"  INTEGER REFERENCES "Products" ("Id"),
................ "OrdersId"     INTEGER REFERENCES "Orders" ("Id"),
................ "OrderQuantity"  INT
................ );

Time: 0.020s
CompanyDatabase> INSERT INTO "Departments" ("DepartmentName", "Building")
................ VALUES ('Development', 'Main');
INSERT 0 1
Time: 0.027s
CompanyDatabase> INSERT INTO "Departments" ("DepartmentName", "Building")
................ VALUES ('Marketing', 'North');

CompanyDatabase> INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "Depa
................ rtmentId")
................ VALUES ('Tim Smith', 40000, 'Programmer', 123, 'false', 1);
INSERT 0 1
Time: 0.010s
CompanyDatabase> INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "Depa
................ rtmentId")
................ VALUES ('Barbara Ramsey', 80000, 'Manager', 234, 'false', 1);
INSERT 0 1
Time: 0.010s
CompanyDatabase> INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "Depa
................ rtmentId")
................ VALUES ('Tom Jones', 32000, 'Admin', 456, 'true', 2);

CompanyDatabase> INSERT INTO "Products" ("Price", "Name", "Description", "QuantityInStock")
................ VALUES (12.45, 'Widget', 'The Original Widget', 100);
INSERT 0 1
Time: 0.025s
CompanyDatabase> INSERT INTO "Products" ("Price", "Name", "Description", "QuantityInStock")
................ VALUES (99.99, 'Flowbee', 'Perfect for haircuts', 3);

CompanyDatabase> INSERT INTO "Orders" ("OrderNumber", "DatePlaced", "Email")
................ VALUES ('X529', '2020-01-01 04:55:00', 'person@example.com');

CompanyDatabase> INSERT INTO "ProductOrders" ("ProductsId", "OrdersId", "OrderQuantity")
................ VALUES (1, 1, 3);
INSERT 0 1
Time: 0.014s
CompanyDatabase> INSERT INTO "ProductOrders" ("ProductsId", "OrdersId", "OrderQuantity")
................ VALUES (2, 1, 2);

CompanyDatabase> SELECT "FullName", "DepartmentId" FROM "Employees";
+----------------+----------------+
| FullName       | DepartmentId   |
|----------------+----------------|
| Harry Scary    | <null>         |
| Freddy Boy     | <null>         |
| Cam Obam       | <null>         |
| Collin Call    | <null>         |
| Mark Shark     | <null>         |
| Tim Smith      | 1              |
| Barbara Ramsey | 1              |
| Tom Jones      | 2              |
+----------------+----------------+
SELECT 8

SELECT *
................ FROM "Employees"
................ JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."Id"
................ WHERE "Departments"."Building" = 'North Side';
+------------+----------+---------------+------------------+--------------+---------------+----------------+------+------------------+------------+
| FullName   | Salary   | JobPosition   | PhoneExtension   | IsPartTime   | ParkingSpot   | DepartmentId   | Id   | DepartmentName   | Building   |
|------------+----------+---------------+------------------+--------------+---------------+----------------+------+------------------+------------|
+------------+----------+---------------+------------------+--------------+---------------+----------------+------+------------------+------------+

SELECT *
................ FROM "Employees"
................ JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."Id"
................ WHERE "Departments"."Building" = 'East Side';
+------------+----------+---------------+------------------+--------------+---------------+----------------+------+------------------+------------+
| FullName   | Salary   | JobPosition   | PhoneExtension   | IsPartTime   | ParkingSpot   | DepartmentId   | Id   | DepartmentName   | Building   |
|------------+----------+---------------+------------------+--------------+---------------+----------------+------+------------------+------------|
+------------+----------+---------------+------------------+--------------+---------------+----------------+------+------------------+------------+

SELECT *
................ FROM "Employees"
................ JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."Id"
................ WHERE "Departments"."Building" = 'North';
+------------+----------+---------------+------------------+--------------+---------------+----------------+------+------------------+------------+
| FullName   | Salary   | JobPosition   | PhoneExtension   | IsPartTime   | ParkingSpot   | DepartmentId   | Id   | DepartmentName   | Building   |
|------------+----------+---------------+------------------+--------------+---------------+----------------+------+------------------+------------|
| Tom Jones  | 32000    | Admin         | 456              | true         | <null>        | 2              | 2    | Marketing        | North      |
+------------+----------+---------------+------------------+--------------+---------------+----------------+------+------------------+------------+

SELECT *
................ FROM "ProductOrders"
................ JOIN "Orders" ON "ProductOrders"."OrdersId" = "Orders"."Id"
................ WHERE "ProductsId" = 2;
+------+--------------+------------+-----------------+------+---------------+---------------------+--------------------+
| Id   | ProductsId   | OrdersId   | OrderQuantity   | Id   | OrderNumber   | DatePlaced          | Email              |
|------+--------------+------------+-----------------+------+---------------+---------------------+--------------------|
| 2    | 2            | 1          | 2               | 1    | X529          | 2020-01-01 04:55:00 | person@example.com |
+------+--------------+------------+-----------------+------+---------------+---------------------+--------------------+
SELECT 1

SELECT *
................ FROM "ProductOrders"
................ JOIN "Orders" ON "Orders"."Id" = "ProductOrders"."OrdersId"
................ JOIN "Products" ON "ProductOrders"."ProductsId" = "Products"."Id"
................ WHERE "Orders"."OrderNumber" = 'X529' and "Products"."Name" = 'Flowbee';
+------+--------------+------------+-----------------+------+---------------+---------------------+--------------------+------+---------+---------+----------------------+-------------------+
| Id   | ProductsId   | OrdersId   | OrderQuantity   | Id   | OrderNumber   | DatePlaced          | Email              | Id   | Price   | Name    | Description          | QuantityInStock   |
|------+--------------+------------+-----------------+------+---------------+---------------------+--------------------+------+---------+---------+----------------------+-------------------|
| 2    | 2            | 1          | 2               | 1    | X529          | 2020-01-01 04:55:00 | person@example.com | 2    | 99.99   | Flowbee | Perfect for haircuts | 3                 |
+------+--------------+------------+-----------------+------+---------------+---------------------+--------------------+------+---------+---------+----------------------+-------------------+
SELECT 1


