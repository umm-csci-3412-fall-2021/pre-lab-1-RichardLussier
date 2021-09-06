#!/bin/sh

fileName="$1"
specifier="$2"
resultFile="$3"
HEADER="$specifier"_header.html
FOOTER="$specifier"_footer.html
cat "$HEADER" "$fileName" "$FOOTER" > "$resultFile"
