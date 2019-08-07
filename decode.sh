#!/bin/bash

openssl rsautl -decrypt -in salvation.txt -out solution.txt -inkey privateKeyInput.txt
cat solution.txt | bash

