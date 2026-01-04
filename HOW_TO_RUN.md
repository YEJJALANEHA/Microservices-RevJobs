# How to Run Backend and Frontend

## Quick Start Guide

### Prerequisites
- **Java JDK 17+** installed
- **Node.js 18+** and **npm** installed
- **MySQL Server** running (default password: `Neha_2410`)
- **Maven** installed (or use IDE)

---

## 🚀 Running the Backend (Microservices)

The backend consists of multiple Spring Boot microservices. **Start them in this exact order:**

### Step 1: Build Common Library (Required First!)
```powershell
cd Backend\Common-Lib
mvn clean install
```

### Step 2: Start Services in Order

**1. Discovery Server (Eureka) - Port 8761**
```powershell
cd Backend\Discovery-Server
mvn spring-boot:run
```
Wait until you see "Started DiscoveryServerApplication" before proceeding.

**2. Config Server - Port 8888**
```powershell
cd Backend\Config-Server
mvn spring-boot:run
```

**3. API Gateway - Port 8081**
```powershell
cd Backend\Api-Gateway
mvn spring-boot:run
```

**4. Core Services** (Start these in any order after the above):
```powershell
# User Service - Port 8086
cd Backend\User-Service
mvn spring-boot:run

# Job Service - Port 8082
cd Backend\Job-Service
mvn spring-boot:run

# Application Service - Port 8083
cd Backend\Application-Service
mvn spring-boot:run

# Message Service - Port 8084
cd Backend\Message-Service
mvn spring-boot:run

# Notification Service - Port 8085
cd Backend\Notification-Service
mvn spring-boot:run
```

### Alternative: Using IDE (IntelliJ IDEA / Eclipse)
1. Import the `Backend` folder as a Maven project
2. Run the main class for each service in the order listed above

### Verify Backend is Running
- **Discovery Server**: http://localhost:8761 (Eureka Dashboard)
- **API Gateway**: http://localhost:8081

---

## 🎨 Running the Frontend

### Step 1: Navigate to Frontend Directory
```powershell
cd Frontend
```

### Step 2: Install Dependencies
```powershell
npm install
```
If you encounter dependency conflicts, use:
```powershell
npm install --legacy-peer-deps
```

### Step 3: Start Development Server
```powershell
npm run dev
```
or
```powershell
npm start
```

### Step 4: Access the Application
Open your browser to: **http://localhost:3000** (or the port shown in terminal)

---

## 📋 Port Reference

| Service | Port | URL |
|---------|------|-----|
| Frontend | 3000 | http://localhost:3000 |
| API Gateway | 8081 | http://localhost:8081 |
| Discovery Server | 8761 | http://localhost:8761 |
| Config Server | 8888 | http://localhost:8888 |
| User Service | 8086 | - |
| Job Service | 8082 | - |
| Application Service | 8083 | - |
| Message Service | 8084 | - |
| Notification Service | 8085 | - |

---

## ⚠️ Important Notes

1. **Database**: Ensure MySQL is running with password `Neha_2410` (or update credentials in each service's `application.yml`)

2. **Startup Order**: Always start Discovery Server → Config Server → API Gateway → Other Services

3. **Common Lib**: Must build `Common-Lib` first before running any other service

4. **CORS**: Frontend is configured to proxy API requests to `http://localhost:8081` (API Gateway)

---

## 🐛 Troubleshooting

- **Database Connection Error**: Check MySQL is running and credentials match
- **Service Registration Failed**: Ensure Discovery Server (8761) is fully started first
- **Common Lib Not Found**: Run `mvn clean install` in `Backend\Common-Lib`
- **Port Already in Use**: Stop the service using that port or change the port in `application.yml`

