CREATE TABLE IF NOT EXISTS employees (
    id              INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    full_name       VARCHAR(128) NOT NULL,
    date_of_birth   DATE NOT NULL,
    passport        VARCHAR(32) NOT NULL UNIQUE,
    contact_phone   VARCHAR(32) NOT NULL UNIQUE,
    contact_address TEXT NOT NULL,
    department_id   INT NOT NULL REFERENCES departments(id),
    position_id     INT NOT NULL REFERENCES positions(id),
    salary          NUMERIC(9, 2) NOT NULL,
    hire_date       DATE NOT NULL
)