#!/bin/bash
# date: 21.08.2017
# author: Andanan
PROJECT_NAME="tci-test-0.0.1-SNAPSHOT"
ARCHIVE_NAME="$PROJECT_NAME.tar.gz"
RECIPIENT="andanan@mail.de"
echo "--- packaging '$ARCHIVE_NAME' ---"
cd target/dist
tar -czf ../$ARCHIVE_NAME *
cd ..
echo "--- sending $ARCHIVE_NAME to $RECIPIENT"
tar -tvf $ARCHIVE_NAME
cd ..
pwd