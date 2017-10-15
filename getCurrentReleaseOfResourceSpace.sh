#!/bin/sh
RESOURCESPACE_SVN_BASE_URL="http://svn.resourcespace.com/svn/rs/releases/"
CURRENT_RELEASE=current_release
TARGET_RELEASE_URL="https://raw.githubusercontent.com/jamesgallagher-ie/docker-resourcespace/get-current-release/$CURRENT_RELEASE"

if [ -f $CURRENT_RELEASE ]
then
    rm $CURRENT_RELEASE
fi
TARGET_RELEASE_URL=1

wget -q $TARGET_RELEASE_URL > /dev/null
if [ $? = 0 ]
then
    VERSION=`cat current_release`
    TARGET_SVN_URL="$RESOURCESPACE_SVN_BASE_URL$VERSION"
    echo "The current version is $VERSIONxi; retrieving from svn"
else
    exit 1
fi

