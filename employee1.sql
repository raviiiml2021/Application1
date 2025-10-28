-- Create employee1 table
CREATE TABLE employee1 (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,     -- Unique employee ID
    first_name VARCHAR(50) NOT NULL,           -- Employee's first name
    last_name VARCHAR(50) NOT NULL,            -- Employee's last name
    email VARCHAR(100) UNIQUE,                 -- Employee email (unique)
    phone VARCHAR(15),                         -- Contact number
    hire_date DATE NOT NULL,                   -- Hiring date
    job_title VARCHAR(100),                    -- Job title
    department VARCHAR(100),                   -- Department name
    salary DECIMAL(10, 2),                     -- Salary amount
    manager_id INT,                            -- Reports to (another employee)
    CONSTRAINT fk_manager
        FOREIGN KEY (manager_id) REFERENCES employee1(emp_id)
        ON DELETE SET NULL
);
