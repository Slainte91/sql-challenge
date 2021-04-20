CREATE TABLE "titles" (
    "title_id" varchar(255)   NOT NULL,
    "title" varchar(255)   NOT NULL,
    PRIMARY KEY ("title_id")
);

CREATE TABLE "employee" (
    "emp_no" int   NOT NULL,
    "emp_title_id" varchar(255)   NOT NULL,
    "birth_date" varchar(255)   NOT NULL,
    "first_name" varchar(255)   NOT NULL,
    "last_name" varchar(255)   NOT NULL,
    "sex" varchar(255)   NOT NULL,
    "hire_date" varchar(255)   NOT NULL,
    PRIMARY KEY ("emp_no"),
	foreign key (emp_title_id) references titles(title_id)
);

CREATE TABLE "departments" (
    "dept_no" varchar(255)   NOT NULL,
    "dept_name" varchar(255)   NOT NULL,
    Primary key (dept_no)
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(255)   NOT NULL,
    "emp_no" int   NOT NULL,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employee(emp_no)
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(255)   NOT NULL
	foreign key (emp_no) references employee(emp_no),
	foreign key (dept_no) references departments(dept_no)	
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
	foreign key (emp_no) references employee(emp_no)
);

