# 🏥 Hospital Management System (HMS)

<p align="center">
   <img src="https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=java&logoColor=white"/>
   <img src="https://img.shields.io/badge/SpringBoot-6DB33F?style=for-the-badge&logo=springboot&logoColor=white"/>
   <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white"/>
   <img src="https://img.shields.io/badge/Tomcat-F8DC75?style=for-the-badge&logo=apache-tomcat&logoColor=black"/>
   <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white"/>
   <img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white"/>
   <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black"/>
</p>

> **Hospital Management System (HMS)** — a web-based app to manage patients, doctors, appointments, billing and hospital resources. It reduces paperwork, improves accuracy, and speeds up healthcare delivery.

---

## 📚 Table of Contents

1. [Features](#-features)
2. [Screenshots](#-screenshots)
3. [Tech Stack](#-tech-stack)
4. [Prerequisites](#-prerequisites)
5. [Installation (Step-by-step)](#-installation-step-by-step)

   * Clone
   * Import to IDE
   * Database setup
   * Configure
   * Build & Run
6. [Accessing the App](#-accessing-the-app)
7. [Troubleshooting](#-troubleshooting)
8. [Author](#-author)
9. [Social Links](#-social-links)

---

## 💡 Features

* Doctor & Patient Management
* Appointment Scheduling
* Medical Records Handling
* Billing & Invoicing
* Role-based Secure Login (Admin / Doctor / Patient)
* Reports & Analytics Dashboard
* Room & Bed Allocation
* Notification Alerts
* Admin Control Panel

---

## 📷 Screenshots

### 🔹 Sliding Banner – 1

![Slide 1](https://github.com/pappukumar35/Hospital-Management-System/blob/af57ca17a4447fb4a9c867a9fe08f6933b1dc953/slide%201.png?raw=true)

### 🔹 Sliding Banner – 2

![Slide 2](https://github.com/pappukumar35/Hospital-Management-System/blob/af57ca17a4447fb4a9c867a9fe08f6933b1dc953/slide%202.png?raw=true)

### 🔹 Key Features

![Key Features](https://github.com/pappukumar35/Hospital-Management-System/blob/af57ca17a4447fb4a9c867a9fe08f6933b1dc953/keyFeature.png?raw=true)

### 🔹 Doctor Name List

![Doctor Name](https://github.com/pappukumar35/Hospital-Management-System/blob/af57ca17a4447fb4a9c867a9fe08f6933b1dc953/doctor%20name.png?raw=true)

### 🔹 Signup Page

![Signup Page](https://github.com/pappukumar35/Hospital-Management-System/blob/af57ca17a4447fb4a9c867a9fe08f6933b1dc953/Signup%20page.png?raw=true)

### 🔹 Doctor Login

![Doctor Login](https://github.com/pappukumar35/Hospital-Management-System/blob/af57ca17a4447fb4a9c867a9fe08f6933b1dc953/Doctor%20Login.png?raw=true)

### 🔹 Admin Login

![Admin Login](https://github.com/pappukumar35/Hospital-Management-System/blob/af57ca17a4447fb4a9c867a9fe08f6933b1dc953/Admin%20Login.png?raw=true)

---

## 🛠️ Tech Stack

| Layer    | Technology                         |
| -------- | ---------------------------------- |
| Frontend | HTML, CSS, JavaScript              |
| Backend  | Java (Servlets / JSP, Spring Boot) |
| Database | MySQL                              |
| Server   | Apache Tomcat                      |
| Tools    | Eclipse IDE, Git, GitHub           |

---

## ✅ Prerequisites

* Java JDK 8 or newer
* Apache Tomcat (if running as WAR)
* MySQL Server
* Maven (if project uses Maven) or the IDE's build tools
* Eclipse / IntelliJ IDEA / VS Code (optional)

---

## 🚀 Installation (Step-by-step)

> **Note:** Each command below is presented in a fenced code block — on GitHub these will show a **copy** button so you can copy commands easily.

### 1️⃣ Clone the repository

```bash
# Copy this
git clone https://github.com/pappukumar35/Hospital-Management-System.git
cd Hospital-Management-System
```

### 2️⃣ Import into your IDE

**If using Eclipse (Maven project):**

* File → Import → Existing Maven Projects → select project root → Finish

**If using Eclipse (Dynamic Web Project / plain servlet):**

* File → Import → Existing Projects into Workspace → select project root
* Configure the project as a Dynamic Web Project and assign a Tomcat runtime.

**If using IntelliJ:**

* Open → select project folder → import as Maven/Gradle project (if applicable)

### 3️⃣ Setup MySQL database

**Create database**

```sql
-- Copy this into your MySQL client
CREATE DATABASE hospital_db CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
```

**Import provided SQL file** (adjust path if needed)

```bash
# Copy this
# from the project root (example path — change if file is in a different folder)
mysql -u root -p hospital_db < database/hospital_db.sql
```

> If the repository contains a differently named SQL file, replace `database/hospital_db.sql` with the actual path.

### 4️⃣ Configure database credentials

**Spring Boot (`src/main/resources/application.properties`) example**

```properties
# Copy this and update username/password
spring.datasource.url=jdbc:mysql://localhost:3306/hospital_db?useSSL=false&serverTimezone=UTC
spring.datasource.username=root
spring.datasource.password=your_db_password
spring.jpa.hibernate.ddl-auto=update
server.port=8080
```

**Or (Servlet / JDBC) example `db.properties`**

```properties
# Copy and update
db.url=jdbc:mysql://localhost:3306/hospital_db
db.username=root
db.password=your_db_password
```

Make sure the credentials in your project's config file match the MySQL user/password.

### 5️⃣ Add MySQL JDBC driver (if missing)

If you get `ClassNotFoundException: com.mysql.cj.jdbc.Driver`, add the MySQL connector dependency.

**Maven (pom.xml)**

```xml
<!-- Copy this into your pom.xml -->
<dependency>
  <groupId>mysql</groupId>
  <artifactId>mysql-connector-java</artifactId>
  <version>8.0.34</version>
</dependency>
```

### 6️⃣ Build & Run

**If Spring Boot (jar):**

```bash
# Copy this
./mvnw clean package
java -jar target/*.jar
```

**If deploying as WAR on Tomcat:**

* Export the project as a WAR file from Eclipse (`File → Export → WAR`) and drop the `.war` into `TOMCAT_HOME/webapps/`.

**Start Tomcat**

```bash
# Linux / macOS
$CATALINA_HOME/bin/startup.sh

# Windows
%CATALINA_HOME%\bin\startup.bat
```

### 7️⃣ Open the application

* Default URL: `http://localhost:8080/`
* If deployed under a context path: `http://localhost:8080/<context-path>/`

---

## ⚠️ Troubleshooting

* **Port already in use**: Change `server.port` or stop the service using the port.
* **DB connection errors**: Check credentials, DB name, and that MySQL is running.
* **Missing JDBC driver**: Add `mysql-connector-java` dependency.
* **404 on pages**: Verify the app context path and mapping; check console logs for startup errors.

---

## 👨‍💻 Author

<div align="center">
  <img src="https://avatars.githubusercontent.com/u/108002196?v=4" width="100" style="border-radius:50%;"><br>
  <strong>Pappu Kumar</strong><br>
  Full Stack Developer
</div>

---

## 🌐 Social Links (image badges)

<p align="center">
  <a href="mailto:tpgcoder@gmail.com" target="_blank">
    <img src="https://img.shields.io/badge/Email-FF512F?style=for-the-badge&logo=gmail&logoColor=white&labelColor=DD2476" alt="Email" />
  </a>
  <a href="https://linkedin.com/in/pappukumar35" target="_blank">
    <img src="https://img.shields.io/badge/LinkedIn-1DA1F2?style=for-the-badge&logo=linkedin&logoColor=white&labelColor=0077B5" alt="LinkedIn" />
  </a>
  <a href="https://github.com/pappukumar35" target="_blank">
    <img src="https://img.shields.io/badge/GitHub-333333?style=for-the-badge&logo=github&logoColor=white&labelColor=000000" alt="GitHub" />
  </a>
  <a href="https://pappukumar-portfolio.vercel.app" target="_blank">
    <img src="https://img.shields.io/badge/Portfolio-FF8008?style=for-the-badge&logo=firefox&logoColor=white&labelColor=FFC837" alt="Portfolio" />
  </a>
</p>

---

## 📝 License

This project currently has no license. If you'd like, I can add an `MIT` / `Apache-2.0` license file for you.

---

If you want, I can also:

* Prepare a ready-to-commit `README.md` (raw) file for you to paste into the repo.
* Create a simple `LICENSE` file.
* Turn some screenshots into a GIF demo for the README.

Tell me which of these you want next.
