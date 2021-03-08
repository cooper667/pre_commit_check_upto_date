git checkout main
git pull
git checkout -

# the output of rev-list in the following test will be empty if there
# are no commits in main that aren't in the current branch

if [ ! -z $(git rev-list ..main) ]
then
    echo "abandoning commit"
    echo "please merge from main and try again"
    exit 1
fi