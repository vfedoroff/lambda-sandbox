#!/bin/bash
docker run -v  `pwd`:/lambda lambda-sandbox bash -c "lambda-local -l /lambda/app.js -h handler -e /lambda/test-event.json"
