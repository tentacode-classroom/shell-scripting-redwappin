CURRENT_DIRECTORY=`dirname $0`
echo current : $CURRENT_DIRECTORY
#Ranger mes fichiers
rm -Rf $CURRENT_DIRECTORY/../bazar_clean

mkdir -p  $CURRENT_DIRECTORY/../bazar_clean/images  $CURRENT_DIRECTORY/../bazar_clean/divers  $CURRENT_DIRECTORY/../bazar_clean/videos 
mkdir -p  $CURRENT_DIRECTORY/../bazar_clean/images/{2017..2018}/{1..12}

FILES=`find $CURRENT_DIRECTORY/../bazar -type f`
for FILE in $FILES
do
    file $FILE | grep "image data" 
    IS_IMAGE=$?

    file $FILE | grep "video data"
    IS_VIDEO=$?

    if [ $IS_IMAGE = 0 ]
    then
      cp $FILE $CURRENT_DIRECTORY/../bazar_clean/images
    elif [ $IS_VIDEO = 0 ]
    then
      cp $FILE $CURRENT_DIRECTORY/../bazar_clean/videos
    else
      cp $FILE $CURRENT_DIRECTORY/../bazar_clean/divers 
    fi
done

