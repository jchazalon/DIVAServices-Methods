# OCROpus Binarization
## Parameters


Name | Type | Options |
|-----| ------ | ----- |
| inputImage | file | 
  
## Example Calls
This is using the official API of DIVAServices.

### Curl

``` bash
curl --request POST \
  --url http://divaservices.unifr.ch/api/v2/binarization/ocropusbinarization/1 \
  --header 'content-type: application/json' \
  --data '{"parameters":{},"data":[{"inputImage": "mortifiedwheatswan/e-codices_fmb-cb-0055_0011v_max.jpeg"}]}'
```

### Java
``` java
HttpResponse<String> response = Unirest.post("http://divaservices.unifr.ch/api/v2/binarization/ocropusbinarization/1")
  .header("content-type", "application/json")
  .body("{\"parameters\":{},\"data\":[{\"inputImage\": \"mortifiedwheatswan/e-codices_fmb-cb-0055_0011v_max.jpeg\"}]}")
  .asString();
```

### Python
``` python
import http.client

conn = http.client.HTTPConnection("divaservices.unifr.ch")

payload = "{\"parameters\":{},\"data\":[{\"inputImage\": \"mortifiedwheatswan/e-codices_fmb-cb-0055_0011v_max.jpeg\"}]}"

headers = { 'content-type': "application/json" }

conn.request("POST", "/api/v2/binarization/ocropusbinarization/1", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```


## Original Sources

Built using [OCROpus](https://github.com/tmbdev/ocropy) released under [Apache License 2.0](https://github.com/tmbdev/ocropy/blob/master/LICENSE)