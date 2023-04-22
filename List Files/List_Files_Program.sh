#!/bin/sh

# Use 'ls -l' to list files in long format, which includes file size and name
# Use 'awk' to extract columns 9 (file name) and 5 (file size) and separate them with a comma
ls -l | awk '{print $9","$5}'
