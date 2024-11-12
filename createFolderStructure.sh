#!/bin/bash

# Define the base client project directory
CLIENT_PROJECT="Client Project (Acme Company)"

# Define the sub-structures for penetration testing
TEST_TYPES=("EPT" "IPT")
SUBFOLDERS=("evidence" "logs" "scans" "scope" "tools")

# Create the folder structure
echo "Creating folder structure for '$CLIENT_PROJECT'..."

# Create the base directory
mkdir -p "$CLIENT_PROJECT"

# Loop through each penetration test type and create subfolders
for TEST in "${TEST_TYPES[@]}"; do
    echo "Setting up structure for $TEST..."
    for FOLDER in "${SUBFOLDERS[@]}"; do
        mkdir -p "$CLIENT_PROJECT/$TEST/$FOLDER"
    done
done

# Confirm completion
echo "Folder structure created successfully:"
tree "$CLIENT_PROJECT" || ls -R "$CLIENT_PROJECT"  # Fallback to ls if tree is not installed

