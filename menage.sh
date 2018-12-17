
#Ranger mes fichiers
rm -Rf ./bazar_clean

mkdir -p ./bazar_clean/images ./bazar_clean/divers ./bazar_clean/videos 
mkdir -p ./bazar_clean/images/{2017..2018}/{1..12}

FILES= find ./bazar -type f 

for FILE in $FILES
do
    if [ $FILE | grep image = 0 ]
    then
      cp $FILE ./bazar_clean/images
    elif [ $FILE | grep video = 0 ]
    then
      cp $FILE ./bazar_clean/videos
    else
      cp $FILE ./bazar_clean/divers 
    fi
done

