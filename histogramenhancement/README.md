# Histogram Enhancement
## Parameters


Name | Type | Options |
|-----| ------ | ----- |
| inputImage | file | 
  
## Example Calls
This is using the official API of DIVAServices.

### Curl

``` bash
curl --request POST \
  --url http://divaservices.unifr.ch/api/v2/enhancement/histogramenhancement/1 \
  --header 'content-type: application/json' \
  --data '{"parameters":{},"data":[{"inputImage": "test/input0.jpg"}]}'
```

### Java
``` java
HttpResponse<String> response = Unirest.post("http://divaservices.unifr.ch/api/v2/enhancement/histogramenhancement/1")
  .header("content-type", "application/json")
  .body("{\"parameters\":{},\"data\":[{\"inputImage\": \"test/input0.jpg\"}]}")
  .asString();
```

### Python
``` python
import http.client

conn = http.client.HTTPConnection("divaservices.unifr.ch")

payload = "{\"parameters\":{},\"data\":[{\"inputImage\": \"test/input0.jpg\"}]}"

headers = { 'content-type': "application/json" }

conn.request("POST", "/api/v2/enhancement/histogramenhancement/1", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```


## Original Sources
Built using [BoofCV](https://github.com/lessthanoptimal/BoofCV) (under [Apache 2.0 License](https://github.com/lessthanoptimal/BoofCV/blob/SNAPSHOT/LICENSE-2.0.txt)).