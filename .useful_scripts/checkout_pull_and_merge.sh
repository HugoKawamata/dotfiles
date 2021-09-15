if [ -z "$1" ]; then
  MAIN="master";
else
  MAIN="$1";
fi
BRANCH=$(git branch --show-current)
git checkout ${MAIN}
git pull
git checkout ${BRANCH}
git merge ${MAIN}

