#!/bin/bash

# Thanks to willprice: https://gist.github.com/willprice/e07efd73fb7f13f917ea

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

commit_lessons() {
  git checkout -b lesson-pdfs
  git add out/*
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_lessons() {
  # We can set this to a different location later if preferred, or just
  # upload to an S3 bucket etc.
  git remote add lesson-pdfs git@github.com:bits-and-bots/lessons.git
  git push --set-upstream lesson-pdfs
}

if [[ $TRAVIS_BRANCH == 'master' ]]
    setup_git
    commit_lessons
    upload_lessons
fi
