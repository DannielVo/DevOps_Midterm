# Product Management Web Application

### DevOps Mid-Term Project – Cloud Migration & Containerization

## 1. Project Overview

This repository contains a sample **Product Management Web Application** developed using Node.js and Express. The application exposes a RESTful API for managing products and provides a simple server-side rendered web interface for interacting with the system.

The project is used as the foundation for the **DevOps Mid-Term Project in the course Software Deployment, Operations and Maintenance.** The objective is not only to run the application locally but also to deploy and manage it in a cloud environment using two different deployment approaches.

The system demonstrates a typical **MVC (Model-View-Controller) architecture** and uses MongoDB as the primary database. In order to improve resilience during development or testing, the application automatically falls back to an **in-memory datastore** if the MongoDB connection cannot be established during startup.

During the course project, this application will be progressively deployed to a **Ubuntu cloud server**, first using a traditional server-based deployment model and later using a **containerized deployment with Docker and Docker Compose**.

---

## 2. Objectives

The main objectives of this project are:

- To deploy a fully functional web application on a cloud server.
- To apply **DevOps principles** in software delivery and operations.
- To practice **Linux server configuration and automation scripts**.
- To implement **two deployment strategies**:
  - Traditional server-based deployment
  - Containerized deployment using Docker
- To configure infrastructure components such as:
  - firewall rules
  - reverse proxy
  - domain and HTTPS
- To ensure the application deployment is **secure, reproducible, and maintainable**.
- To conduct a **comparative analysis** between traditional deployment and container-based deployment.

---

## 3. Technology Stack

### Backend

- Node.js
- Express.js

### Database

- MongoDB (via Mongoose)

### Frontend

- EJS (Embedded JavaScript Templates)
- Bootstrap

### Infrastructure & DevOps Tools

- Ubuntu Linux Server
- Git & GitHub
- Bash Automation Scripts

### Containerization (Phase 3)

- Docker
- Docker Compose

---

## 4. System Architecture

The application follows a classic **three-layer architecture** based on the MVC design pattern.

```bash
Client (Browser)
|
Express Web Server
|
Controllers
|
Service Layer (Data Source Abstraction)
|
Database (MongoDB) / In-Memory Fallback
```

Key architectural characteristics:

- **Model Layer**  
  Defines the data schema for products using Mongoose.

- **Controller Layer**  
  Handles HTTP requests and responses.

- **View Layer**  
  Server-side rendered pages using EJS templates.

- **Service Layer**  
  Provides an abstraction between the application and the data source, enabling automatic fallback from MongoDB to an in-memory datastore when necessary.

---

## 5. Repository Structure

The repository is organized into multiple phases that reflect the progression of the DevOps deployment process.

```bash
DevOps_Midterm/
│
├── phase1/
│ ├── source-code/
│ ├── scripts/
│ ├── docs/
│ └── README.md
│
├── phase2/
│ ├── deployment-files/
│ ├── configs/
│ ├── docs/
│ └── README.md
│
├── phase3/
│ ├── docker/
│ ├── docker-compose.yml
│ ├── docs/
│ └── README.md
│
└── README.md
```

### Phase Descriptions

**Phase 1 - Local Setup & Traditional Deployment Preparation**

This phase focuses on preparing the application for deployment by organizing the repository, documenting the project, and creating automation scripts for local setup.

**Phase 2 - Cloud Server Deployment**

The application will be deployed to a **Ubuntu cloud server** using a traditional server-based approach. This includes:

- manual server setup
- reverse proxy configuration
- firewall rules
- domain and HTTPS configuration

**Phase 3 - Containerized Deployment**

The application will be containerized using Docker and orchestrated using Docker Compose, allowing easier reproducibility and deployment automation.

---

## 6. Prerequisites

Before running the application locally, ensure the following software is installed:

- Node.js (version 16 or higher)
- npm (Node Package Manager)
- MongoDB (local instance or remote server)
- Git

For later phases:

- Docker
- Docker Compose
- Ubuntu Linux environment (for cloud deployment)

---

## 7. Environment Variables

The application requires environment variables defined in a `.env` file.

Example configuration:

```bash
PORT=3000
MONGO_URI=mongodb://localhost:27017/products_db
```

### Variable Description

| Variable  | Description                            |
| --------- | -------------------------------------- |
| PORT      | Port number used by the Express server |
| MONGO_URI | MongoDB connection string              |

If authentication is required for MongoDB, the URI should include the username and password accordingly.

---

## 8. How to Run Locally

### 1. Clone the Repository

```bash
git clone <repository-url>
cd project-root/phase1/source-code
```

### 2. Install Dependencies

```bash
npm install
```

### 3. Configure Environment Variables

Create a `.env` file with the required variables:

```bash
PORT=3000
MONGO_URI=mongodb://localhost:27017/products_db
```

### 4. Start the Application

Run the application using Node.js:

```bash
npm start
```

or in development mode using nodemon:

```bash
npm run dev
```

### 5. Access the Application

Open a browser and navigate to:

```bash
http://localhost:3000
```

The homepage provides a user interface for viewing, creating, editing, and deleting products.

---

## 9. Automation Scripts

The `scripts` directory contains automation scripts that simplify the setup and deployment process.

Typical scripts may include:

- **Environment setup scripts**  
  Install dependencies and configure the runtime environment.

- **Deployment scripts**  
  Automate server preparation and application startup.

- **Maintenance scripts**  
  Assist with tasks such as restarting services or cleaning temporary files.

These scripts are designed to ensure that the project setup can be reproduced consistently across different machines and environments.

---

## 10. Deployment Strategy

The project implements two different deployment approaches on the same cloud server.

### Traditional Server-Based Deployment

In this approach, the application runs directly on the Ubuntu server.

Key steps include:

- installing Node.js and MongoDB
- configuring the firewall
- setting up a reverse proxy
- assigning a domain name
- enabling HTTPS
- managing the application process

### Containerized Deployment (Docker)

In the second approach, the application will be packaged into Docker containers.

Key advantages include:

- consistent runtime environments
- simplified deployment
- improved scalability
- easier infrastructure reproducibility

Docker Compose will be used to manage multiple containers such as:

- application container
- database container

---

## 11. Branching Strategy

The repository follows a simple Git branching strategy.

| Branch      | Purpose                                    |
| ----------- | ------------------------------------------ |
| main        | Stable production-ready version            |
| development | Integration branch for ongoing development |
| feature/\*  | Individual feature branches                |

All new features or fixes should be developed in a separate **feature branch** and merged into the `development` branch through a pull request.

---

## 12. Additional Notes

The application supports the following features:

- Full REST API for product management (CRUD operations)
- Server-side rendered user interface
- Product image upload functionality
- Automatic deletion of old images when products are updated or removed
- Automatic seeding of sample data when the MongoDB collection is empty
- Automatic fallback to an **in-memory datastore** when MongoDB is unavailable

For production environments, storing uploaded images directly on the server disk is not recommended. Instead, a cloud storage solution such as **Amazon S3 or Cloudinary** should be used.

---

## 13. Project Team

The following table lists the team members and their corresponding GitHub usernames.  
This information is provided so that commit histories in the repository can be clearly mapped to the respective students.

| GitHub Username  | Full Name              |
| ---------------- | ---------------------- |
| DannielVo        | Võ Trọng Phát          |
| TrinhNghi        | Nguyễn Ngọc Trinh Nghi |
| KobaltzStudio    | Nguyễn Ngọc Trinh Nghi |
| nhatminh205-real | Trần Vũ Nhật Minh      |
