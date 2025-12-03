# Task 6: Add Docs and Tests with Slash Commands

## Objective
Use `/doc` and `/tests` slash commands to generate documentation and tests.

## Part A: Generate Documentation

1. Open `conduit/apps/articles/models.py`

2. Select the `Article` class

3. Use the docs command:
   ```
   /doc
   ```

4. Review and apply the generated docstring

5. Repeat for `Comment` and `Tag` classes

## Part B: Generate Tests

1. Open `conduit/apps/articles/serializers.py`

2. Select the `ArticleSerializer` class

3. Use the tests command:
   ```
   /tests
   ```

4. Review the generated test file

5. Save tests to `conduit/apps/articles/tests/test_serializers.py`

## Practice
Generate docs and tests for:
- `conduit/apps/authentication/models.py` → `User` class
- `conduit/apps/profiles/serializers.py` → `ProfileSerializer`

## Tip
For better tests, provide context:
```
/tests using pytest and Django test client
```
