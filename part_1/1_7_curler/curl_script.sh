#!/bin/bash

echo "Input website:"
read website
echo "Searching..."
sleep 1
curl $website
