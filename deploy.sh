#!/bin/sh

#建立本地仓库
git init
git config core.autocrlf true
#把目录下所有文件更改状况提交到暂存区
git add .
#关联到Github仓库
git remote add origin git@github.com:biozhangjn/academic-cv.git
#git remote add origin git@biozhangjn.github.com:biozhangjn/Blog.git

#提交更改的说明
git commit -m "Blog update"
#开始推送到Github
git pull --rebase origin master
git push -u origin master
exit 0

#https://github.com/marketplace/actions/build-deploy-with-latest-hugo
# ssh -vT biozhangjn@github.com
