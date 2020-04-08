# Check ip location
## Build environment
1. golang
2. docker
3. docker-compose
4. mmdb

## How to run
The root of project directory to execute the command.
```docker
docker-compose up -d
```

## Usage 
### Request
1. GET(query): 
```http request
http://localhost:9999/search?ip=127.0.0.1,131.2.1.1,47.128.1.3
```
2. POST(body): 
```json
{"ip": ["123.4.5.1", "181.4.5.2"]}
```
### Response 
```json
{"statusCode": 1, "data": [{"ip":"123.4.5.1", "isoCode": "US", "country": "United States"}], "msg": ""}
```

## Benchmark
| cpu | RAM | 请求ip数 | 耗时(ms)
|-----|-----|-----|-----|
| i3-7100 3.90GHz x 2 | 8GB | 100 | 32ms
| i3-7100 3.90GHz x 2 | 8GB | 200 | 57ms
| i3-7100 3.90GHz x 2 | 8GB | 300 | 88ms
| i3-7100 3.90GHz x 2 | 8GB | 400 | 42ms
| i3-7100 3.90GHz x 2 | 8GB | 500 | 132ms
| i3-7100 3.90GHz x 2 | 8GB | 1000 | 148ms


## TODO
- [ ] auto update mmdb per month.


## Reference 
[ip database model](https://db-ip.com/db/format/ip-to-country-lite/mmdb.html)

[ip mmdb](https://db-ip.com/db/download/ip-to-country-lite)