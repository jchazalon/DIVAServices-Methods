# METHOD NAME
## Parameters


Name | Type | Options | Comments |
|-----| ------ | ----- | ------- |
| inputZip | file | | Needs to contain *.bin.png files as well as corresponding *.gt.txt files for training as required by [ocropus-rtrain](https://github.com/tmbdev/ocropy/blob/master/ocropus-rtrain)
| lineHeight | number |  | The default  height for line estimation 
| trainIteration | number | | number of iterations to train
| saveFreq | number | | frequency after which a model is saved
  
## Example Calls
This is using the official API of DIVAServices.

### Curl

``` bash
curl --request POST \
  --url http://divaservices.unifr.ch/api/v2/ocr/ocropustraining/1 \
  --header 'content-type: application/json' \
  --data '{"data":[{"inputZip":"forcefulhurtfulcaribou/inputZip.zip"}],"parameters":{"lineHeight":46,"trainIteration":1000,"saveFreq":100}}'
```

### Java
``` java
HttpResponse<String> response = Unirest.post("http://divaservices.unifr.ch/api/v2/ocr/ocropustraining/1")
  .header("content-type", "application/json")
  .body("{\"data\":[{\"inputZip\":\"forcefulhurtfulcaribou/inputZip.zip\"}],\"parameters\":{\"lineHeight\":46,\"trainIteration\":1000,\"saveFreq\":100}}")
  .asString();
```

### Python
``` python
import http.client

conn = http.client.HTTPConnection("divaservices.unifr.ch")

payload = "{\"data\":[{\"inputZip\":\"forcefulhurtfulcaribou/inputZip.zip\"}],\"parameters\":{\"lineHeight\":46,\"trainIteration\":1000,\"saveFreq\":100}}"

headers = { 'content-type': "application/json" }

conn.request("POST", "/api/v2/ocr/ocropustraining/1", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```


## Original Sources

Built using [OCROpus](https://github.com/tmbdev/ocropy) released under [Apache License 2.0](https://github.com/tmbdev/ocropy/blob/master/LICENSE)