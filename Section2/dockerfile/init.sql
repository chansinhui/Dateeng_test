CREATE TABLE public.sales(
 sales_id INT PRIMARY KEY,
 sales_date DATETIME NOT NULL,
 customer_id INT NOT NULL,
 sales_amount NUMERIC NOT NULL,
 salesperson_id INT NOT NULL,
 car_serial_number VARCHAR (50) NOT NULL,
 car_quantity_sold INT NOT NULL
);

CREATE TABLE public.customer(
 customer_id INT PRIMARY KEY,
 customer_name VARCHAR (50) NOT NULL,
 customer_phone VARCHAR (50) NULL,
 customer_gender VARCHAR (1) NOT NULL
);

CREATE TABLE public.car(
 car_serial_number VARCHAR(50) PRIMARY KEY,
 model_name VARCHAR (50) NOT NULL,
 manufacturer VARCHAR (50) NOT NULL,
 model_variant VARCHAR (50) NOT NULL,
 car_weight NUMERIC NOT NULL,
 engine_cubic_capacity NUMERIC NOT NULL,
 price NUMERIC NOT NULL,
 car_type VARCHAR (50) NOT NULL 
);

CREATE TABLE public.salesperson(
 salesperson_id INT PRIMARY KEY,
 salesperson_name VARCHAR (100) NOT NULL,
 salesperson_gender VARCHAR (1) NOT NULL
);