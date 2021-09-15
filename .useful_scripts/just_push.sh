BRANCH=$(git branch --show-current)
if [ -e .git/refs/remotes/origin/${BRANCH} ]; then
  $(git push)
else
  $(git push --set-upstream origin ${BRANCH})
fi

