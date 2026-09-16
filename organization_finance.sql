CREATE DATABASE IF NOT EXISTS organization_finance;

USE organization_finance;

CREATE TABLE members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(100) NOT NULL
);

CREATE TABLE activities (
    activity_id INT AUTO_INCREMENT PRIMARY KEY,
    activity_name VARCHAR(150) NOT NULL,
    activity_date DATE NOT NULL
);

CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    activity_id INT,
    transaction_type ENUM('Income', 'Expense') NOT NULL,
    category VARCHAR(100) NOT NULL,
    amount DECIMAL(12,2) NOT NULL,
    transaction_date DATE NOT NULL,
    description TEXT,
    FOREIGN KEY (activity_id) REFERENCES activities(activity_id)
);

INSERT INTO members (name, position) VALUES
('Alya Putri', 'Chairperson'),
('Raka Pratama', 'Secretary'),
('Siti Rahma', 'Treasurer'),
('Dimas Akbar', 'Event Coordinator'),
('Nadia Fitria', 'Public Relations');

INSERT INTO activities (activity_name, activity_date) VALUES
('New Student Orientation', '2026-02-10'),
('Charity Event', '2026-03-15'),
('Leadership Workshop', '2026-04-20'),
('Annual Gathering', '2026-05-25');

INSERT INTO transactions
(activity_id, transaction_type, category, amount, transaction_date, description)
VALUES
(1, 'Income', 'Membership Fee', 1000000, '2026-02-01', 'Membership fees collected from members'),
(1, 'Expense', 'Event Equipment', 350000, '2026-02-08', 'Equipment for student orientation'),
(1, 'Expense', 'Food and Drinks', 250000, '2026-02-09', 'Refreshments for participants'),
(2, 'Income', 'Sponsorship', 2000000, '2026-03-01', 'Sponsorship for charity event'),
(2, 'Expense', 'Charity Supplies', 1200000, '2026-03-12', 'Supplies for charity activities'),
(2, 'Expense', 'Transportation', 300000, '2026-03-14', 'Transportation costs'),
(3, 'Income', 'Registration Fee', 1500000, '2026-04-01', 'Workshop registration fees'),
(3, 'Expense', 'Speaker Fee', 700000, '2026-04-18', 'Payment for workshop speaker'),
(3, 'Expense', 'Venue', 400000, '2026-04-19', 'Workshop venue rental'),
(4, 'Expense', 'Food and Drinks', 600000, '2026-05-24', 'Food for annual gathering');