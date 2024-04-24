#!/bin/bash

# Check if the file exists
if [ ! -f "test.csv" ]; then
    echo "File test.csv does not exist."
    exit 1
fi

# Read the CSV file line by line and print each column separately
while IFS=',' read -r col1 col2 col3; do
    echo "Column 1: $col1"
    echo "Column 2: $col2"
    echo "Column 3: $col3"
    echo "======================="
done < test.csv