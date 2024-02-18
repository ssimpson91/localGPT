#!/bin/bash

# Directory where the source files are located
source_dir="/media/omega/shared_ssd/proj/Github/localGPT/load"

# Directory where the source files should be moved to for processing
processing_dir="./SOURCE_DOCUMENTS"

# Directory where the source files should be moved to after processing
processed_dir="./processed"

# Move each file from the source directory to the processing directory and run ingest.py
for file in "$source_dir"/*; do
    mv "$file" "$processing_dir"
    python3 ingest.py
    mv "$processing_dir"/* "$processed_dir"
done
