#!/bin/bash

# Get the current directory as the base directory
base_directory=$(pwd)

# Loop through each folder in the base directory
for folder in "$base_directory"/*; do
    if [ -d "$folder" ]; then
        # Check if the folder contains a "finalDomains.txt" file
        if [ -f "$folder/finalDomains.txt" ]; then
            echo "Running subzy for folder: $folder"
            
            # Change to the folder directory
            cd "$folder" || exit 1
            
            # Run subzy with finaldomains.txt as targets
            subzy run --targets "finalDomains.txt" --verify_ssl --hide_fails > "subzy_output.txt"
            
            # Check for vulnerable subdomains
            while read -r line; do
                # Check if the subdomain has a CNAME record using dig
                cname_result=$(dig +short "$line" CNAME)
                if [ -n "$cname_result" ]; then
                    echo "$line -- CNAME exists" >> "vulnesubs.txt"
                fi
            done < "finalDomains.txt"
            
            # Move back to the base directory
            cd "$base_directory" || exit 1
        else
            echo "No 'finaldomains.txt' found in folder: $folder"
        fi
    fi
done
