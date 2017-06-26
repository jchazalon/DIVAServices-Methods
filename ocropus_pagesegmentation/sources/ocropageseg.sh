inputFile=$1
resultFile=$2

export PYTHONWARNINGS="ignore"

/ocropy/ocropus-gpageseg -n --minscale 2 $inputFile

fname=$(basename "$inputFile" | cut -d. -f1)
declare -a files
files=(/data/$fname/*)
pos=$((${#files[*]}-1))
last=${files[$pos]}

echo "{\"output\":[" > $resultFile

 #load visualization
content="$(base64 $fname.pseg.png)"
echo "{ \"file\": {\"mime-type\": \"image/png\", \"name\":\""$fname".png\", \"options\":{ \"type\": \"bw\", \"visualization\":true}, \"content\": \""$content"\"}}," >> $resultFile


for f in "${files[@]}"
do
 fileName=$(basename "$f")
 fileContent="$(base64 $f)"
 if [[ $f == $last ]]
 then
   echo "{ \"file\": {\"mime-type\": \"image/png\", \"name\":\""$fileName"\", \"options\":{ \"type\": \"bw\", \"visualization\":false}, \"content\": \""$fileContent"\"}}" >> $resultFile
 else
  echo "{ \"file\": {\"mime-type\": \"image/png\", \"name\":\""$fileName"\", \"options\":{ \"type\": \"bw\", \"visualization\":false}, \"content\": \""$fileContent"\"}}," >> $resultFile
 fi
done
echo "]}" >> $resultFile
