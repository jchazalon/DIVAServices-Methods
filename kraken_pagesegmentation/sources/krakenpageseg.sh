inputImage=$1
resultFile=$2

kraken -i $inputImage lines.txt binarize segment
content="$(cat lines.txt)"
echo -e "{\"output\":[ { \"file\": { \"mime-type\": \"text/plain\", \"name\":\"textlines.txt\", \"options\":{ \"type\":\"textfile\", \"visualization\":false }, \"content\": \""$content"\" } } ]}" > $resultFile