# Microservices Project

This repository is part of a microservices-based application consisting of the following services and infrastructure components.

## Project Architecture

The system is divided into independent services that communicate with each other through the API Gateway and are registered through the Service Registry.

```text
                         +----------------------+
                         |      API Gateway      |
                         +----------+-----------+
                                    |
                 +------------------+------------------+
                 |                                     |
        +--------v---------+                  +--------v---------+
        |   Quiz Service   |                  | Question Service |
        +--------+---------+                  +--------+---------+
                 |                                     |
                 +------------------+------------------+
                                    |
                         +----------v-----------+
                         |   Service Registry   |
                         +----------------------+
```

## Linked Repositories

The following repositories are part of the same project:

| Component | Description | Repository |
|---|---|---|
| Quiz Service | Manages quizzes and quiz-related operations. | [Quiz Service](https://github.com/smsibtainrn/quiz-service.git) |
| Question Service | Manages questions and question-related operations. | [Question Service](https://github.com/smsibtainrn/question-service.git) |
| API Gateway | Provides a single entry point for client requests and routes requests to the appropriate services. | [API Gateway](https://github.com/smsibtainrn/quiz-question-api-gateway.git) |
| Service Registry | Handles service registration and discovery between microservices. | [Service Registry](https://github.com/smsibtainrn/quiz-question-service-registry.git) |

> **Note:** Replace the repository URL placeholders with the actual GitHub repository links.

## Components Overview

### 1. Quiz Service

Responsible for:

- Creating and managing quizzes.
- Associating questions with quizzes.
- Handling quiz-related business logic.
- Communicating with the Question Service when required.

### 2. Question Service

Responsible for:

- Creating and managing questions.
- Retrieving questions.
- Handling question-related business logic.
- Providing question data to other services.

### 3. API Gateway

Responsible for:

- Acting as the entry point for client applications.
- Routing incoming requests to the correct microservice.
- Centralizing gateway-level configurations.
- Supporting cross-cutting concerns such as security, logging, and request filtering when configured.

### 4. Service Registry

Responsible for:

- Registering available microservices.
- Supporting service discovery.
- Allowing services to locate one another dynamically.
- Supporting scalable communication between services.

## Request Flow

A typical request follows this flow:

```text
Client
  |
  v
API Gateway
  |
  v
Service Registry
  |
  v
Target Microservice
  |
  v
Response
```

## Repository Structure

Each component is maintained in its own GitHub repository:

```text
Microservices Project
├── quiz-service
├── question-service
├── api-gateway
└── service-registry
```

## Getting Started

To run the complete project:

1. Clone all linked repositories.
2. Start the Service Registry.
3. Start the Quiz Service and Question Service.
4. Start the API Gateway.
5. Send requests through the API Gateway rather than directly accessing individual services.

## Technology Stack

Update this section according to the technologies used in the project.

- Kotlin / Java
- Spring Boot
- Spring Cloud
- Spring Cloud Gateway
- Service Discovery
- REST APIs
- Database: `Add database technology`
- Build Tool: `Gradle / Maven`

## Notes

- Each service should have its own configuration and deployment setup.
- Service-to-service communication should use registered service names where applicable.
- The API Gateway should be used as the primary entry point for external clients.
- Keep the repository links updated whenever a repository is renamed or moved.
