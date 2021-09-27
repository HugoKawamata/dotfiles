for branch_name in "$@"
do
  git checkout $branch_name
  git merge - --no-edit
  git push
done

