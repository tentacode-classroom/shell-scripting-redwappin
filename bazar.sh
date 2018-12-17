echo "Loading my fixtures"
echo "Delete existing Files"
echo " [.......................................................]"

# Delete existing files
rm -Rf ./bazar

# Create new folder
mkdir -p ./bazar/Bureau/dossiersX/videosecrete.mp4 ./bazar/download 


# Display files
echo "All my Files"
ls -lha

# Download image in specific folder
wget -P ./bazar/Bureau https://anahaddict.fr/wp-content/uploads/2016/05/adibou-jeux-video.jpg

# See fixtures Arbo

echo "Voyons l'arborescence du fichier fixtures"
tree fixtures

