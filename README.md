# AI Workshop Django

> Django RealWorld Example App - upgraded for Python 3.12 with strict linting configured (but NOT applied).

This is a training dataset for AI coding workshops. The codebase runs correctly but contains **hundreds of style violations** that linters will catch.

## Quick Start (Docker - Recommended)

```bash
# Build and run
docker compose up --build

# That's it! Visit:
# - App: http://localhost:8000/api/articles
# - Admin: http://localhost:8000/admin
#   Login: admin@example.com / admin123
```

### Docker Commands

```bash
# Start the server
docker compose up

# Run in background
docker compose up -d

# View logs
docker compose logs -f

# Stop
docker compose down

# Run linting (see the errors!)
docker compose run --rm lint

# Run type checking
docker compose run --rm typecheck

# Open a shell in the container
docker compose exec web bash
```

## Quick Start (uv - Local)

```bash
# Install uv if you haven't
curl -LsSf https://astral.sh/uv/install.sh | sh

# Setup and run
uv venv
source .venv/bin/activate
uv pip install -r requirements.txt
python manage.py migrate
python manage.py runserver
```

## Quick Start (pip - Local)

```bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python manage.py migrate
python manage.py runserver
```

## Admin Access

- **URL:** http://localhost:8000/admin
- **Email:** admin@example.com
- **Password:** admin123

Or create your own:
```bash
python manage.py createsuperuser
```

**Note:** Login uses email, not username.

## The "Trap" - Code Quality Issues

This codebase has strict linting and formatting configured but **NOT applied**:

| Check | Command | Issues |
|-------|---------|--------|
| Linting | `docker compose run --rm lint` | **217 errors** |
| Formatting | `docker compose run --rm format-check` | **34 files** |
| Type checking | `docker compose run --rm typecheck` | **103 errors** |

**Total: 354 issues to fix!**

### Fix Commands (for workshop)

```bash
# Check issues (read-only)
docker compose run --rm lint           # See linting errors
docker compose run --rm format-check   # See formatting issues
docker compose run --rm typecheck      # See type errors

# Auto-fix (modifies files)
docker compose run --rm lint-fix       # Fix auto-fixable lint issues
docker compose run --rm format         # Fix formatting

# Local commands
ruff check .                           # Lint check
ruff check --fix .                     # Lint fix
ruff format --check .                  # Format check
ruff format .                          # Format fix
mypy conduit                           # Type check
```

**Workshop Goal:** Fix these errors using AI assistance.

## Enforce Consistency (Pre-commit)

After fixing issues, enforce consistency with pre-commit hooks:

```bash
# Install pre-commit
pip install pre-commit

# Install hooks (runs on every commit)
pre-commit install

# Run manually on all files
pre-commit run --all-files
```

## Verify Everything Works

```bash
# 1. Server responds
curl http://localhost:8000/api/articles
# Expected: {"articles": [], "articlesCount": 0}

# 2. Linting finds errors
docker compose run --rm lint | tail -3
# Expected: Found 200+ errors

# 3. Admin loads
curl -I http://localhost:8000/admin/
# Expected: HTTP/1.1 302 Found
```

## API Endpoints

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/api/users` | POST | Register |
| `/api/users/login` | POST | Login |
| `/api/user` | GET/PUT | Current user |
| `/api/profiles/:username` | GET | Get profile |
| `/api/profiles/:username/follow` | POST/DELETE | Follow user |
| `/api/articles` | GET/POST | List/Create articles |
| `/api/articles/:slug` | GET/PUT/DELETE | Article CRUD |
| `/api/articles/:slug/comments` | GET/POST | Comments |
| `/api/articles/:slug/favorite` | POST/DELETE | Favorite |
| `/api/tags` | GET | List tags |

## Tech Stack

- Python 3.12
- Django 4.2+
- Django REST Framework 3.14+
- SQLite (default)
- Docker + Docker Compose
- Ruff (linting + formatting)
- mypy + django-stubs (type checking)
- pre-commit (git hooks)
