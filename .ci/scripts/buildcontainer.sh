#!/busybox/sh
MAJOR=1
MINOR=0
BUILD=$BUILD_ID
VERSION=${MAJOR}.${MINOR}.${BUILD}
REPO=sspdevnettest.azurecr.io/ui/ui-npm


if [ "$BRANCH_NAME" = 'master' ]
then
    /kaniko/executor -f `pwd`/Dockerfile -c `pwd` --destination=${REPO}/${BRANCH_NAME}:${VERSION} --destination=${REPO}:latest
else
    /kaniko/executor -f `pwd`/Dockerfile -c `pwd` --destination=${REPO}/${BRANCH_NAME}:${VERSION}
fi