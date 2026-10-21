
#!/bin/bash

echo "=================================="
echo " E-Commerce DevOps Health Check"
echo "=================================="

echo
echo "Checking Docker..."

if command -v docker >/dev/null 2>&1; then
    docker --version
else
    echo "Docker command not found in this environment."
fi

echo
echo "Checking Git..."

if command -v git >/dev/null 2>&1; then
    git --version
else
    echo "Git command not found in this environment."
fi

echo
echo "Health check completed."
