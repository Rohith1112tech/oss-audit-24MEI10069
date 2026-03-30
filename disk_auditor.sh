%%bash
echo "================================"
echo " Disk and Permission Audit Report"
echo " Student: ROHITH RAJ R S"
echo " Roll No: 24MEI10069"
echo "================================"
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
echo ""
echo "Directory Analysis:"
echo "-------------------"
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done
echo ""
echo "Checking Git configuration directory:"
echo "-------------------------------------"
if [ -d "$HOME/.git" ]; then
    echo ".git directory exists in home folder"
    ls -ld "$HOME/.git"
else
    echo ".git directory not found (initialize a repo using 'git init' to create it)"
fi
