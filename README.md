# practice-databaseScript-Joseph-R

## Overview
This project contains a simple SQL database script for a Library System. It demonstrates basic database creation, table relationships, and data insertion using MySQL.

## Database Structure
The database includes three tables:

1. **Authors** – Stores author information (name, birth year).  
2. **Books** – Stores book information (title, publication year) and references `Authors` via a foreign key.  
3. **Borrowers** – Stores borrower information (name, email).  

All tables are properly linked with foreign keys where applicable.

## Script Features
- Creates a new database (`library_system_test`)  
- Drops tables if they already exist  
- Creates tables with appropriate primary and foreign keys  
- Inserts sample data for authors, books (ASOIAF & LOTR), and borrowers  
- Wrapped in a transaction (`START TRANSACTION` / `COMMIT`)  
- Includes queries to display tables and verify inserted data  