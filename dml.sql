INSERT INTO car(
    sales_date,
    car_condition,
    car_cost
)
 VALUES(
    '2021-10-05',
    'Used',
    65400.99
), (
    '2022-07-05',
    'New',
    86700.99
);

INSERT INTO customer(
    customer_name
)
VALUES (
    'Charlie'
),(
    'Carlos'
);

INSERT INTO parts(
    parts_cost,
    part_description
)
VALUES (
    150.00,
    'New Car Battery'
),(
    2500.00,
    'New Transmission'
);

INSERT INTO salesperson(
    salesperson_name,
    email
)
VALUES (
    'Alex',
    'ARod10@Arod.com'
),(
    'Jairo',
    'JMorales14@Jmor.com'
);

INSERT INTO mechanic(
    mechanic_name
)
VALUES(
    'Roberto'
),(
    'Ivan'
);

INSERT INTO invoice(
    car_id,
    salesperson_id,
    customer_id,
    total_cost
)
VALUES (
    2,
    1,
    1,
    93200.81
),(
    1,
    2,
    2,
    71900.25
);

INSERT INTO service_ticket(
    service_type,
    service_cost,
    car_id,
    mechanic_id,
    parts_id,
    service_date,
    customer_id
)
VALUES(
    'Oil Change',
    80.50,
    1,
    2,
    NULL,
    '2022-08-03',
    1
),(
    'Tire Rotation',
    60.01,
    2,
    1,
    1,
    '2022-08-04',
    2
);

CREATE FUNCTION add_mechanic(
    new_mechanic_id INTEGER,
    new_mechanic_name VARCHAR(50)
)
RETURNS void
LANGUAGE plpgsql
AS
$MAIN$
BEGIN
    INSERT INTO mechanic(
        mechanic_id,
        mechanic_name
    )
    VALUES(
        new_mechanic_id,
        new_mechanic_name);


END
$MAIN$

SELECT add_mechanic(3, 'Eric');

SELECT add_mechanic(4, 'Hector');