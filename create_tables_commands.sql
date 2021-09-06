CREATE TABLE `Employees` (
    `emp_no` VARCHAR(10),
    `emp_title_id` VARCHAR(10),
    `birth_date` DATE,
    `first_name` VARCHAR(20),
    `last_name` VARCHAR(20),
    `sex` CHAR(1),
    `hire_date` DATE,
    CONSTRAINT `pk_Employees` PRIMARY KEY (
        `emp_no`
    )
);

CREATE TABLE `Titles` (
    `title_id` VARCHAR(10),
    `title` VARCHAR(30),
    CONSTRAINT `pk_Titles` PRIMARY KEY (
        `title_id`
    )
);

CREATE TABLE `Salaries` (
    `emp_no` VARCHAR(10),
    `salary` INT NOT NULL DEFAULT 0 
);

CREATE TABLE `DeptManager` (
    `dept_no` VARCHAR(10),
    `emp_no` VARCHAR(10) 
);

CREATE TABLE `DeptEmp` (
    `emp_no` VARCHAR(10),
    `dept_no` VARCHAR(10) 
);

CREATE TABLE `Departments` (
    `dept_no` VARCHAR(10),
    `dept_name` VARCHAR(30),
    CONSTRAINT `pk_Departments` PRIMARY KEY (
        `dept_no`
    )
);

ALTER TABLE `Employees` ADD CONSTRAINT `fk_Employees_emp_tile_id` FOREIGN KEY(`emp_tile_id`)
REFERENCES `Titles` (`title_id`);

ALTER TABLE `Salaries` ADD CONSTRAINT `fk_Salaries_emp_no` FOREIGN KEY(`emp_no`)
REFERENCES `Employees` (`emp_no`);

ALTER TABLE `DeptManager` ADD CONSTRAINT `fk_DeptManager_dept_no` FOREIGN KEY(`dept_no`)
REFERENCES `Departments` (`dept_no`);

ALTER TABLE `DeptManager` ADD CONSTRAINT `fk_DeptManager_emp_no` FOREIGN KEY(`emp_no`)
REFERENCES `Employees` (`emp_no`);

ALTER TABLE `DeptEmp` ADD CONSTRAINT `fk_DeptEmp_emp_no` FOREIGN KEY(`emp_no`)
REFERENCES `Employees` (`emp_no`);

ALTER TABLE `DeptEmp` ADD CONSTRAINT `fk_DeptEmp_dept_no` FOREIGN KEY(`dept_no`)
REFERENCES `Departments` (`dept_no`);
