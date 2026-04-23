#!/bin/bash
# Script to create GitHub repository and pull request for Cline project

set -e  # Exit on error

echo "=== Creating GitHub Repository and Pull Request ==="

# Check if gh is installed
if ! command -v gh &> /dev/null; then
    echo "Error: GitHub CLI (gh) is not installed or not in PATH."
    echo "Install it from: https://cli.github.com/"
    exit 1
fi

# Check authentication
echo "Checking GitHub authentication..."
if ! gh auth status &> /dev/null; then
    echo "Please authenticate with GitHub:"
    gh auth login
fi

# Create repository and push
echo "Creating GitHub repository..."
gh repo create "cline" --public --description "Cline personal project root" --source=. --remote=origin --push

# Create pull request
echo "Creating pull request..."
gh pr create --title "Initial Cline project structure" --body-file /tmp/pr-body.md --base master

echo "=== Done! ==="
echo "View your PR with: gh pr view --web"