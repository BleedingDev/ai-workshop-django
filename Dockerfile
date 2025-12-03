# syntax=docker/dockerfile:1
FROM python:3.12-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set work directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install uv for fast package management
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.local/bin:$PATH"

# Copy requirements first for better caching
COPY requirements.txt .

# Install Python dependencies
RUN uv pip install --system -r requirements.txt

# Install dev tools (ruff, mypy) for the workshop
RUN uv pip install --system ruff mypy django-stubs

# Copy project files
COPY . .

# Run migrations and create default superuser
RUN python manage.py migrate && \
    python manage.py shell -c "from conduit.apps.authentication.models import User; User.objects.filter(email='admin@example.com').exists() or User.objects.create_superuser('admin', 'admin@example.com', 'admin123')"

# Expose port
EXPOSE 8000

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:8000/api/articles || exit 1

# Run server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
