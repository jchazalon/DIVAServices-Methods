# Otsu Binarization
## Parameters


Name | Type | Options |
|-----| ------ | ----- |
| inputImage | file  | 
  
## Example Calls
This is using the official API of DIVAServices.

### Curl

``` bash
curl --request POST \
  --url http://divaservices.unifr.ch/api/v2/binarization/otsubinarization/1 \
  --header 'content-type: application/json' \
  --data '{"parameters":{},"data":[{"inputImage": "test/input0.jpg"}]}'
```

### Java
``` java
HttpResponse<String> response = Unirest.post("http://divaservices.unifr.ch/api/v2/binarization/otsubinarization/1")
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

conn.request("POST", "/api/v2/binarization/otsubinarization/1", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```


## Original Sources
Built using [OpenIMAJ](http://openimaj.org/) released under the [BSD 3-clause License](https://github.com/openimaj/openimaj/blob/master/LICENSE).