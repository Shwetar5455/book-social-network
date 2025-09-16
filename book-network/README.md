# Book Social Network - Backend

## Overview

The backend of the Book Social Network project is responsible for handling all server-side operations, including user authentication, book management, and API endpoints. This section provides an overview of the backend architecture, technologies used, and setup instructions.

## Technologies Used

- **Spring Boot 3**: A powerful framework for building Java-based applications.
- **Spring Security 6**: Provides authentication and authorization mechanisms for securing the application.
- **JWT Token Authentication**: Ensures secure communication between the client and server.
- **Spring Data JPA**: Simplifies data access and persistence using the Java Persistence API.
- **JSR-303 and Spring Validation**: Enables validation of objects based on annotations.
- **OpenAPI and Swagger UI Documentation**: Generates documentation for the API endpoints.
- **Docker**: Facilitates containerization of the backend application for deployment.

## Setup Instructions

To set up the backend of the Book Social Network project, follow these steps:

1. Clone the repository:

```bash
   git clone https://github.com/ali-bouali/book-social-network.git
```

2. Run the docker-compose file

```bash
  docker-compose up -d
```

3. Navigate to the book-social-network directory:

```bash
  cd book-social-network
```

4. Install dependencies (assuming Maven is installed):

```bash
  mvn clean install
```

4. Run the application but first replace the `x.x.x` with the current version from the `pom.xml` file

```bash
  java -jar target/book-network-api-x.x.x.jar
```

5. Access the API documentation using Swagger UI:

Open a web browser and go to `http://localhost:8088/swagger-ui/index.html.

## Running Docker build
The build should be run under book-network folder
```bash
docker build -t bsn/bsn:1.0.3 -f ../docker/backend/Dockerfile .
```

## Pushing Docker image to Docker Hub
1. Login to dockerHub

```bash
   docker login -u shwetar5455
```

2. Tag your local image with the registry/repo name:

```bash
   docker tag ban/bsn:1.0.3 shwetar5455/bsn:1.0.0
```

3. Push the image:

```bash
   docker push shwetar5455/bsn:1.0.0
```

## License

This project is licensed under the Apache License 2.0. See the [LICENSE](LICENSE) file for details.

## Contributors

- [Ali Bouali](https://github.com/ali-bouali)
