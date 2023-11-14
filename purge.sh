#!/bin/bash

printf "Purge cache...\n"
curl -sIXGET http://localhost/1.png -H "X-Update: 1" | grep -i -e x-cached
