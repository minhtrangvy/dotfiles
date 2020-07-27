#!/bin/sh
if [ $# -ne 1 ]; then
  echo "Usage is $0 ANYTHING"
  exit 1
fi
python -m webbrowser "https://monkey.twilio.com/search?q=$1"
