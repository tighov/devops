#!/bin/bash

# Navigate to the project directory
PROJECT_DIR="/home/user/myproject"
cd "$PROJECT_DIR" || exit

# Run tests
echo "Running tests..."
./run-tests.sh

# Check test results
if [ $? -eq 0 ]; then
   echo "Tests passed successfully!"
else
   echo "Tests failed!"
exit 1 fi
