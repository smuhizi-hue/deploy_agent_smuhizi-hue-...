#!/usr/bin/env bash

# Ask user input muhizi-hue
echo "testing up"
read input

# Parent directory
parent_dir="attendance_tracker_${input}"

# Create directory structure
mkdir -p "$parent_dir/Helpers"
mkdir -p "$parent_dir/reports"

# Create required files
touch "$parent_dir/attendance_checker.py"
touch "$parent_dir/Helpers/assets.csv"
touch "$parent_dir/Helpers/config.json"
touch "$parent_dir/reports/reports.log"

echo "Directory architecture created successfully."

# Display structure
tree "$parent_dir"

