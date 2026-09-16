# Student Organization Finance Database

## Project Overview

This project is a relational database designed to manage and analyze the financial transactions of a student organization.

The database records organizational members, activities, income, expenses, and financial transactions. SQL queries are used to analyze financial performance and generate useful financial insights.

## Objectives

- Organize financial transaction data in a structured database.
- Track organizational income and expenses.
- Monitor the financial balance of each activity.
- Identify major expense categories.
- Analyze financial data using SQL queries.

## Database Structure

The database consists of three main tables:

- `members` — stores organization member information.
- `activities` — stores information about organization activities.
- `transactions` — stores income and expense transactions.

### Relationships

`activities` and `transactions` are connected through `activity_id`.

## SQL Skills

This project demonstrates the use of:

- CREATE DATABASE
- CREATE TABLE
- INSERT INTO
- SELECT
- WHERE
- SUM
- GROUP BY
- ORDER BY
- HAVING
- CASE
- JOIN
- PRIMARY KEY
- FOREIGN KEY

## Financial Analysis

The project answers several financial questions, including:

1. What is the total organizational income?
2. What is the total organizational expense?
3. What is the current organizational balance?
4. Which expense category has the highest spending?
5. Which activities have a financial deficit?
6. What are the main sources of organizational income?
7. What is the financial summary of each activity?

## Key Findings

Based on the sample dataset:

- Total Income: Rp4,500,000
- Total Expense: Rp3,800,000
- Organization Balance: Rp700,000
- Highest Expense Category: Charity Supplies
- Activity with a Deficit: Annual Gathering

## Tools Used

- MySQL / MariaDB
- phpMyAdmin
- SQL
- XAMPP
- GitHub

## Project Structure

```text
student-organization-finance-database/
│
├── database/
│   └── organization_finance.sql
│
├── analysis/
│   └── financial_analysis.sql
│
└── README.md
