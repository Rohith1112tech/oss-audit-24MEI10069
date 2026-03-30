%%bash
PACKAGE="git"
echo "================================"
echo " FOSS Package Inspector"
echo " Student: ROHITH RAJ R S"
echo " Roll No: 24MEI10069"
echo "================================"
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    echo "----- Package Details -----"
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi
echo ""
echo "----- Package Info -----"
case $PACKAGE in
    git) echo "Git: distributed version control system used for collaboration" ;;
    apache2) echo "Apache: web server powering many websites" ;;
    mysql-server) echo "MySQL: database used in applications" ;;
    python3) echo "Python: popular programming language" ;;
    *) echo "Unknown package" ;;
esac
