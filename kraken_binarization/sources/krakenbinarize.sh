inputImage=$1
resultFile=$2

kraken -i $inputImage binary.png binarize
content="$(base64 binary.png)"
echo -e "{\"output\":[ { \"file\": { \"mime-type\": \"image/png\", \"name\":\"krakenBinaryImage.png\", \"options\":{ \"type\":\"bw\", \"visualization\":true }, \"content\": \""$content"\" } } ]}" > $resultFile