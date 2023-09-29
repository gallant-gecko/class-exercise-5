#! /bin/sh

# Check if argument is given
if [ -z "$1" ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

# Loop through all files in directory
for f in "$1"/*; do
  if [ -f "$f" ]; then
    # Get file size using du
    SIZE="$(du -sh "${f}" | cut -f1)"

    # Get word count using wc
    WORD_COUNT="$(wc -w "${f}" | cut -d ' ' -f1)"

    # Print file name, file size, and word count
    echo "Processing $f file..."
    echo "File Size: $SIZE"
    echo "Word Count: $WORD_COUNT"
    echo ""
  fi
done