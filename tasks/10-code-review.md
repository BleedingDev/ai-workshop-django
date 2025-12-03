# Task 10: Code Review with Copilot

## Objective
Use Copilot for code review in VS Code and GitHub UI.

## Part A: VS Code Review

1. Open a file you want to review (e.g., `conduit/apps/articles/views.py`)

2. Select a function or class

3. Ask for review:
   ```
   Review this code for:
   - Security issues
   - Performance problems
   - Best practices violations
   ```

4. Or use the review command:
   ```
   /review
   ```

## Part B: GitHub PR Review

1. Create a branch and make some changes:
   ```bash
   git checkout -b fix/sample-changes
   # Make some changes
   git commit -am "Sample changes for review"
   git push -u origin fix/sample-changes
   ```

2. Create a Pull Request on GitHub

3. In the PR, use Copilot:
   - Click "Copilot" button in the review toolbar
   - Or comment: `@github-copilot review this PR`

4. Review Copilot's suggestions

## Review Checklist
Ask Copilot to check for:
- [ ] Security vulnerabilities
- [ ] Missing error handling
- [ ] Performance issues
- [ ] Code style violations
- [ ] Missing tests
- [ ] Documentation gaps

## Challenge
1. Create a PR that fixes 5 linting errors
2. Have Copilot review it
3. Address any feedback
