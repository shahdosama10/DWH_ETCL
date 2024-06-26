-- Inserting records into Sales.Customers

INSERT INTO Sales.Customers (CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax)
VALUES
	(1, 'Company A', 'John Doe', 'CEO', '123 Main St', 'New York', 'NY', '10001', 'USA', '123-456-7890', '123-456-7899'),
    (2, 'Company B', 'Jane Smith', 'CFO', '456 Oak St', 'Los Angeles', 'CA', '90001', 'USA', '987-654-3210', '987-654-3219'),
    (3, 'Company C', 'Alice Johnson', 'COO', '789 Elm St', 'Chicago', 'IL', '60601', 'USA', '111-222-3333', '111-222-3339'),
    (4, 'Company D', 'Bob Williams', 'CTO', '101 Pine St', 'San Francisco', 'CA', '94101', 'USA', '444-555-6666', '444-555-6669'),
	(5, 'Company E', 'Emily Brown', 'Marketing Manager', '2020 Elm St', 'Seattle', 'WA', '98101', 'USA', '555-111-2222', '555-111-3333'),
    (6, 'Company F', 'Michael Johnson', 'Sales Director', '3030 Maple St', 'Dallas', 'TX', '75201', 'USA', '555-444-5555', '555-444-6666'),
    (7, 'Company G', 'Sophia Garcia', 'Operations Manager', '4040 Oak St', 'Miami', 'FL', '33101', 'USA', '555-777-8888', '555-777-9999'),
    (8, 'Company H', 'William Rodriguez', 'Customer Service Rep', '5050 Pine St', 'Atlanta', 'GA', '30301', 'USA', '555-888-9999', '555-888-0000'),
    (9, 'Company I', 'Olivia Martinez', 'Finance Analyst', '6060 Cedar St', 'Boston', 'MA', '02101', 'USA', '555-999-0000', '555-999-1111'),
    (10, 'Company J', 'Daniel Wilson', 'HR Manager', '7070 Walnut St', 'Philadelphia', 'PA', '19101', 'USA', '555-222-3333', '555-222-4444'),
    (11, 'Company K', 'Ava Anderson', 'Product Manager', '8080 Birch St', 'San Diego', 'CA', '92101', 'USA', '555-333-4444', '555-333-5555'),
    (12, 'Company L', 'James Taylor', 'Technical Lead', '9090 Spruce St', 'Houston', 'TX', '77001', 'USA', '555-444-5555', '555-444-6666'),
    (13, 'Company M', 'Emma Clark', 'Account Executive', '1010 Cedar St', 'Chicago', 'IL', '60601', 'USA', '555-555-6666', '555-555-7777'),
    (14, 'Company N', 'Liam White', 'Operations Coordinator', '1111 Pine St', 'Seattle', 'WA', '98101', 'USA', '555-666-7777', '555-666-8888'),
    (15, 'Company O', 'Mia Moore', 'Sales Associate', '1212 Elm St', 'Los Angeles', 'CA', '90001', 'USA', '555-777-8888', '555-777-9999'),
    (16, 'Company P', 'Noah Hall', 'Marketing Coordinator', '1313 Oak St', 'Boston', 'MA', '02101', 'USA', '555-888-9999', '555-888-0000'),
    (17, 'Company Q', 'Isabella King', 'Customer Support', '1414 Maple St', 'Miami', 'FL', '33101', 'USA', '555-999-0000', '555-999-1111'),
    (18, 'Company R', 'Ethan Hernandez', 'Finance Manager', '1515 Cedar St', 'San Francisco', 'CA', '94101', 'USA', '555-000-1111', '555-000-2222'),
    (19, 'Company S', 'Charlotte Young', 'Logistics Coordinator', '1616 Walnut St', 'Atlanta', 'GA', '30301', 'USA', '555-111-2222', '555-111-3333'),
    (20, 'Company T', 'Alexander Scott', 'Sales Manager', '1717 Birch St', 'Dallas', 'TX', '75201', 'USA', '555-222-3333', '555-222-4444'),
    (21, 'Company U', 'Sophia Martinez', 'HR Coordinator', '1818 Spruce St', 'Philadelphia', 'PA', '19101', 'USA', '555-333-4444', '555-333-5555'),
    (22, 'Company V', 'Benjamin Lewis', 'Technical Support', '1919 Cedar St', 'San Diego', 'CA', '92101', 'USA', '555-444-5555', '555-444-6666'),
    (23, 'Company W', 'Amelia Walker', 'Sales Representative', '2020 Pine St', 'Houston', 'TX', '77001', 'USA', '555-555-6666', '555-555-7777'),
    (24, 'Company X', 'Henry Hall', 'Operations Analyst', '2121 Elm St', 'Chicago', 'IL', '60601', 'USA', '555-666-7777', '555-666-8888'),
    (25, 'Company Y', 'Harper Allen', 'Marketing Specialist', '2222 Oak St', 'Seattle', 'WA', '98101', 'USA', '555-777-8888', '555-777-9999'),
    (26, 'Company Z', 'Evelyn Hill', 'Customer Relations', '2323 Maple St', 'Los Angeles', 'CA', '90001', 'USA', '555-888-9999', '555-888-0000'),
    (27, 'Company AA', 'Jackson Perez', 'Finance Analyst', '2424 Cedar St', 'Boston', 'MA', '02101', 'USA', '555-999-0000', '555-999-1111'),
    (28, 'Company BB', 'Lily Morris', 'Logistics Manager', '2525 Walnut St', 'Miami', 'FL', '33101', 'USA', '555-000-1111', '555-000-2222'),
    (29, 'Company CC', 'Aiden Cook', 'Sales Coordinator', '2626 Birch St', 'San Francisco', 'CA', '94101', 'USA', '555-111-2222', '555-111-3333'),
    (30, 'Company DD', 'Avery Rivera', 'Customer Support', '2727 Spruce St', 'Atlanta', 'GA', '30301', 'USA', '555-222-3333', '555-222-4444'),
    (31, 'Company EE', 'Ella Turner', 'Marketing Coordinator', '2828 Pine St', 'Dallas', 'TX', '75201', 'USA', '555-333-4444', '555-333-5555'),
    (32, 'Company FF', 'Sebastian Ward', 'Sales Director', '2929 Elm St', 'Philadelphia', 'PA', '19101', 'USA', '555-444-5555', '555-444-6666'),
    (33, 'Company GG', 'Mila Bailey', 'Operations Manager', '3030 Oak St', 'San Diego', 'CA', '92101', 'USA', '555-555-6666', '555-555-7777'),
    (34, 'Company HH', 'Jack Evans', 'Customer Service Rep', '3131 Maple St', 'Houston', 'TX', '77001', 'USA', '555-666-7777', '555-666-8888'),
    (35, 'Company II', 'Lucas Reyes', 'Finance Analyst', '3232 Cedar St', 'Chicago', 'IL', '60601', 'USA', '555-777-8888', '555-777-9999'),
    (36, 'Company JJ', 'Evelyn Hill', 'HR Manager', '3333 Walnut St', 'Seattle', 'WA', '98101', 'USA', '555-888-9999', '555-888-0000'),
    (37, 'Company KK', 'Lily Morris', 'Sales Manager', '3434 Birch St', 'Los Angeles', 'CA', '90001', 'USA', '555-999-0000', '555-999-1111'),
    (38, 'Company LL', 'Aiden Cook', 'Technical Support', '3535 Spruce St', 'Boston', 'MA', '02101', 'USA', '555-000-1111', '555-000-2222'),
    (39, 'Company MM', 'Avery Rivera', 'Marketing Specialist', '3636 Pine St', 'Miami', 'FL', '33101', 'USA', '555-111-2222', '555-111-3333'),
    (40, 'Company NN', 'Ella Turner', 'Operations Analyst', '3737 Oak St', 'San Francisco', 'CA', '94101', 'USA', '555-222-3333', '555-222-4444'),
    (41, 'Company OO', 'Sebastian Ward', 'Customer Relations', '3838 Maple St', 'Atlanta', 'GA', '30301', 'USA', '555-333-4444', '555-333-5555'),
    (42, 'Company PP', 'Mila Bailey', 'Sales Representative', '3939 Cedar St', 'Dallas', 'TX', '75201', 'USA', '555-444-5555', '555-444-6666'),
    (43, 'Company QQ', 'Jack Evans', 'Marketing Coordinator', '4040 Walnut St', 'Philadelphia', 'PA', '19101', 'USA', '555-555-6666', '555-555-7777'),
    (44, 'Company RR', 'Lucas Reyes', 'Finance Manager', '4141 Birch St', 'San Diego', 'CA', '92101', 'USA', '555-666-7777', '555-666-8888'),
    (45, 'Company SS', 'Evelyn Hill', 'HR Coordinator', '4242 Spruce St', 'Houston', 'TX', '77001', 'USA', '555-777-8888', '555-777-9999'),
    (46, 'Company TT', 'Lily Morris', 'Operations Manager', '4343 Pine St', 'Chicago', 'IL', '60601', 'USA', '555-888-9999', '555-888-0000'),
    (47, 'Company UU', 'Aiden Cook', 'Customer Service Rep', '4444 Oak St', 'Seattle', 'WA', '98101', 'USA', '555-999-0000', '555-999-1111'),
    (48, 'Company VV', 'Avery Rivera', 'Sales Director', '4545 Maple St', 'Los Angeles', 'CA', '90001', 'USA', '555-000-1111', '555-000-2222'),
    (49, 'Company WW', 'Ella Turner', 'Technical Support', '4646 Cedar St', 'Boston', 'MA', '02101', 'USA', '555-111-2222', '555-111-3333'),
    (50, 'Company XX', 'Sebastian Ward', 'Marketing Specialist', '4747 Walnut St', 'Miami', 'FL', '33101', 'USA', '555-222-3333', '555-222-4444'),
    (51, 'Company YY', 'Mila Bailey', 'HR Manager', '4848 Birch St', 'San Francisco', 'CA', '94101', 'USA', '555-333-4444', '555-333-5555'),
    (52, 'Company ZZ', 'Jack Evans', 'Sales Manager', '4949 Spruce St', 'Atlanta', 'GA', '30301', 'USA', '555-444-5555', '555-444-6666'),
    (53, 'Company AAA', 'Lucas Reyes', 'Marketing Coordinator', '5050 Pine St', 'Dallas', 'TX', '75201', 'USA', '555-555-6666', '555-555-7777'),
    (54, 'Company BBB', 'Evelyn Hill', 'Finance Analyst', '5151 Oak St', 'Philadelphia', 'PA', '19101', 'USA', '555-666-7777', '555-666-8888'),
    (55, 'Company CCC', 'Lily Morris', 'HR Coordinator', '5252 Maple St', 'San Diego', 'CA', '92101', 'USA', '555-777-8888', '555-777-9999'),
    (56, 'Company DDD', 'Aiden Cook', 'Operations Manager', '5353 Birch St', 'Houston', 'TX', '77001', 'USA', '555-888-9999', '555-888-0000'),
    (57, 'Company EEE', 'Avery Rivera', 'Customer Service Rep', '5454 Spruce St', 'Chicago', 'IL', '60601', 'USA', '555-999-0000', '555-999-1111'),
    (58, 'Company FFF', 'Ella Turner', 'Sales Director', '5555 Elm St', 'Seattle', 'WA', '98101', 'USA', '555-000-1111', '555-000-2222'),
    (59, 'Company GGG', 'Sebastian Ward', 'Technical Support', '5656 Pine St', 'Los Angeles', 'CA', '90001', 'USA', '555-111-2222', '555-111-3333'),
    (60, 'Company HHH', 'Mila Bailey', 'Marketing Specialist', '5757 Oak St', 'Boston', 'MA', '02101', 'USA', '555-222-3333', '555-222-4444'),
    (61, 'Company III', 'Jack Evans', 'Finance Analyst', '5858 Walnut St', 'Miami', 'FL', '33101', 'USA', '555-333-4444', '555-333-5555'),
    (62, 'Company JJJ', 'Lucas Reyes', 'HR Manager', '5959 Maple St', 'San Francisco', 'CA', '94101', 'USA', '555-444-5555', '555-444-6666'),
    (63, 'Company KKK', 'Evelyn Hill', 'Sales Manager', '6060 Cedar St', 'Atlanta', 'GA', '30301', 'USA', '555-555-6666', '555-555-7777'),
    (64, 'Company LLL', 'Lily Morris', 'Marketing Coordinator', '6161 Pine St', 'Dallas', 'TX', '75201', 'USA', '555-666-7777', '555-666-8888'),
    (65, 'Company MMM', 'Aiden Cook', 'Technical Support', '6262 Oak St', 'Philadelphia', 'PA', '19101', 'USA', '555-777-8888', '555-777-9999'),
    (66, 'Company NNN', 'Avery Rivera', 'Customer Service Rep', '6363 Elm St', 'San Diego', 'CA', '92101', 'USA', '555-888-9999', '555-888-0000'),
    (67, 'Company OOO', 'Ella Turner', 'Operations Manager', '6464 Maple St', 'Houston', 'TX', '77001', 'USA', '555-999-0000', '555-999-1111'),
    (68, 'Company PPP', 'Sebastian Ward', 'Sales Representative', '6565 Cedar St', 'Chicago', 'IL', '60601', 'USA', '555-000-1111', '555-000-2222'),
    (69, 'Company QQQ', 'Mila Bailey', 'Marketing Specialist', '6666 Pine St', 'Seattle', 'WA', '98101', 'USA', '555-111-2222', '555-111-3333'),
    (70, 'Company RRR', 'Jack Evans', 'Finance Manager', '6767 Oak St', 'Los Angeles', 'CA', '90001', 'USA', '555-222-3333', '555-222-4444'),
    (71, 'Company SSS', 'Lucas Reyes', 'HR Coordinator', '6868 Elm St', 'Boston', 'MA', '02101', 'USA', '555-333-4444', '555-333-5555'),
    (72, 'Company TTT', 'Evelyn Hill', 'Sales Director', '6969 Maple St', 'Miami', 'FL', '33101', 'USA', '555-444-5555', '555-444-6666'),
    (73, 'Company UUU', 'Lily Morris', 'Marketing Coordinator', '7070 Cedar St', 'San Francisco', 'CA', '94101', 'USA', '555-555-6666', '555-555-7777'),
    (74, 'Company VVV', 'Aiden Cook', 'Technical Support', '7171 Pine St', 'Atlanta', 'GA', '30301', 'USA', '555-666-7777', '555-666-8888'),
    (75, 'Company WWW', 'Avery Rivera', 'Customer Service Rep', '7272 Oak St', 'Dallas', 'TX', '75201', 'USA', '555-777-8888', '555-777-9999'),
    (76, 'Company XXX', 'Ella Turner', 'Operations Manager', '7373 Elm St', 'Philadelphia', 'PA', '19101', 'USA', '555-888-9999', '555-888-0000'),
    (77, 'Company YYY', 'Sebastian Ward', 'Sales Representative', '7474 Maple St', 'San Diego', 'CA', '92101', 'USA', '555-999-0000', '555-999-1111'),
    (78, 'Company ZZZ', 'Mila Bailey', 'Marketing Specialist', '7575 Cedar St', 'Houston', 'TX', '77001', 'USA', '555-000-1111', '555-000-2222'),
    (79, 'Company AAAA', 'Jack Evans', 'Finance Manager', '7676 Pine St', 'Chicago', 'IL', '60601', 'USA', '555-111-2222', '555-111-3333'),
    (80, 'Company BBBB', 'Lucas Reyes', 'HR Coordinator', '7777 Oak St', 'Seattle', 'WA', '98101', 'USA', '555-222-3333', '555-222-4444'),
    (81, 'Company CCCC', 'Evelyn Hill', 'Sales Director', '7878 Elm St', 'Los Angeles', 'CA', '90001', 'USA', '555-333-4444', '555-333-5555'),
    (82, 'Company DDDD', 'Lily Morris', 'Marketing Coordinator', '7979 Maple St', 'Boston', 'MA', '02101', 'USA', '555-444-5555', '555-444-6666'),
    (83, 'Company EEEE', 'Aiden Cook', 'Technical Support', '8080 Cedar St', 'Miami', 'FL', '33101', 'USA', '555-555-6666', '555-555-7777'),
    (84, 'Company FFFF', 'Avery Rivera', 'Customer Service Rep', '8181 Pine St', 'San Francisco', 'CA', '94101', 'USA', '555-666-7777', '555-666-8888'),
    (85, 'Company GGGG', 'Ella Turner', 'Operations Manager', '8282 Oak St', 'Atlanta', 'GA', '30301', 'USA', '555-777-8888', '555-777-9999'),
    (86, 'Company HHHH', 'Sebastian Ward', 'Sales Representative', '8383 Elm St', 'Dallas', 'TX', '75201', 'USA', '555-888-9999', '555-888-0000'),
    (87, 'Company IIII', 'Mila Bailey', 'Marketing Specialist', '8484 Maple St', 'Philadelphia', 'PA', '19101', 'USA', '555-999-0000', '555-999-1111'),
    (88, 'Company JJJJ', 'Jack Evans', 'Finance Manager', '8585 Cedar St', 'San Diego', 'CA', '92101', 'USA', '555-000-1111', '555-000-2222'),
    (89, 'Company KKKK', 'Lucas Reyes', 'HR Coordinator', '8686 Pine St', 'Houston', 'TX', '77001', 'USA', '555-111-2222', '555-111-3333'),
    (90, 'Company LLLL', 'Evelyn Hill', 'Sales Director', '8787 Oak St', 'Chicago', 'IL', '60601', 'USA', '555-222-3333', '555-222-4444'),
    (91, 'Company MMMM', 'Lily Morris', 'Marketing Coordinator', '8888 Elm St', 'Seattle', 'WA', '98101', 'USA', '555-333-4444', '555-333-5555'),
    (92, 'Company NNNN', 'Aiden Cook', 'Technical Support', '8989 Maple St', 'Los Angeles', 'CA', '90001', 'USA', '555-444-5555', '555-444-6666'),
    (93, 'Company OOOO', 'Avery Rivera', 'Customer Service Rep', '9090 Cedar St', 'Boston', 'MA', '02101', 'USA', '555-555-6666', '555-555-7777'),
    (94, 'Company PPPP', 'Ella Turner', 'Operations Manager', '9191 Pine St', 'Miami', 'FL', '33101', 'USA', '555-666-7777', '555-666-8888'),
    (95, 'Company QQQQ', 'Sebastian Ward', 'Sales Representative', '9292 Oak St', 'San Francisco', 'CA', '94101', 'USA', '555-777-8888', '555-777-9999'),
    (96, 'Company RRRR', 'Mila Bailey', 'Marketing Specialist', '9393 Elm St', 'Atlanta', 'GA', '30301', 'USA', '555-888-9999', '555-888-0000'),
    (97, 'Company SSSS', 'Jack Evans', 'Finance Manager', '9494 Maple St', 'Dallas', 'TX', '75201', 'USA', '555-999-0000', '555-999-1111'),
    (98, 'Company TTTT', 'Lucas Reyes', 'HR Coordinator', '9595 Cedar St', 'Philadelphia', 'PA', '19101', 'USA', '555-000-1111', '555-000-2222'),
    (99, 'Company UUUU', 'Evelyn Hill', 'Sales Director', '9696 Pine St', 'San Diego', 'CA', '92101', 'USA', '555-111-2222', '555-111-3333'),
    (100, 'Company VVVV', 'Lily Morris', 'Marketing Coordinator', '9797 Oak St', 'Houston', 'TX', '77001', 'USA', '555-222-3333', '555-222-4444'),
	(101, 'Company WWWW', 'Aiden Cook', 'Technical Support', '9898 Cedar St', 'Chicago', 'IL', '60601', 'USA', '555-333-4444', '555-333-5555'),
    (102, 'Company XXXX', 'Avery Rivera', 'Customer Service Rep', '9999 Pine St', 'Seattle', 'WA', '98101', 'USA', '555-444-5555', '555-444-6666'),
    (103, 'Company YYYY', 'Ella Turner', 'Operations Manager', '1010 Elm St', 'Los Angeles', 'CA', '90001', 'USA', '555-555-6666', '555-555-7777'),
    (104, 'Company ZZZZ', 'Sebastian Ward', 'Sales Representative', '1111 Oak St', 'Boston', 'MA', '02101', 'USA', '555-666-7777', '555-666-8888'),
    (105, 'Company AAAA', 'Mila Bailey', 'Marketing Specialist', '1212 Maple St', 'Miami', 'FL', '33101', 'USA', '555-777-8888', '555-777-9999'),
    (106, 'Company BBBB', 'Jack Evans', 'Finance Manager', '1313 Cedar St', 'San Francisco', 'CA', '94101', 'USA', '555-888-9999', '555-888-0000'),
    (107, 'Company CCCC', 'Lucas Reyes', 'HR Coordinator', '1414 Pine St', 'Atlanta', 'GA', '30301', 'USA', '555-999-0000', '555-999-1111'),
    (108, 'Company DDDD', 'Evelyn Hill', 'Sales Director', '1515 Elm St', 'Dallas', 'TX', '75201', 'USA', '555-000-1111', '555-000-2222'),
    (109, 'Company EEEE', 'Lily Morris', 'Marketing Coordinator', '1616 Oak St', 'Philadelphia', 'PA', '19101', 'USA', '555-111-2222', '555-111-3333'),
    (110, 'Company FFFF', 'Aiden Cook', 'Technical Support', '1717 Cedar St', 'San Diego', 'CA', '92101', 'USA', '555-222-3333', '555-222-4444'),
    (111, 'Company GGGG', 'Avery Rivera', 'Customer Service Rep', '1818 Pine St', 'Houston', 'TX', '77001', 'USA', '555-333-4444', '555-333-5555'),
    (112, 'Company HHHH', 'Ella Turner', 'Operations Manager', '1919 Elm St', 'Chicago', 'IL', '60601', 'USA', '555-444-5555', '555-444-6666'),
    (113, 'Company IIII', 'Sebastian Ward', 'Sales Representative', '2020 Cedar St', 'Seattle', 'WA', '98101', 'USA', '555-555-6666', '555-555-7777'),
    (114, 'Company JJJJ', 'Mila Bailey', 'Marketing Specialist', '2121 Oak St', 'Los Angeles', 'CA', '90001', 'USA', '555-666-7777', '555-666-8888'),
    (115, 'Company KKKK', 'Jack Evans', 'Finance Manager', '2222 Maple St', 'Boston', 'MA', '02101', 'USA', '555-777-8888', '555-777-9999'),
    (116, 'Company LLLL', 'Lucas Reyes', 'HR Coordinator', '2323 Cedar St', 'Miami', 'FL', '33101', 'USA', '555-888-9999', '555-888-0000'),
    (117, 'Company MMMM', 'Evelyn Hill', 'Sales Director', '2424 Pine St', 'San Francisco', 'CA', '94101', 'USA', '555-999-0000', '555-999-1111'),
    (118, 'Company NNNN', 'Lily Morris', 'Marketing Coordinator', '2525 Elm St', 'Atlanta', 'GA', '30301', 'USA', '555-000-1111', '555-000-2222'),
    (119, 'Company OOOO', 'Aiden Cook', 'Technical Support', '2626 Cedar St', 'Dallas', 'TX', '75201', 'USA', '555-111-2222', '555-111-3333'),
    (120, 'Company PPPP', 'Avery Rivera', 'Customer Service Rep', '2727 Oak St', 'Philadelphia', 'PA', '19101', 'USA', '555-222-3333', '555-222-4444'),
	(121, 'ABC Industries', 'John Smith', 'Sales Manager', '123 Main St', 'New York', 'NY', '10001', 'USA', '555-123-4567', '555-123-7890'),
    (122, 'XYZ Corporation', 'Emily Johnson', 'Marketing Director', '456 Elm St', 'Los Angeles', 'CA', '90001', 'USA', '555-456-7890', '555-456-1234'),
	(123, 'Smith & Sons', 'Michael Smith', 'CEO', '789 Oak St', 'Chicago', 'IL', '60601', 'USA', '555-789-1234', '555-789-5678'),
    (124, 'Global Imports', 'Sophia Lee', 'Procurement Manager', '101 Pine St', 'San Francisco', 'CA', '94101', 'USA', '555-987-6543', '555-987-3210'),
	(125, 'DreamWorks Inc.', 'David Brown', 'Operations Director', '222 Cedar St', 'Seattle', 'WA', '98101', 'USA', '555-555-5555', '555-555-1234');
