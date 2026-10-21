# Docker and Docker Compose

## Objective

Run the existing Saleor e-commerce application in a consistent container environment.

## Current Local Environment

The Saleor Platform repository is maintained separately at:

`C:\DevOpsProjects\saleor-platform`

The local Docker Compose environment includes the API, PostgreSQL database, cache, dashboard, background worker, and supporting services.

## Verification Commands

```cmd
cd C:\DevOpsProjects\saleor-platform
docker compose ps
docker compose logs --tail=50 api
```

GraphQL endpoint:

`http://localhost:8000/graphql/`

Dashboard:

`http://localhost:9000/`

## Next Implementation Tasks

- Review the upstream Docker Compose configuration.
- Identify application services and dependencies.
- Prepare a repeatable startup and health-check procedure.
- Integrate automated validation into Jenkins.
- Plan the Kubernetes deployment separately.
