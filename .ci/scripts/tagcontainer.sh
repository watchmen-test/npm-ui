MAJOR=1
MINOR=0
BUILD=$BUILD_ID
VERSION=${MAJOR}.${MINOR}.${BUILD}
TAG=${VERSION}

if [ "$BRANCH_NAME" = "master" ]
then
    $TAG=${VERSION}
    git config user.name "automation"
    git config user.email "auto@mxrss.com"
    git tag -a ${TAG} -m "Jenkins Created version ${TAG}"
    GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no" git push git@github.com:watchmen-test/npm-ui.git --tags
fi
