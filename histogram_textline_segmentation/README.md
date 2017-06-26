# Histogram Text Line Segmentatio
## Parameters


|Name | Type | Options |
| -----| ------ | ----- |
| inputImage | file | 
| highlighter| rectangle highlighter | 
  
## Example Calls
This is using the official API of DIVAServices.

### Curl

``` bash
curl --request POST \
  --url http://divaservices.unifr.ch/api/v2/segmentation/histogramtextlinesegmentation/1 \
  --header 'content-type: application/json' \
  --data '{"parameters":{"highlighter":{"type":"rectangle","closed":true,"segments":[[1,1],[4395,1],[4395,6196],[1,6196]]}},"data":[{"inputImage": "colossaljubilantpigeon/bnf-lat11641_001r.jpg"}]}'
```

### Java
``` java
HttpResponse<String> response = Unirest.post("http://divaservices.unifr.ch/api/v2/segmentation/histogramtextlinesegmentation/1")
  .header("content-type", "application/json")
  .body("{\"parameters\":{\"highlighter\":{\"type\":\"rectangle\",\"closed\":true,\"segments\":[[1,1],[4395,1],[4395,6196],[1,6196]]}},\"data\":[{\"inputImage\": \"colossaljubilantpigeon/bnf-lat11641_001r.jpg\"}]}")
  .asString();
```

### Python
``` python
import http.client

conn = http.client.HTTPConnection("divaservices.unifr.ch")

payload = "{\"parameters\":{\"highlighter\":{\"type\":\"rectangle\",\"closed\":true,\"segments\":[[1,1],[4395,1],[4395,6196],[1,6196]]}},\"data\":[{\"inputImage\": \"colossaljubilantpigeon/bnf-lat11641_001r.jpg\"}]}"

headers = { 'content-type': "application/json" }

conn.request("POST", "/api/v2/segmentation/histogramtextlinesegmentation/1", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```


## Original Sources
