# Task 8: Context Engineering - Create AGENTS.md

## Objective
Create an `AGENTS.md` file to provide better context for AI assistants.

## What is AGENTS.md?
A file that helps AI tools understand your project's conventions, patterns, and rules.

## Instructions

1. First, analyze the codebase:
   ```
   @workspace Analyze this codebase and identify:
   - Code conventions and patterns used
   - File organization structure
   - Naming conventions
   - Common patterns in views, serializers, models
   ```

2. Create `AGENTS.md` in the project root with sections:

```markdown
# AI Assistant Guidelines

## Project Overview
[Brief description of the project]

## Code Conventions
- [List conventions discovered]

## File Structure
- [Describe where things go]

## Patterns to Follow
- [Views pattern]
- [Serializer pattern]
- [URL pattern]

## Do's and Don'ts
- DO: [things to do]
- DON'T: [things to avoid]
```

3. Ask Copilot to help fill it in:
   ```
   @workspace Based on the existing code, what should go in each
   section of AGENTS.md?
   ```

## Why This Matters
- Improves AI suggestions quality
- Documents conventions for new developers
- Creates consistent code generation
