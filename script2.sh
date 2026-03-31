#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Soumya Ghosh
# Reg No: 24MIM10093

PACKAGE="mysql-server"

echo "Checking status of: $PACKAGE"
echo "---------------------------"

# Check if installed using dpkg
if dpkg -s $PACKAGE &>/dev/null; then
    echo "STATUS: $PACKAGE is installed on this Linux system."
    # Extract version and license info
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer'
else
    echo "STATUS: $PACKAGE is NOT found."
fi

echo ""
echo "--- Philosophy Note ---"
case $PACKAGE in
    mysql-server)
        echo "MySQL: An open-source RDBMS that democratized data storage."
        echo "It follows the GPL license, ensuring the code remains free."
        ;;
    apache2)
        echo "Apache: The pioneer of the open web server movement."
        ;;
    *)
        echo "A vital component of the Free and Open Source (FOSS) ecosystem."
        ;;
esac
