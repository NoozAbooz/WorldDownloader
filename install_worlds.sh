echo "World Downloader By LEHATUPOINTOW! You need unzip for that. sudo apt install unzip"

while getopts f:u:U: option
do
case "${option}"
in
f) FIX=${OPTARG};;
u) USER_INPUT=${OPTARG};;
U) FILE_URL=${OPTARG};;
esac
done

if [ $USER_INPUT ]; then
echo "Enter the world URL"
read world_url
fi
echo "Proceeding then."
cd /home/$USER/.minecraft-pi/games/com.mojang/minecraftWorlds/
wget $FILE_URL -O world.mcpiw
unzip world.mcpiw
rm world.mcpiw
echo "Done!"
