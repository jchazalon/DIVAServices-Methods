# Graph Extraction
This method extracts a minimum spanning tree (MST) from an input image using different keypoint detectors as sources for node placement.


## Parameters

| Number | Name | Type | Options |
| ------ | -----| ------ | ----- |
| 1 | inputImage | file | 
| 2 | InterestPointDetector | select | [SCP, CP, Harris, DOG]  
## Example Calls
This is using the official API of DIVAServices.

### Curl
``` bash
curl --request POST \
  --url http://divaservices.unifr.ch/api/v2/graph/graphextraction/1 \
  --header 'content-type: application/json' \
  --data '{"parameters":{"InterestPointDetector":"SCP"},"data":[{"inputImage": "test/input0.jpg"}]}'
```
### Java
``` java
HttpResponse<String> response = Unirest.post("http://divaservices.unifr.ch/api/v2/graph/graphextraction/1")
  .header("content-type", "application/json")
  .body("{\"parameters\":{\"InterestPointDetector\":\"SCP\"},\"data\":[{\"inputImage\": \"test/input0.jpg\"}]}")
  .asString();
```

### Python
``` python
import http.client

conn = http.client.HTTPConnection("divaservices.unifr.ch")

payload = "{\"parameters\":{\"InterestPointDetector\":\"SCP\"},\"data\":[{\"inputImage\": \"test/input0.jpg\"}]}"

headers = { 'content-type': "application/json" }

conn.request("POST", "/api/v2/graph/graphextraction/1", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```