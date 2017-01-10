
#!/bin/bash
sleep 4

echo ""
echo "Check for authorization code tool"
cd /opt/elemental_se/lib
ls -tlr SafeNetAuthorizationTool*

sleep 5

echo ""

# Get authorization code generator tool if necessary
# wget ftp://ftp.nexguard.com/96000485f30396756db47f6ff176fff5/Sa*
# tar -xvf filename.gz
# tar -xvf SafeNetAuthorizationToolCL-x86_64.tar.gz

echo ""
echo ""
sleep 3
echo "Generate authorization file"
sudo /opt/elemental_se/lib/SafeNetAuthorizationToolCL o

echo ""
ls -tlr AuthorizationCode*
# email code file

cd /tmp/

echo ""
echo ""
echo "Get License file code file"
sleep 3
echo ""
echo ""
wget ftp://ftp.nexguard.com/96000485f30396756db47f6ff176fff5/*81*

# unzip file
unzip -o *81*.zip

echo ""
echo ""
# Confirm License
sudo /opt/elemental_se/bin/CivolutionLicenseTest /opt/elemental_se/lib

# Clean Up!
sudo rm /var/tmp/Com*
