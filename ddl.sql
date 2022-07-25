CREATE TABLE car (
   car_id SERIAL PRIMARY KEY,
   sales_date DATE,
   car_condition VARCHAR(4),
   car_cost NUMERIC(10,2)
);

CREATE TABLE customer (
  customer_id SERIAL PRIMARY KEY,
  customer_name VARCHAR(50)
);

CREATE TABLE invoice (
  invoice_id SERIAL PRIMARY KEY,
  car_id INTEGER,
  salesperson_id INTEGER,
  customer_id INTEGER,
  total_cost NUMERIC(10,2),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (car_id) REFERENCES car(car_id)
);

CREATE TABLE parts (
  parts_id SERIAL PRIMARY KEY,
  parts_cost NUMERIC(10,2),
  part_description VARCHAR(100)
);

CREATE TABLE service_ticket (
  service_id SERIAL PRIMARY KEY,
  service_type VARCHAR(100),
  service_cost NUMERIC(8,2),
  car_id INTEGER,
  mechanic_id INTEGER,
  parts_id INTEGER,
  service_date DATE,
  customer_id INTEGER,
  FOREIGN KEY (car_id) REFERENCES car(car_id),
  FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
  FOREIGN KEY (parts_id) REFERENCES parts(parts_id),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE salesperson (
  salesperson_id SERIAL PRIMARY KEY,
  salesperson_name VARCHAR(50),
  email VARCHAR(50)
);

CREATE TABLE mechanic (
  mechanic_id SERIAL PRIMARY KEY,
  mechanic_name VARCHAR(50)
);

