#!/bin/sh

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

TMP_DIR=${BASE_DIR}/tmp
SOURCES=${BASE_DIR}/ui-v2/dist

echo "Creating nw archive ..."

cd ${TMP_DIR};

rm -rf app;

cp -R ${SOURCES} ${TMP_DIR};

# Remove old nw app if any
if [ -f "app.nw" ] ; then
	echo "Removing old archive"
	rm -f "app.nw";
fi

# Zip the source in a zip archive
cd app;
/usr/bin/zip -r ../app.nw *;
echo "... done";