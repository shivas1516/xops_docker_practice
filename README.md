#  Containerized Spring Boot Application
This is a simple, containerized Spring Boot application. This project uses Multi-Stage Docker Containerization to reduce the final image size and improve build efficiency.

## Approch
<div align="center">
  <img width="1419" height="113" alt="Questa immagine mostra la differenza tra build a singolo stadio e build a più stadi in termini di dimensione dell'immagine" src="https://github.com/user-attachments/assets/56e5f867-f726-4e78-b8f4-a7c9f69662ae" />
  <p><em>This shows the difference between single-stage build and multi-stage build impact on image size.</em></p>
</div>

## Get the Image from Docker Hub
``` bash
docker push shiva1415/docker-practice:latest
```

## Run the Container
``` bash
docker run -p 9000:9000 spring-app-multi-stage:latest
```

## APIs Available

### 1. User Management APIs
- **GET** `/users` - Get all users
- **GET** `/users/{id}` - Get user by ID
- **POST** `/users` - Create new user
- **PUT** `/users/{id}` - Update user
- **DELETE** `/users/{id}` - Delete user
- **GET** `/users/department/{department}` - Get users by department
- **GET** `/users/count` - Get total user count

## Testing the APIs

### 1. Hello API
```bash
curl http://localhost:9000
```
Expected response: `"Hello from XOps!"`

### 2. Get all users
```bash
curl http://localhost:9000/users
```

### 3. Create a new user
```bash
curl -X POST http://localhost:9000/users \
  -H "Content-Type: application/json" \
  -d '{
    "name": "Test User",
    "email": "test@xops.com",
    "department": "Testing"
  }'
```

### 4. Get user by ID
```bash
curl http://localhost:9000/users/1
```

### 5. Get users by department
```bash
curl http://localhost:9000/users/department/Engineering
```



