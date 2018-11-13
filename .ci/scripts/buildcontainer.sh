#!/busybox/sh
/kaniko/executor -f `pwd`/Dockerfile -c `pwd` --no-push
