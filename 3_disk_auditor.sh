#!/bin/bash
DIRS=("/etc" "/usr/bin" "/usr/lib/python3")
echo "==========================================="
echo "        Directory Audit Report             "
echo "==========================================="
for DIR in "${DIRS[@]}"; do
 if [ -d "$DIR" ]; then
 PERMS=$(ls -ld "$DIR" | awk "{print \$1, \$3, \$4}")
 SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
 echo "Directory: $DIR"
 echo " -> Permissions/Owner: $PERMS"
 echo " -> Disk Size: $SIZE"
 echo "-------------------------------------------"
 fi
done
