# Task 7: Add Health Check Endpoint with Agent

## Objective
Use Copilot Agent mode to add a complete new feature.

## The Task
Add a `/api/health` endpoint that returns:
```json
{
  "status": "healthy",
  "database": "connected",
  "timestamp": "2024-01-15T10:30:00Z"
}
```

## Instructions

1. Open Copilot Chat

2. Use agent mode (click the agent icon or use @workspace):
   ```
   @workspace Add a health check endpoint at /api/health that:
   - Returns status, database connection status, and timestamp
   - Follows the existing code patterns in this project
   - Add it to the core app
   ```

3. Let the agent:
   - Create the view
   - Create the serializer (if needed)
   - Update URLs
   - Suggest tests

4. Review each file change before accepting

## Verify
```bash
docker compose up -d
curl http://localhost:8000/api/health
```

## Key Takeaways
- Agent mode can create multiple files
- Always review generated code
- It follows existing patterns when given context
