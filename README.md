# 💇 Salon Appointment Scheduler

A command-line application that allows users to book salon appointments using Bash scripting and PostgreSQL.

This project is part of the FreeCodeCamp Relational Database Certification and demonstrates how to build a simple backend system using a relational database.

---

## 📌 Project Overview

This application simulates a real-world salon booking system where users can:

- Select a service
- Enter their phone number
- Book an appointment

The system automatically detects returning customers using their phone number and stores all data in a PostgreSQL database.

It demonstrates how command-line applications can interact with a relational database to manage real-world data.

---

## ⚙️ Features

- View available salon services  
- Identify returning customers via phone number  
- Register new customers automatically  
- Book appointments through CLI interaction  
- Store data persistently using PostgreSQL  
- Prevent duplicate customer records using UNIQUE constraints  
- Use relational tables (customers, services, appointments)  

---

## 🛠️ Technologies Used

- Bash (Shell scripting)
- PostgreSQL
- SQL (SELECT, INSERT, JOIN)
- CLI-based user interaction

---

## 🧠 How It Works

```
User starts the application
        ↓
System displays available services
        ↓
User selects a service
        ↓
User enters phone number
        ↓
System checks if customer exists
   ↓                    ↓
Existing Customer     New Customer
        ↓                    ↓
Retrieve name        Ask for name → Save to DB
        ↓
Ask for appointment time
        ↓
Insert appointment into database
        ↓
Display confirmation message
```

---

## ▶️ How to Run

### 1. Create the database

```bash
psql -U postgres -c "CREATE DATABASE salon;"
```

### 2. Import the database schema

```bash
psql -U postgres -d salon -f salon.sql
```

### 3. Make the script executable

```bash
chmod +x salon.sh
```

### 4. Run the application

```bash
./salon.sh
```

---

## 💬 Example Interaction

```
~~~~~ MY SALON ~~~~~

Welcome to My Salon, how can I help you?

1) Cut
2) Color
3) Perm

Select a service: 1

Enter your phone number: 09123456789

Welcome back, John!

Enter appointment time: 2pm

I have put you down for a Cut at 2pm, John.
```

---

## 🗄️ Database Structure

### Customers Table

- customer_id (Primary Key)
- name
- phone (Unique)

### Services Table

- service_id (Primary Key)
- name

### Appointments Table

- appointment_id (Primary Key)
- customer_id (Foreign Key → customers.customer_id)
- service_id (Foreign Key → services.service_id)
- time

---

## 🔍 Example SQL Logic

Get customer by phone:

```sql
SELECT customer_id, name FROM customers WHERE phone = '09123456789';
```

Insert new customer:

```sql
INSERT INTO customers(name, phone) VALUES('John', '09123456789');
```

Insert appointment:

```sql
INSERT INTO appointments(customer_id, service_id, time)
VALUES(1, 2, '2pm');
```

---

## 🧠 What I Learned

- Building interactive CLI applications using Bash scripting  
- Connecting Bash scripts with PostgreSQL databases  
- Writing SQL queries to manage relational data  
- Using foreign keys to link tables  
- Handling user input and conditional logic  
- Preventing duplicate data using UNIQUE constraints  
- Designing simple backend logic without frameworks  

---

## 🚀 Future Improvements

- Add input validation (phone format, time format)  
- Add appointment cancellation feature  
- Allow users to view existing appointments  
- Add service management (add/remove services)  
- Convert CLI application into a web-based system  
- Build a REST API version using Node.js or Python  

---

## 📁 Suggested Project Structure

```
Salon-Appointment-Scheduler/
├── salon.sql
├── salon.sh
├── README.md
```

(Optional improvement)

```
Salon-Appointment-Scheduler/
├── sql/
│   └── salon.sql
├── scripts/
│   └── salon.sh
├── README.md
```

---

## 👤 Author

Built by Nyenggggg  
Part of FreeCodeCamp Database Certification Journey 🚀

---

## ⭐ Notes

This project focuses on understanding database fundamentals, Bash scripting, and CLI-based applications.  
It is a foundational step toward building full backend systems and APIs.
