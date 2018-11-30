MAJOR=1
MINOR=0
BUILD=$BUILD_ID
VERSION=${MAJOR}.${MINOR}.${BUILD}
TAG=${VERSION}

REPO="github.com/watchmen-test/npm-ui.gits"

if [ "$BRANCH_NAME" = "master" ]
then
    $TAG=${VERSION}
    git config user.name "automation"
    git config user.email "auto@mxrss.com"
    git tag -a ${TAG} -m "Jenkins Created version ${TAG}"
    git push https://${GIT_USERNAME}:${GIT_PASSWORD}@${REPO} --tags
fi
