CREATE TABLE IF NOT EXISTS employees (
    id              SERIAL PRIMARY KEY,
    full_name       TEXT NOT NULL,
    passport        VARCHAR(10) NOT NULL UNIQUE,
    contact_phone   VARCHAR(20) NOT NULL UNIQUE,
    address         TEXT NOT NULL,
    department_id   INT NOT NULL REFERENCES departments(id),
    position_id     INT NOT NULL REFERENCES positions(id),
    salary          NUMERIC(12, 2) NOT NULL,
    hire_date       DATE NOT NULL,
    dismissal_date   DATE
)