# GitHub Copilot Workshop Tasks

Minimalistic, focused tasks for learning GitHub Copilot.

## Prerequisites
- VS Code with GitHub Copilot extension
- GitHub Copilot Chat enabled
- This project running (`docker compose up`)

## Tasks

| # | Task | Focus |
|---|------|-------|
| 01 | [Ask & Plan](01-ask-plan.md) | Analysis before coding |
| 02 | [Model Comparison](02-model-comparison.md) | Model selection (quick) |
| 03 | [SQL Queries](03-sql-queries.md) | Generate SQL from models |
| 04 | [@workspace Analysis](04-workspace-analysis.md) | Codebase understanding |
| 05 | [Fix Errors](05-fix-errors.md) | `/fix` slash command |
| 06 | [Docs & Tests](06-docs-and-tests.md) | `/doc` and `/tests` commands |
| 07 | [New Endpoint](07-new-endpoint.md) | Agent mode for features |
| 08 | [Context Engineering](08-context-engineering.md) | Create AGENTS.md |
| 09 | [MCP Integration](09-mcp-django-docs.md) | Django docs via Context7 |
| 10 | [Code Review](10-code-review.md) | Review in VS Code & GitHub |

## Codebase Errors to Fix
```bash
ruff check .              # 217 linting errors
ruff format --check .     # 34 files need formatting
mypy conduit              # 103 type errors
```

## Time Estimate
- Tasks 1-6: ~45 minutes
- Tasks 7-10: ~45 minutes
- Total: ~90 minutes
