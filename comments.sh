#!/bin/bash
# This script demonstrates Bash scripting with comments for educational purposes.
# It creates a directory named 'test_folder', lists directory contents before and after creation,
# verifies the operations, and displays a success message.
# The script includes error handling to ensure reliability.
# Author: [Your Name]
# Date: May 13, 2025

# Step 1: List current directory contents before creating a new directory
echo "Listing current directory contents before creating 'test_folder':"
ls -l  # Show the current directory contents for comparison

# Step 2: Create a new directory named 'test_folder' with error handling
if mkdir test_folder 2>/dev/null; then
    echo "Directory 'test_folder' created successfully."  # Confirm directory creation
else
    echo "Error: Failed to create 'test_folder'. Check permissions or if it already exists." >&2
    exit 1  # Exit with error code if directory creation fails
fi

# Step 3: List the parent directory again to show the new directory
echo "Listing current directory contents after creating 'test_folder':"
ls -l  # Show updated directory contents to verify creation

# Step 4: Navigate into the new directory with error handling
if cd test_folder; then
    echo "Successfully navigated into 'test_folder'."  # Confirm navigation
else
    echo "Error: Failed to navigate into 'test_folder'." >&2
    exit 1  # Exit with error code if navigation fails
fi

# Step 5: List contents of the new directory (even if empty) with context
echo "Listing contents of 'test_folder' (currently empty as no files are added):"
ls -l  # List contents of the new directory; will be empty since it's newly created

# Step 6: Display a final success message
echo "Directory 'test_folder' has been created, verified, and listed successfully!"
