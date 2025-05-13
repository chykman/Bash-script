#!/bin/bash

# This is a single-line comment in Bash
echo "Hello, you are learning Bash Scripting on DAREY.IO!" # This is also a comment, following a command


# This is another way to create
# a multi-line comment. Each line
# is prefixed with a # symbol.
echo "Here is an actual code that gets executed"

#!/bin/bash
# This script demonstrates the use of Bash comments and performs basic file system operations.
# It creates a new directory, lists its contents, and displays a success message.
# The purpose is to showcase single-line and multi-line comments, as well as practical functionality.
# Author: [Your Name]
# Date: May 13, 2025

# Create a new directory named 'test_folder' with inline comment explaining the step
mkdir test_folder  # This command creates a directory called 'test_folder'

# Change to the new directory and list its contents
cd test_folder     # Navigate into the 'test_folder' directory
ls -l              # List the directory contents in long format to verify creation

# Display a success message
echo "Directory 'test_folder' has been created and listed successfully!"  # Inform the user of successful execution
