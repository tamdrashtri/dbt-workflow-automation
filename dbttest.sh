#!/bin/bash

# what steps are you in
# dbt deploy helper
echo "Let's first synchronize your local files to the latest version"
echo "Start by navigating to your local dbt directory."

# could you confirm if this is your dbt directory? if not, please paste your directory for dbt here.
cd ~/github/bench-analytics/dbt

git checkout master && git pull

make clean-sandbox && make artifacts

# Step 2: Now let's create a new branch

echo `Please tell us the branch name you want to create. A good example is "BI-1234-add-widget-state-to-whizbang-model"`
read BRANCH_NAME

git checkout -b $BRANCH_NAME

echo "Are you ready to commit your changes?"
git add .