#!/bin/bash
read -p "Enter the SHA256 checksum to search for: " TARGET
for f in *; do
  if [ -f "$f" ]; then
    SUM=$(sha256sum "$f" | awk '{print $1}')
    if [ "$SUM" = "$TARGET" ]; then
      echo "MATCH: $f"
    fi
  fi
done
