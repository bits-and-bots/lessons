#!/bin/bash

# Thanks to willprice: https://gist.github.com/willprice/e07efd73fb7f13f917ea

setup_git() {
  git config --global user.email "bot@bits-and-bots.github.io"
  git config --global user.name "Bits&Bots Bot"
}

commit_lessons() {
  # remove everything except for lessons
  rm ./*
  cp out/* .
  rm -rf out

  # Add and commit all lessons
  git add -A
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
  git checkout -b lesson-pdfs
}

upload_lessons() {
  # We can set this to a different location later if preferred, or just
  # upload to an S3 bucket etc. Notice this relies currently on an env var
  # on the travis server with a bot accounts PAT.
  git remote add lesson-pdfs https://${GH_TOKEN}@github.com/bits-and-bots/lessons.git > /dev/null 2>&1
  # Make sure nothing is exposed in logs
  git push --quiet --set-upstream lesson-pdfs > /dev/null 2>&1
}

if [[ $TRAVIS_BRANCH == 'master' ]]
    setup_git
    commit_lessons
    upload_lessons
fi
