inputImage=$1
resultFile=$2
fname=$(basename "$inputImage" | cut -d. -f1)

/ocropy/ocropus-nlbin $inputImage
content="$(base64 $fname.bin.png)"
echo -e "{\"output\":[ { \"file\": { \"mime-type\": \"image/png\", \"name\":\"otsuBinaryImage.png\", \"options\":{ \"type\":\"bw\", \"visualization\":true }, \"content\": \""$content"\" } } ]}" > $resultFile