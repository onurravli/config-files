#!/bin/bash

# Read the extensions file and install each extension
while IFS= read -r extension; do
    if [ -n "$extension" ]; then
        cursor --install-extension "$extension"
    fi
done < extensions

echo "All extensions have been installed."
