#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Soumya Ghosh | Course: OSS
# Reg No: 24MIM10093
# List of important system directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/var/lib/mysql")

echo "=========================================="
echo "      Directory Audit Report (FOSS)"
echo "=========================================="
printf "%-15s | %-12s | %-10s\n" "Directory" "Permissions" "Size"
echo "------------------------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extracting Permissions, Owner, and Group
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        
        # Calculate Size (Human Readable)
        SIZE=$(sudo du -sh "$DIR" 2>/dev/null | awk '{print $1}')
        
        printf "%-15s | %-12s | %-10s\n" "$DIR" "$PERMS" "$SIZE"
    else
        echo "$DIR does not exist on this system."
    fi
done

echo "------------------------------------------"
echo "Audit Completed on: $(date)"
