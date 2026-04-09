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
