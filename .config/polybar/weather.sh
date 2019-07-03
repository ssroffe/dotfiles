#!/bin/bash

api="def0446eef3c70e4f538d056fda0fdb1"
city="5103374"
unit="imperial" #(default,metric,imperial)

curl -s "api.openweathermap.org/data/2.5/weather?APPID=${api}&id=${city}&cnt=5&units=${unit}&lang=en" > ~/.cache/weather.json;

sleep 1;

temp=$(jq -r .main.temp ~/.cache/weather.json | awk '{print int($1+0.5)}')
desc=$(jq -r .weather[0].description ~/.cache/weather.json)

echo ${temp}"°F "${desc}
