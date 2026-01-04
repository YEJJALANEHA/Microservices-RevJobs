# RevJobs - End-to-End Project Setup & Preparation Guide

This guide provides a comprehensive walkthrough to prepare, configure, and run the RevJobs application locally. The project is a Microservices-based application using Spring Boot for the backend and React (Vite) for the frontend.

## 1. Prerequisites

Ensure you have the following installed on your system:
- **Java Development Kit (JDK) 17** or higher.
- **Node.js** (v18.0.0 or higher) and **npm**.
- **MySQL Server** (v8.0 or higher).
- **Maven** (Apache Maven) - *Optional if you use the `mvnw` wrapper provided in subdirectories*.

## 2. Database Setup

The microservices use MySQL databases. Each service typically manages its own database.

### 2.1 Credentials
The project is currently configured with the following default database credentials (in `application.yml` files):
- **Username**: `root`
- **Password**: `Neha_2410`

*Critical: If your local MySQL root password differs, you must update the `password` field in `src/main/resources/application.yml` for EACH backend service.*

### 2.2 Create Databases
The services operate with `createDatabaseIfNotExist=true`, so they should auto-create their databases. However, to ensure smooth startup, ensure your MySQL server is running.

Expected databases based on configuration:
- `revjobs_users` (User Service)
- `revjobs_jobs` (Job Service)
- `revjobs_applications` (Application Service)
- `revjobs_messages` (Message Service)
- `revjobs_notifications` (Notification Service)

### 2.3 Initialize Data (Optional)
Run the provided SQL scripts located in `D:\VIRTUSA\Backend\` to populate initial data:
1. Open MySQL Workbench or CLI.
2. Run `sample_jobs.sql` (Populates jobs data).
3. Run `add_recruiter_jobs.sql` (if available/needed).

## 3. Backend Setup & Execution

The backend consists of multiple microservices. **Order of execution is critical.**

### 3.1 Startup Sequence
You must start the services in this exact order:

1.  **Discovery Server (Eureka)**
    *   **Path**: `Backend/Discovery-Server`
    *   **Port**: `8761`
    *   **Wait**: Wait until you see "Started DiscoveryServerApplication" in logs.

2.  **Config Server**
    *   **Path**: `Backend/Config-Server`
    *   **Port**: `8888`
    *   **Note**: Runs in `native` profile (loads configs from local classpath).

3.  **API Gateway**
    *   **Path**: `Backend/Api-Gateway`
    *   **Port**: `8081`
    *   **Role**: Entry point for all frontend requests.

4.  **Core Services** (Start these in any order after the above):
    *   **User Service**: `Backend/User-Service` (Port 8086)
    *   **Job Service**: `Backend/Job-Service` (Port 8082)
    *   **Application Service**: `Backend/Application-Service` (Port 8083)
    *   **Message Service**: `Backend/Message-Service` (Port 8084)
    *   **Notification Service**: `Backend/Notification-Service` (Port 8085)
    *   **Common Lib**: Note that `Common-Lib` is a library, not a service. You must run `mvn clean install` on `Backend/Common-Lib` *first* so other services can find it.

### 3.2 How to Run a Service
For each service folder:
```bash
# Using Terminal in the service directory
mvn spring-boot:run
```
*Or import the `Backend` folder into IntelliJ IDEA / Eclipse and run the main class for each service.*

## 4. Frontend Setup & Execution

The frontend is a React application built with Vite.

### 4.1 Configuration
Verify `Backend/Api-Gateway/src/main/resources/application.yml` allows CORS from your frontend port (default 5173). The current config allows:
- `http://localhost:5173`
- `http://127.0.0.1:5173`

### 4.2 Installation & Run
1.  Navigate to the frontend directory:
    ```powershell
    cd D:\VIRTUSA\Frontend
    ```
2.  Install dependencies:
    ```powershell
    npm install
    # or if that fails due to dependency conflicts:
    npm install --legacy-peer-deps
    ```
3.  Start the development server:
    ```powershell
    npm run dev
    ```
4.  Access the App:
    Open your browser to `http://localhost:5173` (or the port shown in terminal).

## 5. Architecture & Ports Reference

| Component | Service Name | Path | Port | Database Name | Description |
|-----------|--------------|------|------|---------------|-------------|
| **Frontend** | `revjobs-frontend` | `/Frontend` | `5173` | N/A | React UI |
| **API Gateway** | `api-gateway` | `/Backend/Api-Gateway` | `8081` | N/A | Gateway / Router |
| **Discovery Server** | `discovery-server` | `/Backend/Discovery-Server` | `8761` | N/A | Eureka Server |
| **Config Server** | `config-server` | `/Backend/Config-Server` | `8888` | N/A | Configuration Holder |
| **User Service** | `user-service` | `/Backend/User-Service` | `8086` | `revjobs_users` | Auth & User Mgmt |
| **Job Service** | `job-service` | `/Backend/Job-Service` | `8082` | `revjobs_jobs` | Job Listings |
| **App Service** | `application-service` | `/Backend/Application-Service` | `8083` | `revjobs_applications` | Job Applications |
| **Message Service** | `message-service` | `/Backend/Message-Service` | `8084` | `revjobs_messages` | Chat/Messaging |
| **Notification Service** | `notification-service` | `/Backend/Notification-Service` | `8085` | `revjobs_notifications` | Email/Push Notifs |
| **Common Lib** | `common-lib` | `/Backend/Common-Lib` | N/A | N/A | Shared DTOs/Utils |

## 6. Common Issues & Troubleshooting

-   **Database Connection Refused**: Ensure MySQL is running and credentials in `application.yml` match your local setup.
-   **Service Registration Failed**: Ensure Discovery Server (8761) is fully running before starting other services.
-   **Common Lib Not Found**: If services fail to build complaining about missing classes, run `mvn clean install` inside `Backend/Common-Lib` first.
-   **CORS Issues**: If frontend cannot talk to backend, check `Api-Gateway` CORS settings and ensure you are accessing via `localhost` (not IP) if that's what is whitelisted.
