dataFolder=$1
recognitionModel=$2
resultFile=$3

export PYTHONWARNINGS="ignore"

files="${1}*.bin.png"
textFiles="${1}*.txt"

/ocropy/ocropus-rpred -Q 4 -m $recognitionModel $files

declare -a files
files=($textFiles)
pos=$((${#files[*]}-1))
last=${files[$pos]}

echo "{\"output\":[" > $resultFile

for f in "${files[@]}"
do
 fileName=$(basename "$f")
 fileContent="$(cat $f)"
 if [[ $f == $last ]]
 then
   echo "{ \"file\": {\"mime-type\": \"text/plain\", \"name\":\""$fileName"\", \"options\":{ \"type\": \"text\", \"visualization\":false}, \"content\": \""$fileContent"\"}}" >> $resultFile
 else
  echo "{ \"file\": {\"mime-type\": \"text/plain\", \"name\":\""$fileName"\", \"options\":{ \"type\": \"text\", \"visualization\":false}, \"content\": \""$fileContent"\"}}," >> $resultFile
 fi
done
echo "]}" >> $resultFile
