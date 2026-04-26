<!-- @format -->

# Instructions to Create GitHub Pull Request

Follow these steps in your terminal where `gh` command is available:

## Step 1: Navigate to Project Directory

```bash
cd /home/lorenzomccray/Cline
```

## Step 2: Check GitHub CLI Authentication

```bash
gh auth status
```

If not authenticated, run:

```bash
gh auth login
```

## Step 3: Create GitHub Repository

```bash
# Create a new repository on GitHub
gh repo create --public --description "Cline personal project root" --source=. --remote=origin --push
```

**OR** if you prefer to create it manually:

1. Go to <https://github.com/new>
2. Create repository named "cline" (or your preferred name)
3. Don't initialize with README
4. Then run:

   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
   git push -u origin master
   ```

## Step 4: Create Pull Request

```bash
# Create PR using the prepared body
gh pr create --title "Initial Cline project structure" --body-file /tmp/pr-body.md --base master
```

## Step 5: Verify PR Created

```bash
gh pr view --web
```

## Alternative: Manual PR Creation

If `gh` commands don't work:

1. Push your code:

   ```bash
   git push -u origin master
   ```

2. Go to your repository on GitHub
3. Click "Compare & pull request"
4. Use this information:
   - **Title**: Initial Cline project structure
   - **Description**: Copy from `/tmp/pr-body.md` or use this:

```
# Pull Request

## Related Issue
Fixes #XXXX

## Description
This PR adds initial project structure for the Cline personal project root, including:
- README.md with project documentation
- CLAUDE.md for project memory and context
- .gitignore file
- PR template for future pull requests
- Repo-owned control-plane surfaces (.clinerules/, .clinerules/hooks/, .clinerules/workflows/)
- Operations docs (docs/operations/, docs/prompts/)
- Runtime state directory (.cortex/)

## Type of Change
- [x] New feature (non-breaking change that adds functionality)
- [x] Documentation update

## Pre-flight Checklist
- [x] I have read the CONTRIBUTING.md document (if it exists)
- [x] My code follows the project's style guidelines
- [x] I have performed a self-review of my own code
- [x] I have commented my code, particularly in hard-to-understand areas
- [x] I have made corresponding changes to the documentation
- [x] My changes generate no new warnings

## Test Procedure
Manual verification of file structure and content.

## Additional Notes
Initial setup of the Cline personal project root directory structure.
```

## Current Project Status

- ✅ Git repository initialized with 2 commits
- ✅ All files committed
- ✅ PR template created at `.github/pull_request_template.md`
- ✅ PR body prepared at `/tmp/pr-body.md`
- ✅ Ready to push to GitHub
