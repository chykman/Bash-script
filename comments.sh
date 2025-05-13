#!/bin/bash
# This script demonstrates Bash scripting with comments for educational purposes.
# It creates a directory named 'test_folder', lists directory contents before and after creation,
# verifies the operations, and displays a success message.
# The script includes error handling to ensure reliability.
# Author: [Your Name]
# Date: May 13, 2025

# Step 1: List current directory contents before creating a new directory
echo "Listing current directory contents before creating 'test_folder':"
# Show the current directory contents for comparison
ls -l  

# Step 2: Create a new directory named 'test_folder' with error handling
if mkdir test_folder 2>/dev/null; then
# Confirm directory creation
    echo "Directory 'test_folder' created successfully."  
else
    echo "Error: Failed to create 'test_folder'. Check permissions or if it already exists." >&2
    # Exit with error code if directory creation fails
    exit 1  
fi

# Step 3: List the parent directory again to show the new directory
echo "Listing current directory contents after creating 'test_folder':"
# Show updated directory contents to verify creation
ls -l  

# Step 4: Navigate into the new directory with error handling
if cd test_folder; then
# Confirm navigation
    echo "Successfully navigated into 'test_folder'."  
else
    echo "Error: Failed to navigate into 'test_folder'." >&2
    # Exit with error code if navigation fails
    exit 1  
fi

# Step 5: List contents of the new directory (even if empty) with context
echo "Listing contents of 'test_folder' (currently empty as no files are added):"
# List contents of the new directory; will be empty since it's newly created
ls -l  

# Step 6: Display a final success message
echo "Directory 'test_folder' has been created, verified, and listed successfully!"
