Project Overview

The ID Card Generator system allows an Admin to manage student records (Add, Edit, Delete, View), while Students can securely log in to view their own ID details.

This project demonstrates:
1. Core Java concepts
2. JDBC database connectivity
3. Servlet–JSP interaction
4. Session management
5. MVC design patter
6. Clean UI with responsive JSP pages

Features:

Authentication
  - Role-based login (Admin / Student)
  - Session handling with secure logout
  
Admin Module
  - Add new student details
  - Update student information (except ID & Roll No)
  - Delete student records with confirmation
  - View all students in tabular format
  - Dashboard-based navigation
  
Student Module
  - Login using ID and password
  - View personal, academic, and address details
  - Read-only access (no modification)
  - Clean card-based dashboard UI

Project Structure
IP_Project_TW
│
├── src
│   └── main
│       ├── java
│       │   ├── logic
│       │   │   └── IdLogic.java
│       │   │
│       │   ├── login_logout
│       │   │   ├── LoginServlet.java
│       │   │   └── LogoutServlet.java
│       │   │
│       │   ├── model
│       │   │   └── IdDetails.java
│       │   │
│       │   ├── servlet
│       │   │   ├── IdCardServlet.java
│       │   │   └── StudentDashboardServlet.java
│       │   │
│       │   └── util
│       │       └── DBConnect.java
│       │
│       └── webapp
│           ├── login.jsp
│           ├── adminDashboard.jsp
│           ├── studentDashboard.jsp
│           ├── addDetails.jsp
│           ├── updateDetails.jsp
│           ├── viewDetails.jsp
│           ├── META-INF
│           └── WEB-INF
│
├── Mysql code.sql
├── java web Project structure.jpeg
├── File Structure of java web project.png
└── README.md


Technologies Used
- Java (JDK 8+)
- JSP & Servlets
- JDBC
- MySQL
- Apache Tomcat (9/10)
- HTML, CSS
- Git & GitHub

Database Design
1. Tables Used
2. admin_login
3. student
4. student_login
Key Concepts:
- Primary & Foreign Keys
- ON DELETE CASCADE
- Secure login validation

Normalized student data

Database script is provided in:
Mysql code.sql

How to Run the Project
1. Clone the repository:
git clone https://github.com/your-username/IDCardgenerator.git

2. Import the project into Eclipse / IntelliJ as a Dynamic Web Project
Configure Apache Tomcat Server

3. Create MySQL database and run:
Mysql code.sql
Update DB credentials in:
util/DBConnect.java

4. Start the server and access:
http://localhost:8080/IP_Project_TW/login.jsp


Default Login (Example)
Admin
  Username: admin1
  Password: 1234
Student
  ID: S102
  Password: 123456
(Credentials may vary based on database data)

Screens & Flow
- Project structure diagram
- Application flowchart
- Admin & Student dashboards
- Card-based student ID view

(All images included in the repository)

Learning Outcomes
1. Understanding MVC in Java Web Apps
2. Handling sessions securely
3. CRUD operations using JDBC
4. Clean JSP UI design
5. Real-world project structuring

Developer
Yashkumar Motilal Gupta
Java | JSP | Servlets | MySQL 
