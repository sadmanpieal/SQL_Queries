# Database Assignment

This project involves the creation and manipulation of a database called `database_assignment`. The database contains a table named `customers`, which stores customer information such as names, contact details, and points accumulated. The SQL script includes commands for creating the database and table, inserting data, querying the table, and modifying its structure.

## Table of Contents
- [Introduction](#introduction)
- [Database Structure](#database-structure)
- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [SQL Commands Breakdown](#sql-commands-breakdown)
- [Examples](#examples)
- [Contributors](#contributors)
- [License](#license)

## Introduction

The objective of this assignment is to demonstrate fundamental SQL operations, including creating databases and tables, inserting and querying data, and modifying table structures. The project showcases the use of various SQL queries to retrieve and manipulate data based on different conditions.

## Database Structure

The `database_assignment` consists of a single table:

### `customers` Table

| Column       | Type          | Description                          |
|--------------|---------------|--------------------------------------|
| id           | INT           | Primary Key, Auto-incremented        |
| first_name   | VARCHAR(25)    | Customer's first name                |
| last_name    | VARCHAR(25)    | Customer's last name                 |
| dob          | DATE           | Customer's date of birth (renamed)   |
| phone        | VARCHAR(15)    | Customer's phone number              |
| address      | VARCHAR(50)    | Customer's address                   |
| city         | VARCHAR(15)    | City where the customer resides      |
| state        | VARCHAR(15)    | State where the customer resides     |
| points       | INT            | Points accumulated by the customer   |

## Installation

To run the SQL script, follow these steps:

1. **Install MySQL**: Ensure you have MySQL installed on your system.
2. **Access MySQL**: Open your MySQL command-line interface (CLI) or any MySQL-compatible database management tool.
3. **Run the SQL Script**:
   - Copy the contents of the provided `database_assignment.sql` file.
   - Paste it into the CLI or use a database management tool to execute the script.

## Usage

Once the database is set up, you can perform various operations as defined in the script:

1. **Create Database**: The script creates a database named `database_assignment`.
2. **Create Table**: It then creates a table named `customers` within this database.
3. **Insert Data**: Five records are inserted into the `customers` table.
4. **Query Data**: The script includes multiple queries to retrieve and manipulate the data.

## Features

- **Database Creation**: Automates the creation of a MySQL database.
- **Table Creation**: Defines and sets up the structure of the `customers` table.
- **Data Insertion**: Inserts sample customer data into the table.
- **Data Queries**: Provides several examples of data retrieval using SQL queries, including filtering, ordering, and conditional selection.
- **Table Modification**: Demonstrates how to modify table structures by renaming columns.
- **Categorization**: Classifies customers based on their points into membership levels using SQL `CASE` statements.

## SQL Commands Breakdown

### Database and Table Creation

```sql
CREATE DATABASE database_assignment;
USE database_assignment;

CREATE TABLE customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    dob DATE,
    phone VARCHAR(15),
    address VARCHAR(50),
    city VARCHAR(15),
    state VARCHAR(15),
    points INT
);
