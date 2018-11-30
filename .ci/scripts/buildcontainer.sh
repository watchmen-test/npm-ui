#!/busybox/sh
MAJOR=1
MINOR=0
BUILD=$BUILD_ID
VERSION=${MAJOR}.${MINOR}.${BUILD}

/kaniko/executor -f `pwd`/Dockerfile -c `pwd` --destination=sspdevnettest.azurecr.io/ui/ui-npm/${BRANCH_NAME}:${VERSION}
