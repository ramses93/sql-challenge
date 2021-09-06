-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Employees" (
    "emp_no" VARCHAR  NOT NULL ,
    "emp_tile_id" VARCHAR  NOT NULL ,
    "birth_date" DATE  NOT NULL ,
    "first_name" VARCHAR  NOT NULL ,
    "last_name" VARCHAR  NOT NULL ,
    "sex" CHAR(1)  NOT NULL ,
    "hire_date" DATE  NOT NULL ,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
    )
)

GO

CREATE TABLE "Titles" (
    "title_id" VARCHAR  NOT NULL ,
    "title" VARCHAR  NOT NULL ,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
    )
)

GO

CREATE TABLE "Salaries" (
    "emp_no" VARCHAR  NOT NULL ,
    "salary" INT  NOT NULL 
)

GO

CREATE TABLE "DeptManager" (
    "dept_no" VARCHAR  NOT NULL ,
    "emp_no" VARCHAR  NOT NULL 
)

GO

CREATE TABLE "DeptEmp" (
    "emp_no" VARCHAR  NOT NULL ,
    "dept_no" VARCHAR  NOT NULL 
)

GO

CREATE TABLE "Departments" (
    "dept_no" VARCHAR  NOT NULL ,
    "dept_name" VARCHAR  NOT NULL ,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
    )
)

GO

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_tile_id" FOREIGN KEY("emp_tile_id")
REFERENCES "Titles" ("title_id")
GO

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no")
GO

ALTER TABLE "DeptManager" ADD CONSTRAINT "fk_DeptManager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no")
GO

ALTER TABLE "DeptManager" ADD CONSTRAINT "fk_DeptManager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no")
GO

ALTER TABLE "DeptEmp" ADD CONSTRAINT "fk_DeptEmp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no")
GO

ALTER TABLE "DeptEmp" ADD CONSTRAINT "fk_DeptEmp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no")
GO

