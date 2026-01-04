# RevJobs - Complete Project Setup & Run Guide

## 🚀 Quick Start (Automated)

### Option 1: Complete Project Startup
```bash
# Run this single command to start everything
start-project.bat
```

### Option 2: Individual Components
```bash
# Start backend services only
start-backend.bat

# Start frontend only  
start-frontend.bat
```

## 🔧 System Requirements Check
```bash
# Check if your system has all requirements
check-system.bat
```

## 🛠️ Manual Setup (If Needed)

### Prerequisites
- **Java JDK 17+** 
- **Node.js 18+** and **npm**
- **MySQL Server** (password: `Neha_2410`)
- **Maven**

### Database Setup
1. Start MySQL server
2. Run the database setup script:
```sql
-- In MySQL Workbench or command line
source setup-databases.sql
```

### Backend Services (Manual)
```bash
# 1. Build Common Library (REQUIRED FIRST!)
cd Backend\Common-Lib
mvn clean install

# 2. Start services in this order:
cd Backend\Discovery-Server
mvn spring-boot:run

cd Backend\Config-Server  
mvn spring-boot:run

cd Backend\Api-Gateway
mvn spring-boot:run

# 3. Start remaining services (any order):
cd Backend\User-Service
mvn spring-boot:run

cd Backend\Job-Service
mvn spring-boot:run

cd Backend\Application-Service
mvn spring-boot:run

cd Backend\Message-Service
mvn spring-boot:run

cd Backend\Notification-Service
mvn spring-boot:run
```

### Frontend (Manual)
```bash
cd Frontend
npm install --legacy-peer-deps
npm run dev
```

## 🏥 Health Check & Troubleshooting

### Check if everything is running
```bash
health-check.bat
```

### Stop all services
```bash
stop-all.bat
```

### Restart frontend only
```bash
cd Frontend
RESTART_FRONTEND.bat
# or
RESTART.ps1
```

## 📋 Service Ports & URLs

| Service | Port | URL | Status |
|---------|------|-----|--------|
| **Frontend** | 3000 | http://localhost:3000 | Main Application |
| **API Gateway** | 8081 | http://localhost:8081 | Backend Entry Point |
| **Discovery Server** | 8761 | http://localhost:8761 | Service Registry |
| **Config Server** | 8888 | http://localhost:8888 | Configuration |
| **User Service** | 8086 | - | Microservice |
| **Job Service** | 8082 | - | Microservice |
| **Application Service** | 8083 | - | Microservice |
| **Message Service** | 8084 | - | Microservice |
| **Notification Service** | 8085 | - | Microservice |

## 🔧 Fixes Applied

### Configuration Fixes
- ✅ Added missing `fetch-registry: true` to all Eureka clients
- ✅ Proper CORS configuration in API Gateway
- ✅ Database auto-creation enabled for all services
- ✅ Consistent service naming and ports

### Automation Scripts
- ✅ **start-project.bat** - Complete project startup
- ✅ **start-backend.bat** - Backend services with proper timing
- ✅ **start-frontend.bat** - Frontend with dependency management
- ✅ **check-system.bat** - System requirements verification
- ✅ **health-check.bat** - Service health monitoring
- ✅ **stop-all.bat** - Clean shutdown of all services
- ✅ **setup-databases.sql** - Database initialization

### Frontend Improvements
- ✅ Updated restart scripts with process cleanup
- ✅ Legacy peer deps handling for compatibility
- ✅ Proper proxy configuration for API calls

## 🚨 Common Issues & Solutions

### Issue: "Common Lib not found"
**Solution:** Run `cd Backend\Common-Lib && mvn clean install`

### Issue: "Port already in use"
**Solution:** Run `stop-all.bat` then restart

### Issue: "Database connection failed"
**Solution:** 
1. Check MySQL is running
2. Run `setup-databases.sql`
3. Verify password is `Neha_2410`

### Issue: "Service registration failed"
**Solution:** Ensure Discovery Server (8761) starts first and is fully loaded

### Issue: "Frontend won't start"
**Solution:** 
1. Run `npm install --legacy-peer-deps`
2. Use `RESTART_FRONTEND.bat`

## 📱 Usage

1. **Start the project:** `start-project.bat`
2. **Wait for all services to load** (about 2-3 minutes)
3. **Access the application:** http://localhost:3000
4. **Monitor services:** http://localhost:8761 (Eureka Dashboard)

## 🎯 Project Structure

```
VIRTUSA/
├── Backend/                 # Spring Boot Microservices
│   ├── Common-Lib/         # Shared library (build first!)
│   ├── Discovery-Server/   # Eureka Server
│   ├── Config-Server/      # Configuration Server  
│   ├── Api-Gateway/        # API Gateway
│   └── [Other Services]/   # Business Logic Services
├── Frontend/               # React + TypeScript + Vite
└── [Automation Scripts]/   # Startup & management scripts
```

## 🔄 Development Workflow

1. **Daily startup:** `start-project.bat`
2. **Code changes:** Services auto-reload on file changes
3. **Frontend changes:** Hot reload enabled
4. **Clean restart:** `stop-all.bat` → `start-project.bat`
5. **Health check:** `health-check.bat`

---

**అన్ని సర్వీసులు సరిగా రెస్పాండ్ అవుతాయి! 🚀**