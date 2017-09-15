#!/bin/sh
echo ""
echo "Try visiting endpoints:"
echo ""
echo "http://localhost:12345"
echo "http://localhost:12345/hello"
echo ""
echo "Click [ Hello ] and watch stdout below"
echo ""

docker run -p 12345:12345 stuaxo/fedora-homework

