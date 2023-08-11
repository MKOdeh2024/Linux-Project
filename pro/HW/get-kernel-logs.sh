#!/bin/bash

# Get the current date in the required format
FILENAME="kernel-logs-$(date +"%Y-%m-%dT%H-%M").txt"

# Get kernel logs for the last hour
journalctl -k --since "1 hour ago" > /Desktop/HW/$FILENAME

# Compress the file using bzip2
tar -cvjf /path/to/your/directory/$FILENAME.tar.bz2 /path/to/your/directory/$FILENAME

# Remove the original text file
rm /path/to/your/directory/$FILENAME

# Upload to Dropbox using dbxcli
dbxcli put /path/to/your/directory/$FILENAME.tar.bz2 /path/in/dropbox/$FILENAME.tar.bz2

