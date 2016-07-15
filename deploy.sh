#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
hugo # if using a theme, replace by `hugo -t <yourtheme>`

# Go To afontana.github.io folder
#cd public
echo "Ir a pasta de publibação do site afontana.github.io"
cd ../afontana.github.io

#Copiar arquivos da pasta public de afonatana-hugo
echo "Copiar arquivos alterados da pasta /public"
cp -r ../afontana-hugo/public

# Add changes to git.
git add -A

# Commit changes.
msg="deploy por afontana em `date`"
if [ $# -eq 1  ]
    then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back
cd ../afontana-hugo

