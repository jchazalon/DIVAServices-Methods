# Retrieve command line parameters
inputFolder=$1
lineheight=$2
trainIterations=$3
saveFreq=$4
resultFile=$5

# Perform Pre-Processing
export PYTHONWARNINGS="ignore"
chmod +x /data/plot_train_err.py

# Execute the method
/ocropy/ocropus-rtrain -q -l $lineheight -N $trainIterations -F $saveFreq -c train/*.gt.txt -o trainedModel $inputFolder/*.bin.png

# Perform Post-Processing
/data/plot_train_err.py *.pyrnn.gz

# Reading results
minError=$(cat trainedModel-error.txt | jq -r '.minimum.error')
minModel=$(cat trainedModel-error.txt | jq -r '.minimum.name')
lastError=$(cat trainedModel-error.txt | jq -r '.last.error')
lastModel=$(cat trainedModel-error.txt | jq -r '.last.name')

visContent="$(base64 trainedModel-error.png)"
minModelContent="$(base64 $minModel)"
lastModelContent="$(base64 $lastModel)"

# Write output JSON
echo "{\"output\":[{ \"file\": { \"mime-type\": \"image/png\", \"name\":\"trainingError.png\", \"options\":{ \"type\":\"color\", \"visualization\":true }, \"content\": \""$visContent"\" } },{ \"file\": { \"mime-type\": \"application/x-compressed\", \"name\":\"minModel.pyrnn.gz\", \"options\":{ \"type\":\"ocromodel\", \"visualization\":false, \"error\": \""$minError"\" }, \"content\": \""$minModelContent"\" } },{ \"file\": { \"mime-type\": \"application/x-compressed\", \"name\":\"lastModel.pyrnn.gz\", \"options\":{ \"type\":\"ocromodel\", \"visualization\":false, \"error\": \""$lastError"\" }, \"content\": \""$lastModelContent"\" } } ]}" > $resultFile
