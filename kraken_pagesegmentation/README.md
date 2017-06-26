# Kraken Page Segmentation
## Parameters


Name | Type | Options |
|-----| ------ | ----- |
| inputImage | file | 
  
## Example Calls
This is using the official API of DIVAServices.

### Curl

``` bash
curl --request POST \
  --url http://divaservices.unifr.ch/api/v2/segmentation/krakenpagesegmentation/1 \
  --header 'content-type: application/json' \
  --data '{"parameters":{},"data":[{"inputImage": "accomplishedsnarlinghyena/e-codices_fmb-cb-0055_0011v_max.png"}]}'

```

### Java
``` java
HttpResponse<String> response = Unirest.post("http://divaservices.unifr.ch/api/v2/segmentation/krakenpagesegmentation/1")
  .header("content-type", "application/json")
  .body("{\"parameters\":{},\"data\":[{\"inputImage\": \"accomplishedsnarlinghyena/e-codices_fmb-cb-0055_0011v_max.png\"}]}")
  .asString();
```

### Python
``` python
import http.client

conn = http.client.HTTPConnection("divaservices.unifr.ch")

payload = "{\"parameters\":{},\"data\":[{\"inputImage\": \"accomplishedsnarlinghyena/e-codices_fmb-cb-0055_0011v_max.png\"}]}"

headers = { 'content-type': "application/json" }

conn.request("POST", "/api/v2/segmentation/krakenpagesegmentation/1", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```


## Original Sources
Built using the [Kraken](http://kraken.re/) released under [Apache 2.0 License](https://github.com/mittagessen/kraken/blob/master/LICENSE)

