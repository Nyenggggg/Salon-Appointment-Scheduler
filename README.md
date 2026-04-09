# 💇 Salon Appointment Scheduler

A command-line application that allows users to book salon appointments using **Bash scripting** and **PostgreSQL**.  
This project is part of the FreeCodeCamp Relational Database Certification.

---

## 📌 Project Overview

This application simulates a real-world salon booking system.  
Users can select a service, enter their phone number, and schedule an appointment.  

The system stores customer data and appointments in a PostgreSQL database, ensuring that returning customers are recognized automatically.

---

## ⚙️ Features

- 📋 View available salon services  
- 👤 Detect returning customers using phone number  
- 🆕 Register new customers  
- 📅 Book appointments  
- 💾 Store data in a relational database  
- 🔁 Prevent duplicate customer entries  

---

## 🛠️ Technologies Used

- Bash (Shell scripting)
- PostgreSQL
- SQL (JOIN, INSERT, SELECT)

---

## 🧠 How It Works

```text
User selects service
        ↓
Enter phone number
        ↓
Check if customer exists
   ↓           ↓
 Yes           No
  ↓             ↓
Get name     Ask name → Save
        ↓
Enter appointment time
        ↓
Save appointment
▶️ How to Run
1. Create database
psql -U postgres -c "CREATE DATABASE salon;"
2. Import database schema
psql -U postgres -d salon -f salon.sql
3. Make script executable
chmod +x salon.sh
4. Run the application
./salon.sh
💬 Example Interaction
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
🗄️ Database Structure
Customers
customer_id (Primary Key)
name
phone (Unique)
Services
service_id (Primary Key)
name
Appointments
appointment_id (Primary Key)
customer_id (Foreign Key)
service_id (Foreign Key)
time
🧠 What I Learned
Writing interactive Bash scripts
Using PostgreSQL for data storage
Handling user input in CLI applications
Preventing duplicate data using SQL queries
Building simple backend logic without frameworks
🚀 Future Improvements
Add input validation for time format
Add appointment cancellation feature
Build a web-based version of the app
Add admin panel for managing services
👤 Author

Built by Nyenggggg
Part of FreeCodeCamp Database Certification Journey 🚀
