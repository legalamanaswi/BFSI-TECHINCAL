# 🏦 Bank Analysis Transcations

## 📌 Overview
This project implements a **Bank System Database** designed to manage customer information and their financial transactions. The database is structured using **relational concepts** to ensure **data consistency, integrity, and scalability**.

---

## 🗂️ Database Name
**bank_system**

---

## 📊 Tables in the Database
The system consists of two main tables:

- **Customers**
- **Transactions**

---

## 👤 Customers Table

### 📌 Description
The **Customers** table stores all the personal and account-related details of bank users. It acts as the **primary entity** in the system.

---

### 📋 Columns

| Column Name      | Data Type                     | Description |
|-----------------|-----------------------------|-------------|
| **CUSTOMER_ID** | INT (PK, AUTO_INCREMENT)     | Unique identifier for each customer |
| **NAME**        | VARCHAR(100)                 | Customer's full name |
| **EMAIL**       | VARCHAR(100)                 | Customer's email address |
| **CITY**        | VARCHAR(50)                  | City of residence |
| **ACCOUNT_TYPE**| VARCHAR(20)                  | Type of account (**Savings / Current**) |
| **ACCOUNT_BALANCE** | DECIMAL(10,2)           | Current account balance |

---

### ⚙️ Key Points
- **CUSTOMER_ID** is the **Primary Key**
- Automatically increments for each new customer  
- Stores **master data** of the system  
- Account balance reflects the customer's financial status  

---

### 🎯 Purpose
- Maintain **customer identity**  
- Store **account-related information**  
- Serve as a **reference for transactions**  

---

## 💳 Transactions Table

### 📌 Description
The **Transactions** table records all financial activities performed by customers, such as **deposits and withdrawals**.

---

### 📋 Columns

| Column Name        | Data Type                  | Description |
|-------------------|---------------------------|-------------|
| **TRANSACTION_ID**| INT (PK, AUTO_INCREMENT)  | Unique transaction identifier |
| **CUSTOMER_ID**   | INT (FK)                  | References the customer |
| **AMOUNT**        | DECIMAL(10,2)             | Transaction amount |
| **TRANSACTION_TYPE** | VARCHAR(20)            | Type (**Credit / Debit**) |
| **TRANSACTION_MODE** | VARCHAR(20)            | Mode (**UPI, ATM, NEFT, IMPS**) |
| **TRANSACTION_DATE** | DATETIME               | Date and time of transaction |

---

### ⚙️ Key Points
- **TRANSACTION_ID** is the **Primary Key**
- **CUSTOMER_ID** is a **Foreign Key**
- Linked to the **Customers** table  
- Stores **transactional (dynamic) data**  
- Automatically captures timestamp  

---

### 🎯 Purpose
- Record all **customer transactions**  
- Track **money inflow and outflow**  
- Maintain **transaction history**  

---

## 🔗 Relationship Between Tables

- **Type:** One-to-Many  

### Explanation:
- One customer can have **multiple transactions**  
- Each transaction belongs to **one customer**  

---

## 📌 Relationship Mapping

| Table         | Key            | Reference |
|--------------|----------------|----------|
| **Customers**   | CUSTOMER_ID    | Primary Key |
| **Transactions**| CUSTOMER_ID    | Foreign Key → Customers |

---



