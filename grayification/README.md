# Grayification

Turns a color image into a grayscale image using a decolorization method.


## Parameters

| Number | Name | Type | Options |
| ------ | -----| ------ | ----- |
| 1 | inputImage  | file  | 
  
## Example Calls
This is using the official API of DIVAServices.

### Curl

``` bash
curl --request POST \
  --url http://divaservices.unifr.ch/api/v2/enhancement/grayification/1 \
  --header 'content-type: application/json' \
  --data ' {"parameters":{},"data":[{"inputImage": "baggystylishhumpbackwhale/bnf-lat11641_001r.jpeg"}]}'
```

### Java
``` java
HttpResponse<String> response = Unirest.post("http://divaservices.unifr.ch/api/v2/enhancement/grayification/1")
  .header("content-type", "application/json")
  .body(" {\"parameters\":{},\"data\":[{\"inputImage\": \"baggystylishhumpbackwhale/bnf-lat11641_001r.jpeg\"}]}")
  .asString();
```

### Python
``` python
import http.client

conn = http.client.HTTPConnection("divaservices.unifr.ch")

payload = " {\"parameters\":{},\"data\":[{\"inputImage\": \"baggystylishhumpbackwhale/bnf-lat11641_001r.jpeg\"}]}"

headers = { 'content-type': "application/json" }

conn.request("POST", "/api/v2/enhancement/grayification/1", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```