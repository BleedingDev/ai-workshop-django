# Task 5: Fix Errors with /fix

## Objective
Use the `/fix` slash command to fix linting and type errors.

## Setup
Run linting to see errors:
```bash
docker compose run --rm lint
# or locally:
ruff check .
```

## Instructions

1. Open a file with errors (e.g., `conduit/apps/articles/views.py`)

2. Look for a line with a linting error (red/yellow squiggle)

3. Select the problematic code, then in Copilot Chat:
   ```
   /fix
   ```

4. Review the suggested fix and apply it

## Practice Files
These files have many errors to fix:
- `conduit/apps/articles/serializers.py`
- `conduit/apps/authentication/serializers.py`
- `conduit/apps/profiles/views.py`

## Challenge
1. Run `ruff check conduit/apps/articles/views.py`
2. Fix 5 errors using `/fix`
3. Verify with `ruff check` again

## Tip
You can also select multiple lines and use `/fix` for batch fixes.
