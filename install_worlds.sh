echo "World Downloader By LEHATUPOINTOW! You need unzip for that. sudo apt install unzip"

echo "Enter the world URL"
read world_url
echo "Is it  $world_url, is that the world URL? CLTR+C to quit if it is not. Enter if yes."
read
echo "Okay then, proceed"
cd /home/$USER/.minecraft-pi/games/com.mojang/minecraftWorlds/
wget $world_url -O world.mcpiw
unzip world.mcpiw
rm world.mcpiw
echo "Done!"
