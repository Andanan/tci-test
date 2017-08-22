#!/bin/bash
# date: 21.08.2017
# author: Andanan
PROJECT_ROOT=$(pwd)
PROJECT_NAME="tci-test-0.0.1-SNAPSHOT"
ARCHIVE_REL="target/$PROJECT_NAME-test.tar.gz"
ARCHIVE="$PROJECT_ROOT/$ARCHIVE_REL"
TARGET_DIR="$PROJECT_ROOT/target"
DIST_DIR="$TARGET_DIR/dist"
RECIPIENT="andanan@mail.de"
SUBJECT="Built $PROJECT_NAME"

echo "--- packaging '$ARCHIVE_REL' ---"
cd $DIST_DIR
tar -czf $ARCHIVE *
cd $TARGET_DIR
echo "--- verifying archive content ---"
tar -tvf $ARCHIVE
cd $PROJECT_ROOT

echo "--- sending $ARCHIVE_REL to $RECIPIENT ---"
function isInstalled() {
	if command $1 2>/dev/null; then
		echo "$1 is installed"
		$2
	else
		echo "$1 is not installed. Aborting!"
	fi
}

isInstalled mailx "echo \"MSG\" | mailx -s \"$SUBJECT\" -a \"$ARCHIVE\" $RECIPIENT"
isInstalled mutt "echo \"MSG\" | mutt -s \"$SUBJECT\" -a \"$ARCHIVE\" $RECIPIENT"
isInstalled mpack "mpack -s \"$SUBJECT\" \"$ARCHIVE\" \"$RECIPIENT\""

echo "--- end ---"
