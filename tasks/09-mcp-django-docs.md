# Task 9: MCP Integration for Django Docs

## Objective
Use Context7 MCP to access up-to-date Django documentation.

## What is MCP?
Model Context Protocol - allows AI tools to access external data sources like documentation.

## Setup Context7

1. Install the Context7 VS Code extension (if not installed)

2. In Copilot Chat, you can now reference Django docs:
   ```
   Using Django 4.2 documentation, how do I implement
   custom model managers?
   ```

## Practice Queries

1. Query Django REST Framework docs:
   ```
   @context7 How do I implement custom throttling in DRF?
   ```

2. Query Django docs:
   ```
   @context7 What's new in Django 4.2 for async views?
   ```

3. Compare with current code:
   ```
   @context7 Is our authentication implementation following
   DRF best practices? Check conduit/apps/authentication/
   ```

## Use Cases
- Check if code follows latest best practices
- Find correct import paths
- Discover new features you could use
- Validate security implementations

## Note
If Context7 is not available, you can still ask Copilot about Django - it has training data, just not the latest docs.
