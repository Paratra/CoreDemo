# this scrit is an example to write data to influxdb in our server
curl -i -XPOST 'https://sensorweb.us:8086/write?db=testdb' -u test:sensorweb --data-binary 'weather,location=UGA temperature=88 1586651070000000000'
# curl -i -XPOST 'http://localhost:8086/write?db=mydb' --data-binary @cpu_data.txt

# 1586651070000000000
# 1422568543702900257
# Epoch timestamp: 1586651070 + 9 0s
# Timestamp in milliseconds: 1586651070000
# Date and time (GMT): Sunday, April 12, 2020 0:24:30
# Date and time (your time zone): Saturday, April 11, 2020 20:24:30 GMT-04:00

# this scrit is an example to read data from influxdb in our server
curl -G "https://sensorweb.us:8086/query?pretty=true&db=testdb" -u test:sensorweb --data-urlencode "q=SELECT temperature FROM weather WHERE location = 'UGA' AND time >= '2020-04-12 00:24:30.000' and time <= '2020-04-12 00:24:31.000'"

curl -G "https://sensorweb.us:8086/query?pretty=true&db=testdb" -u test:sensorweb --data-urlencode "q=SELECT temperature FROM weather WHERE location = 'UGA' AND time=1586651070000000000"


