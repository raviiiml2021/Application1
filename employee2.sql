-- Create employee2 table
CREATE TABLE employee2 (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,     -- Unique employee ID
    first_name VARCHAR(50) NOT NULL,           -- Employee's first name
    last_name VARCHAR(50) NOT NULL,            -- Employee's last name
    gender CHAR(1) CHECK (gender IN ('M', 'F', 'O')),  -- Gender: M=Male, F=Female, O=Other
    birth_date DATE,                           -- Date of birth
    email VARCHAR(100) UNIQUE,                 -- Employee email (unique)
    phone VARCHAR(15),                         -- Contact number
    address VARCHAR(255),                      -- Home address
    city VARCHAR(100),                         -- City
    state VARCHAR(100),                        -- State
    country VARCHAR(100),                      -- Country
    hire_date DATE NOT NULL,                   -- Hiring date
    job_title VARCHAR(100),                    -- Job title
    department VARCHAR(100),                   -- Department name
    salary DECIMAL(10, 2) CHECK (salary >= 0), -- Salary must be non-negative
    manager_id INT,                            -- Reports to (manager)
    CONSTRAINT fk_manager2
        FOREIGN KEY (manager_id) REFERENCES employee2(emp_id)
        ON DELETE SET NULL
);
