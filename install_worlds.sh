echo "World Downloader By LEHATUPOINTOW! You need unzip for that. sudo apt install unzip"

while getopts f:u:U: option
do
case "${option}"
in
f | -fix) FIX=1;;
u | -user-input) USER_INPUT=1;;
U | -file-url) FILE_URL=${OPTARG};;
esac
done

if [ $USER_INPUT ]; then
echo "Enter the world URL"
read FILE_URL
fi
echo "Proceeding then."
cd /home/$USER/.minecraft-pi/games/com.mojang/minecraftWorlds/
wget $FILE_URL -O world.mcpiw  || exit u
unzip world.mcpiw || echo "unzip is not instaled."; exit 1
rm world.mcpiw
echo "Done!"
