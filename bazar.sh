CURRENT_DIRECTORY=`dirname $0`
echo current : $CURRENT_DIRECTORY

echo "Loading my fixtures"
echo "Delete existing Files"
echo " [.......................................................]"

# Delete existing files
rm -Rf $CURRENT_DIRECTORY/../bazar

# Create new folder
mkdir -p $CURRENT_DIRECTORY/../bazar/Bureau/dossiersX/videosecrete.mp4 $CURRENT_DIRECTORY/../bazar/download 


# Display files
echo "All my Files"
ls -lha

# Download image in specific folder
wget -P $CURRENT_DIRECTORY/../bazar/Bureau https://anahaddict.fr/wp-content/uploads/2016/05/adibou-jeux-video.jpg
wget -P $CURRENT_DIRECTORY/../bazar/Bureau https://static.actu.fr/uploads/2017/05/25166-170530192258556-01-854x734.jpg

# See bazar Arbo

echo "Voyons l'arborescence du fichier bazar"
tree $CURRENT_DIRECTORY/../bazar

