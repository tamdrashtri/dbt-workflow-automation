#!/bin/bash
echo "Let's first synchronize your local files to the latest version"
echo "Start by navigating to your local dbt directory."

cd ~/github/bench-analytics/dbt

git checkout master && git pull