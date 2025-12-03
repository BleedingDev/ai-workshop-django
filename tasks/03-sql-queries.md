# Task 3: SQL Queries from Django Models

## Objective
Use Copilot to generate SQL queries based on Django ORM models.

## Relevant Files
- `conduit/apps/articles/models.py` - Article, Comment, Tag models
- `conduit/apps/authentication/models.py` - User model
- `conduit/apps/profiles/models.py` - Profile model

## Instructions

1. Open `conduit/apps/articles/models.py`

2. Select the `Article` model class, then ask in Copilot Chat:
   ```
   Generate a raw SQL query to find the top 10 most favorited articles
   with their author usernames
   ```

3. Try more complex queries:
   ```
   Write a SQL query to find users who have written articles
   but never commented on anyone else's articles
   ```

4. Ask for Django ORM equivalent:
   ```
   How would I write this query using Django ORM instead of raw SQL?
   ```

## Challenge
Generate a query to find "trending" articles (most favorites in last 7 days).
