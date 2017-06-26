# Canny Edge Detection

## Parameters


| Number | Name | Type | Options |
| ------ | -----| ------ | ----- |
| 1 | inputImage | file | 
  
## Example Calls
This is using the official API of DIVAServices.

### Curl

``` bash
curl --request POST \
  --url http://divaservices.unifr.ch/api/v2/segmentation/cannyedgedetection/1 \
  --header 'content-type: application/json' \
  --data '{"parameters":{},"data":[{"inputImage": "COLLECTION/FILENAME.EXTENSION"}]}'
```

### Java
``` java
HttpResponse<String> response = Unirest.post("http://divaservices.unifr.ch/api/v2/segmentation/cannyedgedetection/1")
  .header("content-type", "application/json")
  .body("{\"parameters\":{},\"data\":[{\"inputImage\": \"test/input0.jpg\"}]\n}")
  .asString();
```

### Python
``` python
import http.client

conn = http.client.HTTPConnection("divaservices.unifr.ch")

payload = "{\"parameters\":{},\"data\":[{\"inputImage\": \"test/input0.jpg\"}]\n}"

headers = { 'content-type': "application/json" }

conn.request("POST", "/api/v2/segmentation/cannyedgedetection/1", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```


## Original Sources

Built using [BoofCV](https://github.com/lessthanoptimal/BoofCV) (under [Apache 2.0 License](https://github.com/lessthanoptimal/BoofCV/blob/SNAPSHOT/LICENSE-2.0.txt)).